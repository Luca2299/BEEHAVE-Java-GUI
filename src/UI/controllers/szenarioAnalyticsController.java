package UI.controllers;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.ResourceBundle;

import javax.imageio.ImageIO;

import UI.controllers.helperClasses.customDialog;
import UI.model.HeadlessWorkspaceManager;
import UI.model.SavedData;
import javafx.animation.FadeTransition;
import javafx.beans.property.SimpleListProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.embed.swing.SwingFXUtils;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.SnapshotParameters;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.XYChart;
import javafx.scene.chart.XYChart.Series;
import javafx.scene.control.ButtonBar.ButtonData;
import javafx.scene.control.ButtonType;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.ChoiceDialog;
import javafx.scene.control.Label;
import javafx.scene.control.MenuButton;
import javafx.scene.control.MenuItem;
import javafx.scene.control.SplitMenuButton;
import javafx.scene.image.Image;
import javafx.scene.image.WritableImage;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import javafx.util.Duration;

public class szenarioAnalyticsController implements Initializable {

    /**
     * The HeadlessWorkspaceManager class contains the Headlessworspace as class
     * variable
     * and all the methods that interact directly with Netlogo.
     */
    private HeadlessWorkspaceManager manager =
           HeadlessWorkspaceManager.getInstance();

    @FXML
    private LineChart<Integer, Double> comparisonChart;

    @FXML
    private BarChart<String, Double> barChart;

    @FXML
    private BarChart<String, Double> barChart2;

    @FXML
    private Pane tablePane;

    // @FXML
    // private TableView<Map.Entry<String,String>> table;

    @FXML
    private SplitMenuButton chooseDataMenu;

    @FXML
    private MenuButton graphSelector;

    @FXML
    private Label deletedLabel;

    @FXML
    private Label currComparingLabel;

    private ObservableList<String> allGraphs = FXCollections.observableArrayList();

    private SimpleListProperty<String> fromManager = manager.getSimulationDataNames();

    private ArrayList<String> selectedGraphs = new ArrayList<String>();

    private String pathtoProject; 

    private String pathOfLogo;
   
    /** 
     * @param location
     * @param resources
     */
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            pathtoProject = new File(".").toURI().toString();
            pathOfLogo =  pathtoProject + "\\src\\UI\\design\\Icons\\BEEHAVE-Logo.png";
        } catch (Exception e) {
            System.out.println(pathOfLogo + " This is not the right path to the Logo.");
            e.printStackTrace();
        }

        fromManager.addListener((observable, oldValue, newValue) -> {
            CheckMenuItem menuItem = new CheckMenuItem(newValue.get(newValue.size()-1));
            chooseDataMenu.getItems().add(menuItem);
        });

        allGraphs.addAll(manager.getGraphmitesConstant());
        allGraphs.addAll(manager.getGraphcolonystructureConstant());
        allGraphs.addAll(manager.getGraphHoneyPollenCONSTANT());
    }
   
    ArrayList<String> comparingDataSets = new ArrayList<String>();

   /** 
    * @param event
    */
   @FXML
    void onComparison(ActionEvent event) {
        ObservableList<MenuItem> simData = chooseDataMenu.getItems();
        for (int i = 0; i < simData.size(); i++){
            CheckMenuItem simulationRun = (CheckMenuItem) simData.get(i);
            if (simulationRun.isSelected()){
                String selected = simulationRun.getText();
                comparingDataSets.add(selected);

                //get savedData object with the name of the selected CheckMenuItem
                SavedData sD =  manager.getSavedData(selected);
                /** set the charts in the saved data objects 
                 * -> series will get added to the graphs in SavedData objects 
                */
                sD.setBarChart1(barChart);
                sD.setBarChart2(barChart2);
                sD.setComparisonChart(comparisonChart);
                sD.comparison(selectedGraphs);
            }
        }
        String currentComp = "";
        for (int j = 0; j < comparingDataSets.size(); j++){
            if (j == comparingDataSets.size() - 1){
                currentComp = currentComp + comparingDataSets.get(j);
            } else {
                currentComp = currentComp + comparingDataSets.get(j) + ", ";
            } 
        }
        currComparingLabel.setText(currentComp);    
    }

    @FXML
    void onBtnRefresh1Clicked(ActionEvent event){
        comparisonChart.getData().clear();
        for (MenuItem menuItem : graphSelector.getItems()) {
            ((CheckMenuItem) menuItem).setSelected(false);
        }
    }

    @FXML
    void onBtnRefresh2Clicked(ActionEvent event){
        barChart.getData().clear();
    }

    @FXML
    void onBtnRefresh3Clicked(ActionEvent event){
        barChart2.getData().clear();
    }

    @FXML
    void onBtnClearAllClicked(ActionEvent event) {
        String content = "This action will remove all graphs from the charts. "
                            + "You can recreate the graphs by comparing the same data sets as before."
                            + "This action is irreversible.";
        Optional<ButtonType> result = customDialog.createConfirmationDialog("Clear all charts", 
                                                                "Do you really want to clear all charts?", 
                                                                content, "Clear", pathOfLogo);
        if (result.get().getButtonData() == ButtonData.OK_DONE){
            // ... user chose OK
            comparisonChart.getData().clear();
            barChart.getData().clear();
            barChart2.getData().clear();
            for (MenuItem menuItem : graphSelector.getItems()) {
                ((CheckMenuItem) menuItem).setSelected(false);
            }
            for (MenuItem menuItem : chooseDataMenu.getItems()) {
                ((CheckMenuItem) menuItem).setSelected(false);
            }
            selectedGraphs.clear();
            currComparingLabel.setText("");
            comparingDataSets.clear();
        }
    }

    @FXML
    void getChosenGraphs(ActionEvent event) throws IOException {
        CheckMenuItem source = (CheckMenuItem) event.getSource();
        if (source.equals(null)){
            System.out.println("getChosenGraphs: Event source is null.");
        }
        String selectedGraph = source.getText();
        if (source.isSelected()) {
            selectedGraphs.add(selectedGraph);
        } else {
            for (int i = 0; i < selectedGraphs.size(); i++){
                if (selectedGraphs.get(i).equals(selectedGraph)){
                    selectedGraphs.remove(i);
                }
            }
        }
    }

    @FXML
    void onDeleteBtnClicked(ActionEvent event) {
        Locale.setDefault(Locale.ENGLISH);

        List<String> choices = new ArrayList<>();
        for (MenuItem item : chooseDataMenu.getItems()){
            choices.add(item.getText());
        }

        ChoiceDialog<String> dialog = new ChoiceDialog<>(choices.get(0), choices);
        Stage stage = (Stage) dialog.getDialogPane().getScene().getWindow();
                stage.getIcons().add(new Image(pathOfLogo));
        dialog.setTitle("Delete data");
        dialog.setHeaderText("Select the simulation data you want to delete.");
        dialog.setContentText("Select data:"); 
        Optional<String> result = dialog.showAndWait();
        if (result.isPresent()){
            String dataToDelete = result.get();
            Boolean deleted = manager.deleteSavedData(dataToDelete);
            if (deleted){
                String content = "You have chosen " + dataToDelete + " as the data you want to delete." + 
                                        "If that is the setting you want to delete, proceed with 'Delete'. \n" +
                                        "This action is irreversible.";  
                String header =  "Do you really want to delete " + dataToDelete + "?";        
                Optional<ButtonType> result2 = customDialog.createConfirmationDialog("Delete data",
                                                                                    header, 
                                                                                    content, 
                                                                                    "Delete",
                                                                                    pathOfLogo);
                if (result2.get().getButtonData() == ButtonData.OK_DONE){
                    // ... user chose OK
                    for (MenuItem item : chooseDataMenu.getItems()){
                        if (item.getText() == dataToDelete){
                            chooseDataMenu.getItems().remove(item);
                        }
                    }
                    deletedLabel.setText("Deleted " + dataToDelete + " !");
                    deletedLabel.setVisible(true);
                    // Create a FadeTransition
                    FadeTransition fadeOut = new FadeTransition(Duration.millis(5000), deletedLabel);
                    fadeOut.setFromValue(1);
                    fadeOut.setToValue(0);
                    fadeOut.play();

                    for (String dataName : comparingDataSets){
                        if (dataName.equals(dataToDelete)){
                            comparingDataSets.remove(dataName);
                        }
                    }
                    String currentComp = "";
                    for (String dataName : comparingDataSets){
                        currentComp = currentComp + ", " + dataName;
                    }
                    currComparingLabel.setText(currentComp);
                }
            } 
        } 
    }

    @FXML
    public void exportLineChartPNG() {
        Optional<String> result = createFileNameInputDialog("TimeSeriesComparisonChart");
        if (result.isPresent()){
            File file = createFile(result, ".png");
            WritableImage image = comparisonChart.snapshot(new SnapshotParameters(), null);
            saveAsPng(file, image);
        }
    }

    @FXML
    public void exportBarChart1PNG() {
        Optional<String> result = createFileNameInputDialog("barChartLeftChart");
        if (result.isPresent()){
            File file = createFile(result,".png");
            WritableImage image = barChart.snapshot(new SnapshotParameters(), null);
            saveAsPng(file, image);
        }
    }
    @FXML
    public void exportBarChart2PNG() {
        Optional<String> result = createFileNameInputDialog("barChartRightChart");
        if (result.isPresent()){
            File file = createFile(result,".png");
            WritableImage image = barChart2.snapshot(new SnapshotParameters(), null);
            saveAsPng(file, image);
        }
    }

    @FXML
    public void exportLineChartCSV() {
        Optional<String> result = createFileNameInputDialog("TimeSeriesComparisonChart");
        if (result.isPresent()){
            File file = createFile(result,".csv");
            try {
                chartToCSV(file, comparisonChart.getData());
            } catch (IOException e) {
                System.out.println("Comparison chart could not get saved as CSV file.");
                e.printStackTrace();
            }
        }
    }

    @FXML
    public void exportBarChart1CSV() {
        Optional<String> result = createFileNameInputDialog("barChartLeftChart");
        if (result.isPresent()){
           File file = createFile(result,".csv");
           try {
                barChartToCSV(file, barChart.getData());
            } catch (IOException e) {
                System.out.println("Bar chart 1 could not get saved as CSV file.");
                e.printStackTrace();
            }
        }
    }
    @FXML
    public void exportBarChart2CSV() {
        Optional<String> result = createFileNameInputDialog("barChartRightChart");
        if (result.isPresent()){
            File file = createFile(result,".csv");
            try {
                barChartToCSV(file, barChart2.getData());
            } catch (IOException e) {
                System.out.println("Bar chart 2 could not get saved as CSV file.");
                e.printStackTrace();
            }
        }
    }

    private Optional<String> createFileNameInputDialog(String chart){
        return customDialog.createTextInputDialog(chart, 
                                    "Save as CSV", 
                                    "Please choose a name to save this chart as CSV.", 
                                    "Enter name:",
                                    pathOfLogo);
    }

    private File createFile(Optional<String> result, String fileType){
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
                return file;
            }
        } else {
            File csvFile = new File(pathtoProject + "//Charts//" + result.get() + fileType);
            if(csvFile.exists() && !csvFile.isDirectory()) { 
                fileExistAlert(fileType);
            } else {
                return csvFile;
            }
        }
        return null;
    }

    private void fileExistAlert(String fileType){
        customDialog.createAlert("Warning", 
                    "This file already exists.", 
                    "Please try again and choose a different name for your " + fileType + " file.",
                    pathOfLogo);
    }

    public void saveAsPng(File file,WritableImage image){
        try {
            ImageIO.write(SwingFXUtils.fromFXImage(image, null), "png", file);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void chartToCSV(File csvFile, ObservableList<XYChart.Series<Integer, Double>> seriesList) throws IOException{
        FileWriter fileWriter = new FileWriter(csvFile);
        int numberOfDays = seriesList.get(0).getData().size();
        
        //Header line with the graph names
        StringBuilder firstline = new StringBuilder();
        for (Series<Integer,Double> series : seriesList) {
            firstline.append(series.getName());
            firstline.append(','); 
        }
        firstline.append("\n");
        fileWriter.write(firstline.toString());

        // Data 
        for (int j = 0; j < numberOfDays; j++){
            StringBuilder line = new StringBuilder();
            for (Series<Integer,Double> series : seriesList) {
                line.append(series.getData().get(j).getYValue());
                line.append(','); 
            }
            line.append("\n");
            fileWriter.write(line.toString());
        }
        fileWriter.close();
    }

    public void barChartToCSV(File csvFile, ObservableList<XYChart.Series<String, Double>> seriesList) throws IOException{
        FileWriter fileWriter = new FileWriter(csvFile);
        int numberOfDays = seriesList.get(0).getData().size();
        
        //Header line with the graph names
        StringBuilder firstline = new StringBuilder();
        firstline.append("graph");
        firstline.append(','); 
        for (Series<String,Double> series : seriesList) {
            firstline.append(series.getName());
            firstline.append(','); 
        }
        firstline.append("\n");
        fileWriter.write(firstline.toString());

        // Data 
        for (int j = 0; j < numberOfDays; j++){
            StringBuilder line = new StringBuilder();
            line.append(seriesList.get(0).getData().get(j).getXValue());
            line.append(','); 
            for (Series<String,Double> series : seriesList) {
                line.append(series.getData().get(j).getYValue());
                line.append(',');
            }
            line.append("\n");
            fileWriter.write(line.toString());
        }
        fileWriter.close();
    }
}
