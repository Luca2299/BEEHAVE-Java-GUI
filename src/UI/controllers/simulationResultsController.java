package UI.controllers;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.URL;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.ResourceBundle;

import UI.controllers.helperClasses.customDialog;
import UI.controllers.helperClasses.myIntegerStringConverter;
import UI.model.HeadlessWorkspaceManager;
import UI.model.SavedData;
import UI.model.Setting;
import UI.model.SimulationData;
import javafx.animation.FadeTransition;
import javafx.application.Platform;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.concurrent.Service;
import javafx.concurrent.Task;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.NumberAxis;
import javafx.scene.control.Button;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.Label;
import javafx.scene.control.MenuButton;
import javafx.scene.control.MenuItem;
import javafx.scene.control.ProgressIndicator;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.util.Callback;
import javafx.util.Duration;
import javafx.util.StringConverter;

public class simulationResultsController implements Initializable {

    /**
     * The HeadlessWorkspaceManager class contains the Headlessworspace as class
     * variable
     * and all the methods that interact directly with Netlogo.
     */
    private HeadlessWorkspaceManager manager =
            HeadlessWorkspaceManager.getInstance();

    @FXML
    private LineChart<Integer, Double> colonyStructurePlot;

    @FXML
    private LineChart<Integer, Double> honeyPollenPlot;

    @FXML
    private LineChart<Integer, Double> mitePlot;

    @FXML
    private Button runModelBtn;

    @FXML
    private Button pauseBtn;

    @FXML
    private Button refreshBtn;

    @FXML
    private TextField tickTextField;

    @FXML
    private Button allVisible1;

    @FXML
    private Button allVisible2;

    @FXML
    private Button allVisible3;

    @FXML
    private Label foragersLabel;
    
    @FXML
    private Label mitesLabel;

    @FXML
    private Label pollenLabel;

    @FXML
    private Label workLoadLabel;

    @FXML
    private MenuButton graphSelector1;

    @FXML
    private MenuButton graphSelector2;

    @FXML
    private MenuButton graphSelector3;

    @FXML
    private TextField simulationNameField;

    @FXML
    private Label addedLabel;

    @FXML
    private TableView<Map.Entry<String,String>> tableSim; 
    
    @FXML
    private Button saveDataBtn;

    @FXML
    private NumberAxis xAxisColony;

    @FXML
    private NumberAxis xAxisHoney;

    @FXML
    private NumberAxis xAxisMites;

    @FXML
    private ProgressIndicator savingProgressBar;

    private TableColumn<Map.Entry<String, String>, String> column1 = new TableColumn<>("Variable");

    private TableColumn<Map.Entry<String, String>, String> column2 = new TableColumn<>("Current Value");

    //current tick
    private int tick = 1;

    /**
     * is true when the service.cancel() was used.
     */
    private boolean isPaused = false;

    /** is true when the resfresh button was hit.
     * is true at the beginning to make the first click on the runbutton work
     */
    private boolean isRefreshed = true;

    /** This Service (Thread) gets created for plotting the graphs
     * after each tick.
     */
    private Service<String> service;

    private int ticksInput;

    private boolean setupDone = false;

    /**
     * Constant value for the maximum permitted ticks for a run.
     */
    private static final int MAX_TICKS = 8000;

    private StringProperty foragersProperty = new SimpleStringProperty();

    private StringProperty mitesProperty = new SimpleStringProperty();

    private StringProperty pollenProperty = new SimpleStringProperty();

    private StringProperty workLoadProperty = new SimpleStringProperty();

    private SimulationData miteData; 

    private SimulationData colonyData; 

    private SimulationData honeyData;

    private String pathtoProject; 

    private String pathOfLogo; 


/*******************************************
            GETTERS AND SETTERS
********************************************/
    /**
     * @return boolean
     */
    public boolean isPaused() {
        return isPaused;
    }

    /**
     * @param paused
     */
    public synchronized void setPaused( boolean paused) {
        this.isPaused = paused;
    }

    /**
     * @return boolean
     */
    public boolean isRefreshed() {
        return isRefreshed;
    }

    /**
     * @param refreshed
     */
    public synchronized void setRefreshed( boolean refreshed) {
        this.isRefreshed = refreshed;
    }

    /**
     * @param t
     */
    public final synchronized void setTick(int t) {
        this.tick = t;
    }

/*************************************************
*                   METHODS
* ***********************************************\

      * @param location
      * @param resources
      */
     @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            pathtoProject = new File(".").getCanonicalPath();
            pathOfLogo =  pathtoProject + "\\src\\UI\\design\\Icons\\BEEHAVE-Logo.png";
        } catch (IOException e) {
            System.out.println(pathOfLogo + " This is not the right path to the Logo.");
            e.printStackTrace();
        }
        
        StringConverter<Number> converter = new myIntegerStringConverter();
        xAxisMites.setTickLabelFormatter(converter);
        xAxisColony.setTickLabelFormatter(converter);
        xAxisHoney.setTickLabelFormatter(converter);

        miteData = new SimulationData(manager.getGraphmitesConstant(), mitePlot);
        colonyData = new SimulationData(manager.getGraphcolonystructureConstant(), colonyStructurePlot);
        honeyData = new SimulationData(manager.getGraphHoneyPollenCONSTANT(), honeyPollenPlot);

        foragersLabel.textProperty().bind(foragersProperty);
        mitesLabel.textProperty().bind(mitesProperty);
        pollenLabel.textProperty().bind(pollenProperty);
        workLoadLabel.textProperty().bind(workLoadProperty);

        foragersProperty.set(" ");
        mitesProperty.set(" ");
        pollenProperty.set(" ");
        workLoadProperty.set(" ");


        Setting setting = manager.getSettingsManager().getActualSetting();
        setting.refreshOverviewMap();
   
        column1.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<Map.Entry<String, String>, String>, ObservableValue<String>>() {
            @Override
            public ObservableValue<String> call(TableColumn.CellDataFeatures<Map.Entry<String, String>, String> p) {
                return new SimpleStringProperty(p.getValue().getKey());
            }
        });
        column2.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<Map.Entry<String, String>, String>, ObservableValue<String>>() {
            @Override
            public ObservableValue<String> call(TableColumn.CellDataFeatures<Map.Entry<String, String>, String> p) {
                return new SimpleStringProperty(p.getValue().getValue());
            }
        });

        ObservableList<Map.Entry<String, String>> items = setting.getItemsForTable();

        column1.setMinWidth(180);
        column2.setMinWidth(150);

        tableSim.setItems(items);
        tableSim.getColumns().setAll(column1, column2);
    }  

    /**
     * Runs when the "Pause" Button is clicked.
     * @param event
     */
    @FXML
    void onBtnPauseClicked(ActionEvent event) {
        if (manager.doesWorkspaceExist()) {
            runModelBtn.setDisable(false);
            pauseBtn.setDisable(true);
            saveDataBtn.setDisable(false);
            isPaused = true;
            service.cancel();
        }
    }

    /**
     * Runs when "Run" Button is clicked.
     * Calls HeadlessWorkspaceManager to "repeat 1 [StartProc]" as often as the
     * variable ticks indicates.
     * @param event
     */
    @FXML
    void onRunBtnClicked(ActionEvent event) {
        ticksInput = Integer.valueOf(tickTextField.getText());
        if (isRefreshed()) {
            setTick(1);
            setRefreshed(false);
        }
        if (ticksInput <= 0 || tickTextField.getText() == null) {
            tickTextField.clear();
        } else {
            if (manager.doesWorkspaceExist()) {
                // Default Setup, will only get executed at the first time pressing run
                if (!setupDone) {
                    miteData.createSeriesList();
                    colonyData.createSeriesList();
                    honeyData.createSeriesList();

                    //Disable buttons on UI
                    runModelBtn.setDisable(false);
                    pauseBtn.setDisable(false);
                    
                    //setup Beehave model
                    manager.setupBeehaveModel();
                    setupDone = true;
                } 

                // Disable and Enable Buttons and booleans
                runModelBtn.setDisable(true);
                pauseBtn.setDisable(false);
                refreshBtn.setDisable(false);
                tickTextField.setDisable(true);
                setPaused(false);
                saveDataBtn.setDisable(true);

                Platform.runLater(() ->{ 
                    // start Task (Thread)
                    try {
                        service = performAsynchronousTask();
                    } catch (InterruptedException e) {
                        System.out.println("Exception occurred in Thread!");
                        e.printStackTrace();
                    }
                });
                miteData.addSeriestoPlots();
                colonyData.addSeriestoPlots();
                honeyData.addSeriestoPlots();
            } else {
                System.out.println("Headless workspace does not exist.");
            }
        }
    }

    /**
     * When refresh button is clicked, this method deletes all the data from the charts 
     * and does a new setup for the Beehave model 
     * @param event
     * @throws IOException
     */
    @FXML
    void onBtnRefreshClicked( ActionEvent event) throws IOException {
        if (manager.doesWorkspaceExist()) {

            // Disabling and Enabling the right buttons
            refreshBtn.setDisable(true);
            runModelBtn.setDisable(false);
            pauseBtn.setDisable(true);
            tickTextField.setDisable(false);

            // cancel the task
            service.cancel();
            setRefreshed(true);
            setPaused(true);

            // Do new Setup of the Beehave Model.
            // will restore default values of Beehave model
            manager.setupBeehaveModel();

            // Remove the series from the plots
            miteData.removeAllSeriesList();
            colonyData.removeAllSeriesList();
            honeyData.removeAllSeriesList();

            // clear the data in all Series
            miteData.clearSeriesData();
            colonyData.clearSeriesData();
            honeyData.clearSeriesData();

            // initialize new, empty SeriesLists
            miteData.createSeriesList();
            colonyData.createSeriesList();
            honeyData.createSeriesList();

            /** refresh legends and item in menubuttons
             * 1. set all check menu items in the menubuttons on selected
             * 2. set all items in Legend back on opacity = 1 
             */
            refresh(miteData, graphSelector1);
            refresh(colonyData, graphSelector2);
            refresh(honeyData, graphSelector3);
        }
    }

    private void refresh(SimulationData data, MenuButton graphSelector){
        for (MenuItem menuItem : graphSelector.getItems()) {
                ((CheckMenuItem) menuItem).setSelected(true);
            }
            data.refreshLegend();
    }

    /**
     * Creates new service.
     * in call method: runs method that fills the Series
     * with data from the Beehave model
     * @return Service<String>
     * @throws InterruptedException
     */
    private synchronized Service<String> performAsynchronousTask()
        throws InterruptedException {        
            service = new Service<>() {
            @Override
            protected Task<String> createTask() {
                return new Task<>() {
                    @Override
                    protected String call() throws Exception {
                        for (int i = tick; i <= ticksInput; i++){
                            if (isRefreshed()) {
                                i = ticksInput;
                                setRefreshed(false);
                            }
                            // Pause function
                            if (isCancelled() || isPaused()) {
                                tick = i;
                                throw new InterruptedException();
                            } else {
                                // ticksInput is the number of days
                                // specified by the user, does not change
                                manager.runBeehaveModel();
                                miteData.fillSeriesWithData(i);
                                colonyData.fillSeriesWithData(i);
                                honeyData.fillSeriesWithData(i); 
                                if (i == 1){
                                    //get graphs that were set invisible before first run
                                    miteData.setInvisibleGraphsFromList();
                                    colonyData.setInvisibleGraphsFromList();
                                    honeyData.setInvisibleGraphsFromList();
                                }
                                //updates the percent values 
                                updateIndicators();
                            }
                        }
                        return "Complete!";
                    }
                };
            }
        };
        service.setOnSucceeded(event -> {
            refreshBtn.setDisable(false);
            pauseBtn.setDisable(true);
            runModelBtn.setDisable(true);
            saveDataBtn.setDisable(false);
        });
        service.start();
        return service;
    }

    /**
     * Updates the percent values in realtime
     */
    public synchronized void updateIndicators(){
        Map<String, Double> modelValues = manager.getModelValues();
        Double foragers_percent = (modelValues.get("rate healthy foragers")) * 100 ;
        Double mites_percent = (modelValues.get("rate healthy mites")) * 100;
        Double pollen_percent = (modelValues.get("% pollen store"));
        Double workLoad_percent = (modelValues.get("work load") * 100);

        if (foragers_percent != null|| mites_percent != null || pollen_percent != null || workLoad_percent != null){
            double foragers_rounded_percent = round(foragers_percent,1);
            double mites_rounded_percent = round(mites_percent,1);
            double pollen_rounded_percent = round(pollen_percent,1);
            double workLoad_rounded_percent = round(workLoad_percent,1);

            String foragers = Double.toString(foragers_rounded_percent );
            String mites = Double.toString(mites_rounded_percent);
            String pollen = Double.toString(pollen_rounded_percent);
            String workLoad = Double.toString(workLoad_rounded_percent);

            Platform.runLater(() -> {
                foragersProperty.set(foragers + "%");
                mitesProperty.set(mites + "%");
                pollenProperty.set(pollen + "%");
                workLoadProperty.set(workLoad + "%");
            });
        } 
    }
    
    /** 
     * @param value
     * @param places
     * @return double
     */
    public static double round(double value, int places) {
        if (places < 0) throw new IllegalArgumentException();

        BigDecimal bd = BigDecimal.valueOf(value);
        bd = bd.setScale(places, RoundingMode.HALF_UP);
        return bd.doubleValue();
    }

    /**
     * gets the number of ticks/days from the Textfield and sets it as ticks
     * runBeehaveModel() gets ticks times repeated when pressing the run button
     * @param event
     */
    @FXML
    void getInputTicks(ActionEvent event) {
        try {
            ticksInput = Integer.valueOf(tickTextField.getText());
        } catch (NumberFormatException e) {
            System.out.println("Input is empty string.");
            ticksInput = 0;
        }
        if (ticksInput > 0 && ticksInput <= MAX_TICKS) {
            setTick(1);
            runModelBtn.setDisable(false);
        } else {
            tickTextField.clear();
            customDialog.createAlert("Warning", 
                        "Number of days is too low or too high.", 
                        "Please choose a number between 1 and " + MAX_TICKS + ".",
                        pathOfLogo);
        }
    }

    /**
     * When the the value of the tickTextField is valid, 
     * onRunBtnClicked gets executed, when pressing ENTER
     * @param event
     */
    @FXML
    void enterPressed(KeyEvent event) {
         if (event.getCode().equals(KeyCode.ENTER)){
            onRunBtnClicked(new ActionEvent());
         }
    }

    /**
     * handles that only the graphs, 
     * which where chosen by the CheckMenu, get plotted
     * @param event
     * @throws IOException
     */
    @FXML
    void getChosenGraphs(ActionEvent event) throws IOException {
        Object source = event.getSource();
        if (source.equals(null)){
            System.out.println("getChosenGraphs: Event source is null.");
        }

        String selectedGraph = ((CheckMenuItem) source).getText();
        ArrayList<String> currentSelectedGraphsMites = miteData.getGraph();
        ArrayList<String> currentSelectedGraphsColony = colonyData.getGraph();
        ArrayList<String> currentSelectedGraphsHoney = honeyData.getGraph();
        
        ArrayList<String> mitesCONSTANT = manager.getGraphmitesConstant();
        ArrayList<String> colonyCONSTANT = manager.getGraphcolonystructureConstant();
        ArrayList<String> honeyCONSTANT = manager.getGraphHoneyPollenCONSTANT();

        if (mitesCONSTANT.contains(selectedGraph)) {
            miteData.setChosenGraphs((CheckMenuItem) source, selectedGraph);
        }
        if (colonyCONSTANT.contains(selectedGraph)) {
            colonyData.setChosenGraphs((CheckMenuItem) source, selectedGraph);
        }
        if (honeyCONSTANT.contains(selectedGraph)) {
            honeyData.setChosenGraphs((CheckMenuItem) source, selectedGraph);
        }
        miteData.setGraph(currentSelectedGraphsMites);
        colonyData.setGraph(currentSelectedGraphsColony);
        honeyData.setGraph(currentSelectedGraphsHoney);
    }

    /** 
     * set all graphs that are invisible back to visible mode 
     * @param event
     */
    @FXML
    void allVisible(ActionEvent event) {
        Object source = event.getSource();
        if (source.equals(null)){
            System.out.println("allVisible: Event source is null.");
        }
        if (source.equals(allVisible1)){
            miteData.setPlotVisible();
            miteData.refreshLegend();
        }
        if (source.equals(allVisible2)){
            colonyData.setPlotVisible();
            colonyData.refreshLegend();
        }
        if (source.equals(allVisible3)){
            honeyData.setPlotVisible();
            honeyData.refreshLegend();
        }

        for (MenuItem menuItem : graphSelector1.getItems()) {
            ((CheckMenuItem) menuItem).setSelected(true);
        }
        for (MenuItem menuItem : graphSelector2.getItems()) {
            ((CheckMenuItem) menuItem).setSelected(true);
        }
        for (MenuItem menuItem : graphSelector3.getItems()) {
            ((CheckMenuItem) menuItem).setSelected(true);
        }
    }

    /** Save for comaprison with ProgressBar
     * This method creates a SavedData Object, 
     * which contains the data from the series of the last simulation run
     * and is responsible for the display of the chart in the Analytics tab
    * @param event
    */
   @FXML
    void saveForComparison(ActionEvent event) {
        savingProgressBar.setVisible(true);
        Locale.setDefault(Locale.ENGLISH);
        String header = "Please choose a name to save the last simulation run.\n" 
                                    + "You can see and compare your saved simulations in the Analytics tab.";
                    Optional<String> result = 
                        customDialog.createTextInputDialog("my Simulation",
                                                            "Save simulation run",
                                                            header,
                                                            "Enter name:",
                                                            pathOfLogo);
        Task<Void> applyTask = new Task<Void>() {
            @Override
            protected Void call() throws Exception {
                Platform.runLater(() -> {
                if(!isRefreshed() && !manager.getModelValues().isEmpty()){
                    if (result.isPresent()){
                    String simulationName = result.get();
                        if (!simulationName.isBlank()){
                            SavedData savedData = new SavedData(miteData, colonyData, honeyData, manager.getModelValues(), simulationName);
                            savedData.save();
                            manager.addtoAllSavedData(simulationName, savedData);  
                        } 
                    } 
                } else { //Instead of this, disable the Button when charts where resfreshed or never have been run
                    this.failed();
                } 
                });
                return null;
            }
        };
        applyTask.setOnSucceeded(e -> {
            savingProgressBar.setVisible(false);
            simulationNameField.clear();
            addedLabel.setVisible(true);
            // Create a FadeTransition
            FadeTransition fadeOut = new FadeTransition(Duration.millis(4000), addedLabel);
            fadeOut.setFromValue(1);
            fadeOut.setToValue(0);
            fadeOut.play();
        });
        applyTask.setOnFailed(e -> customDialog.createAlert("Warning", 
                                "There is no run to be saved." , 
                                "Please run your simulation first. Press play!",
                                pathOfLogo)); 
        new Thread(applyTask, "Apply thread").start();
    }

    @FXML
    void refreshTable(MouseEvent event) {
        Setting setting = manager.getSettingsManager().getActualSetting();
        Map<String, String> map = setting.getOverviewMap();
        ObservableList<Map.Entry<String, String>> items = FXCollections.observableArrayList(map.entrySet());
        tableSim.setItems(items);
        tableSim.getColumns().setAll(column1, column2);
    }

/* 
* Methods for Chart export as CSV or PNG
*/

    @FXML
    public void exportMiteChartPNG() {
        Optional<String> result = createFileNameInputDialog("MiteChart", "PNG");
        if (result.isPresent()){
            createFile(result, miteData, ".png");
        }
    }

    @FXML
    public void exportColonyChartPNG() {
        Optional<String> result = createFileNameInputDialog("ColonyChart", "PNG");
        if (result.isPresent()){
           createFile(result, colonyData, ".png");
        }
    }
    @FXML
    public void exportHoneyChartPNG() {
        Optional<String> result = createFileNameInputDialog("HoneyPollenChart", "PNG");
        if (result.isPresent()){
            createFile(result, honeyData, ".png");
        }
    }

    @FXML
    public void exportMiteChartCSV() {
        Optional<String> result = createFileNameInputDialog("MiteChart", "CSV");
        if (result.isPresent()){
            createFile(result, miteData, ".csv");
        }
    }

    @FXML
    public void exportColonyChartCSV() {
        Optional<String> result = createFileNameInputDialog("ColonyChart", "CSV");
        if (result.isPresent()){
           createFile(result, colonyData, ".csv");
        }
    }
    @FXML
    public void exportHoneyChartCSV() {
        Optional<String> result = createFileNameInputDialog("HoneyPollenChart", "CSV");
        if (result.isPresent()){
            createFile(result, honeyData, ".csv");
        }
    }

    private void createFile(Optional<String> result, SimulationData data, String fileType){
        File f = new File(pathtoProject + "//Charts");
        if (f.exists() && f.isDirectory()) {
        } else {
            new File(pathtoProject + "//Charts").mkdirs(); 
        }
        if (fileType.equals(".png")){
            File file = new File(pathtoProject + "//Charts//" + result.get() + fileType);
            if(file.exists() && !file.isDirectory()) { 
                fileExistAlert(fileType);
            } else {
                data.saveAsPng(file);
            }
        } else {
            File csvFile = new File(pathtoProject + "//Charts//" + result.get() + fileType);
            if(csvFile.exists() && !csvFile.isDirectory()) { 
                fileExistAlert(fileType);
            } else {
                try {
                    data.chartToCSV(csvFile);
                } catch (IOException e) {
                    System.out.println("Chart could not be saved to CSV:" +  pathtoProject + "//Charts//" + result.get() + fileType);
                    e.printStackTrace();
                }
            }
        }
    }

    private Optional<String> createFileNameInputDialog(String chart, String fileType){
        return customDialog.createTextInputDialog(chart, 
                                    "Save as " + fileType, 
                                    "Please choose a name to save this chart as " + fileType + ".", 
                                    "Enter name:",
                                    pathOfLogo);
    }

    private void fileExistAlert(String fileType){
        customDialog.createAlert("Warning", 
                    "This file already exists.", 
                    "Please try again and choose a different name for your " + fileType + " file.",
                    pathOfLogo);
    }
}
