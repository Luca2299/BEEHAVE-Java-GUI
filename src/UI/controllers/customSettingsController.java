package UI.controllers;

import java.io.File;
import java.net.URL;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.ResourceBundle;

import UI.controllers.helperClasses.customDialog;
import UI.model.HeadlessWorkspaceManager;
import UI.model.Setting;
import UI.model.SettingsManager;
import javafx.animation.FadeTransition;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ButtonBar.ButtonData;
import javafx.scene.Cursor;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.Slider;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleButton;
import javafx.scene.input.MouseEvent;
import javafx.util.Duration;

public class customSettingsController implements Initializable {

    /**
     * The HeadlessWorkspaceManager class contains the Headlessworspace as class
     * variable
     * and all the methods that interact directly with Netlogo.
     */
    private HeadlessWorkspaceManager manager =
            HeadlessWorkspaceManager.getInstance();

    private SettingsManager settingsManager;

    @FXML
    private TextField initialBeesInput;

    @FXML
    private Slider colonySlider;

    @FXML
    private Slider harvestingSlider;

    @FXML
    private Slider honeySlider;

    @FXML
    private Slider harvestingPeriodSlider;

    @FXML
    private DatePicker HarvestingDay; //do not rename!

    @FXML
    private Label HarvestingDayWarning;

    @FXML
    private DatePicker oxalicAcidTreatmentDay;

    @FXML
    private Slider OA_TreatmentDurationSlider;

    @FXML
    private ToggleButton OA_TreatmentTglBtn;

    @FXML
    private Label OA_Warning;

    @FXML
    private Slider OA_TreatmentEfficiencySlider;

    /**
     * Do not change the variable name of the RemovalDay 1 - 5, HarvestingDay and HarvestingPeriod
     * -> has to be the same as variable in netlogo beehave model
     */
    @FXML
    private ToggleButton DB_RemovalTglBtn;

    @FXML
    private Label DB_Warning;

    @FXML
    private DatePicker RemovalDay1; //do not rename!

    @FXML
    private DatePicker RemovalDay2; //do not rename!

    @FXML
    private DatePicker RemovalDay3; //do not rename!

    @FXML
    private DatePicker RemovalDay4; //do not rename!

    @FXML
    private DatePicker RemovalDay5; //do not rename!

    @FXML
    private TextField NumberRemovalDaysLabel;

    @FXML
    private Button NumberRemovalDaysOkBtn;
    
    @FXML
    private Label nameEmptyLabel;

    @FXML
    private ComboBox<String> szenarioComboBox;

    @FXML
    private Label savedLabel;

    @FXML
    private Button deleteOKBtn;
    
    @FXML
    private Label deletedLabel;

    private ObservableList<String> szenarios = FXCollections.observableArrayList("default");

    private DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd.MM.YYYY");

    private int thisYear = Calendar.getInstance().get(Calendar.YEAR);

    // Default value is 230 because the earliest Harvesting day is 15.May (day 135 of the year) 
    // 365 - 135 = 230 
    // this is needed because the Harvesting Period should not overlap two years, because the BEEHAVE Model could crash
    private int maxHarvestPeriod = 230;

    private String pathOfLogo; 
    private String pathtoProject;
    
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

        szenarioComboBox.setItems(szenarios);
        szenarioComboBox.getSelectionModel().select("default");
        
        //Drone Brood Removal Warning: The Removal has to be between Day 105 and Day 206
        LocalDate dateBegin = LocalDate.ofYearDay(thisYear, 105);
        String dateString1 = dateBegin.format(formatter);
        LocalDate dateEnd = LocalDate.ofYearDay(thisYear, 206);
        String dateString2 = dateEnd.format(formatter);
        DB_Warning.setText("Date has to be between " + dateString1 + " and " + dateString2 + "." );
        
        //Oxalic Acid Treatment Warning 
        LocalDate dateOA = LocalDate.ofYearDay(thisYear, 305);
        String dateOAString = dateOA.format(formatter);
        OA_Warning.setText("Date has to be between " + dateOAString + " and 31.12." + thisYear + ".");

        //Harvesting Day Warning 
        LocalDate dateH = LocalDate.ofYearDay(thisYear, 135);
        String dateHString = dateH.format(formatter);
        HarvestingDayWarning.setText("Date has to be between " + dateHString + " and 31.12." + thisYear + ".");

        setSettingOnUI("default");
    }

    /** 
     * @param event
     */
    @FXML
    void onRestoreDefaultBtnClicked(ActionEvent event) {
        setSettingOnUI("default");
    }

    /**
     * @param name
     */
    public void setSettingOnUI(String name){
        if (this.settingsManager == null){
            this.settingsManager = manager.getSettingsManager();
        }
        Setting setting = settingsManager.getSetting(name);
        //set chosen Setting as the actual setting in Settingsmanager
        settingsManager.setAsActualSetting(setting);

        Map <String,Double> s = setting.getMap();
        Map <String,Boolean> t = setting.getToggleMap();

        //Toggle Buttons
        setTglBtn(DB_RemovalTglBtn,t.get("DroneBroodRemoval"));
        setTglBtn(OA_TreatmentTglBtn, t.get("oxalicAcidVarroaTreatment"));
        disable_DB_options(!(t.get("DroneBroodRemoval")));
        disable_OA_options(!(t.get("oxalicAcidVarroaTreatment")));

        //Slider
        colonySlider.setValue(s.get("CRITICAL_COLONY_SIZE_WINTER"));
        harvestingSlider.setValue(s.get("HarvestingTH"));
        harvestingPeriodSlider.setValue(s.get("HarvestingPeriod"));
        honeySlider.setValue(s.get("RemainingHoney_kg"));
        OA_TreatmentDurationSlider.setValue(s.get("oxalicAcidTreatmentDuration"));
        OA_TreatmentEfficiencySlider.setValue(s.get("oxalicAcidEfficiency")*100);

        //Inputfield
        initialBeesInput.setText(Double.toString(s.get("N_INITIAL_BEES")));

        //Date Picker
        setDateonUI(RemovalDay1, s);
        setDateonUI(RemovalDay2, s);
        setDateonUI(RemovalDay3, s);
        setDateonUI(RemovalDay4, s);
        setDateonUI(RemovalDay5, s);
        setDateonUI(oxalicAcidTreatmentDay, s);
        setDateonUI(HarvestingDay, s);
    }
    private void setTglBtn(ToggleButton tglBtn, Boolean value){
        tglBtn.setSelected(value);
        if (value){
            tglBtn.setText("On");
        } else {
            tglBtn.setText("Off");
        }
       
    }

    /**
     * @param dateField
     * @param setting
     */
    public void setDateonUI(final DatePicker dateField, final Map <String,Double> setting){
        Double dayOfYear_double = setting.get(dateField.getId());
        if (dayOfYear_double != null) {
            int dayOfYear = dayOfYear_double.intValue();
            if (dayOfYear>0 && dayOfYear<366){
                int thisYear = Calendar.getInstance().get(Calendar.YEAR);
                LocalDate date = LocalDate.ofYearDay(thisYear, dayOfYear);
                dateField.setValue(date);
            }
        }  else {
            System.out.println("setDateonUI: dayOfYear is null");
        }
    }

    /**
     * @param event
     */
    @FXML
    void toggleBtnClicked(ActionEvent event) {
        if (this.settingsManager == null){
            this.settingsManager = manager.getSettingsManager();
        }
        Object source = event.getSource();
        if (source.equals(null)){
            System.out.println("togglBtnClicked: Event source is null.");
        }
        if (source.equals(OA_TreatmentTglBtn)) {
            if (OA_TreatmentTglBtn.isSelected()) {
                OA_TreatmentTglBtn.setText("On");
                settingsManager.setSwitch("oxalicAcidVarroaTreatment", true);
                //newly added
                Setting setting = settingsManager.getSetting("default");
                setDateonUI(oxalicAcidTreatmentDay, setting.getMap());

                disable_OA_options(false);
            } else {
                settingsManager.setSwitch("oxalicAcidVarroaTreatment", false);
                disable_OA_options(true);
                OA_TreatmentTglBtn.setText("Off");
            }
        }
        if (source.equals(DB_RemovalTglBtn)) {
            if (DB_RemovalTglBtn.isSelected()) {
                DB_RemovalTglBtn.setText("On");
                settingsManager.setSwitch("DroneBroodRemoval", true);
                disable_DB_options(false);
            } else {
                DB_RemovalTglBtn.setText("Off");
                settingsManager.setSwitch("DroneBroodRemoval", false);
                disable_DB_options(true);
            }
        }
    }

    /**
     * @param disabled
     */
    public void disable_OA_options(Boolean disabled){
        OA_TreatmentDurationSlider.setDisable(disabled);
        OA_TreatmentEfficiencySlider.setDisable(disabled);
        oxalicAcidTreatmentDay.setDisable(disabled);
    }

    /**
     * @param disabled
     */
    public void disable_DB_options(Boolean disabled){
        RemovalDay1.setDisable(disabled);
        RemovalDay2.setDisable(disabled);
        RemovalDay3.setDisable(disabled);
        RemovalDay4.setDisable(disabled);
        RemovalDay5.setDisable(disabled);
    }

    /**
     * @param event
     */
    @FXML
    void onSliderMvd(MouseEvent event) {
        ((Node) event.getSource()).setCursor(Cursor.OPEN_HAND);
        if (this.settingsManager == null){
            this.settingsManager = manager.getSettingsManager();
        }
        Object source = event.getSource();
        if (source.equals(null)){
            System.out.println("onSliderMvd: Event source is null.");
        }
        if (source.equals(colonySlider)) {
            Double sliderValue = (Double) colonySlider.getValue();
            settingsManager.setVariable("CRITICAL_COLONY_SIZE_WINTER", sliderValue);
        }
        if (source.equals(honeySlider)) {
            Double sliderValue = (Double) honeySlider.getValue();
            settingsManager.setVariable("RemainingHoney_kg", sliderValue);
        }
        if (source.equals(harvestingSlider)) {
            Double sliderValue = (Double) harvestingSlider.getValue();
            settingsManager.setVariable("HarvestingTH", sliderValue);
        }
        if (source.equals(OA_TreatmentDurationSlider)) {
            Double sliderValue = (Double) OA_TreatmentDurationSlider.getValue();
            settingsManager.setVariable("oxalicAcidTreatmentDuration", sliderValue);
        }
        if (source.equals(OA_TreatmentEfficiencySlider)) {
            Double sliderValue = (Double) OA_TreatmentEfficiencySlider.getValue();
            sliderValue = sliderValue / 100;
            // System.out.println(sliderValue); 
            settingsManager.setVariable("oxalicAcidEfficiency", sliderValue);
        }
        if (source.equals(harvestingPeriodSlider)) {
            Double sliderValue = (Double) harvestingPeriodSlider.getValue();
            if (sliderValue <= maxHarvestPeriod){
                settingsManager.setVariable("HarvestingPeriod", sliderValue);
            } else {
                String maxPeriod = Integer.toString(maxHarvestPeriod);
                customDialog.createAlert("Warning", 
                                        "Harvesting period is too long", 
                                        "The Harvesting Period should be shorter than " + maxPeriod + " days.",
                                        pathOfLogo);
                settingsManager.setVariable("HarvestingPeriod", maxHarvestPeriod);                        
            }
            
        }
    }

    /**
     * @param event
     */
    @FXML
    void onNumBeesEntered(ActionEvent event) {
        if (this.settingsManager == null){
            this.settingsManager = manager.getSettingsManager();
        }
        String initalBees = initialBeesInput.getText();
        Double initialBeesValue = Double.parseDouble(initalBees);
        settingsManager.setVariable("N_INITIAL_BEES", initialBeesValue);
    }

    /**
     * @param event
     */
    @FXML
    void onSaveBtnClicked(ActionEvent event) {
        Locale.setDefault(Locale.ENGLISH);
        if (this.settingsManager == null){
            this.settingsManager = manager.getSettingsManager();
        }
        Optional<String> result =  customDialog.createTextInputDialog("my Setting", 
                                                                    "Save your setting", 
                                                                    "Please choose a name to save your setting.", 
                                                                    "Enter name:",
                                                                    pathOfLogo);
        if (result.isPresent()){
            String name = result.get();
            settingsManager.savecustomSettings(name);
            szenarios.add(0, name);
            szenarioComboBox.setValue(name);
            savedLabel.setVisible(true);
            // Create a FadeTransition
            FadeTransition fadeOut = new FadeTransition(Duration.millis(4000), savedLabel);
            fadeOut.setFromValue(1);
            fadeOut.setToValue(0);
            fadeOut.play();
        }
    }
    
    /**
     * @param event
     */
    @FXML
    void onDeleteBtnClicked(ActionEvent event) {
        String deleted = szenarioComboBox.getValue();
        if (deleted != "default"){
            String content = "You have chosen " + deleted + " as the setting you want to delete. " + 
                            "If that is the setting you want to delete, proceed with 'Delete'. \n" +
                            "This action is irreversible";
            String header = "Do you really want to delete " + deleted + "?";

            Optional<ButtonType> result = customDialog.createConfirmationDialog("Delete setting", 
                                                                                header, 
                                                                                content, 
                                                                                "Delete",
                                                                                pathOfLogo);
            if (result.get().getButtonData() == ButtonData.OK_DONE){
                // ... user chose OK
                if (deleted != "default"){
                    szenarioComboBox.getSelectionModel().select("default");
                    szenarios.remove(deleted);
                    settingsManager.removeSetting(deleted);  
                    deletedLabel.setVisible(true);
                    FadeTransition fadeOut = new FadeTransition(Duration.millis(3000), deletedLabel);
                    fadeOut.setFromValue(1);
                    fadeOut.setToValue(0);
                    fadeOut.play();
                } else {
                    szenarioComboBox.getSelectionModel().select("default");  
                }
            }
        } else {
            customDialog.createAlert("Warning", 
                                    "You cannot delete the DEFAULT setting.", 
                                    "Please choose one of your custom settings.",
                                    pathOfLogo);
        } 
    }

    /**
     * Reads the input from Harvesting Day Date Field
     * converts the date format to day of the year integer 
     * @param event
     */
    @FXML
    void chooseDate_HD(ActionEvent event) {
        if (this.settingsManager == null){
            this.settingsManager = manager.getSettingsManager();
        }
        Object source = event.getSource();
        try {
            int  choosenYear = ((DatePicker) source).getValue().getYear();
            String whichDatePicker = ((DatePicker)source).getId();
            int chosenDayOfYear = ((DatePicker) source).getValue().getDayOfYear();
            maxHarvestPeriod = 365 - chosenDayOfYear;
            // Harvesting Day must be after the 15. May (135. day in the year)
            if (choosenYear == thisYear && chosenDayOfYear >= 135) {
                HarvestingDayWarning.setVisible(false);

                Double sliderValue = (Double) harvestingPeriodSlider.getValue();
                if (sliderValue <= maxHarvestPeriod){
                    settingsManager.setDate(whichDatePicker, chosenDayOfYear, false);
                } else {
                    String maxPeriod = Integer.toString(maxHarvestPeriod);
                    customDialog.createAlert("Warning", 
                                            "Harvesting period is too long", 
                                            "The Harvesting Period should be shorter than " + maxPeriod + " days.",
                                            pathOfLogo);
                settingsManager.setVariable("HarvestingPeriod", maxHarvestPeriod);                        
                }
            } else {
                HarvestingDayWarning.setVisible(true);
            }
        } catch (NullPointerException e) {
            System.out.println("Warning: Harvesting Day date field was empty.");
        }
    } 

    /**
     * Reads the input from Drone Brood Removal Day Date Field
     * converts the date format to day of the year integer 
     * @param event
     */
    @FXML
    void chooseDate_DB(ActionEvent event) {
        if (this.settingsManager == null){
            this.settingsManager = manager.getSettingsManager();
        }
        Object source = event.getSource();
        try {
            int  choosenYear = ((DatePicker) source).getValue().getYear();
            String whichDatePicker = ((DatePicker)source).getId();
            int chosenDayOfYear = ((DatePicker) source).getValue().getDayOfYear();
            if (chosenDayOfYear >= 105 && chosenDayOfYear <= 206 && choosenYear == thisYear){
                DB_Warning.setVisible(false);
                settingsManager.setDate(whichDatePicker, chosenDayOfYear, false);
            } else {
                DB_Warning.setVisible(true);
            }
        } catch (NullPointerException e) {
            System.out.println("Warning: Drone Brood date field was empty.");
        }
    } 

    /**
     * Reads the input from oxalic acid Treatment day date field
     * converts the date format to day of the year integer 
     * @param event
     */
    @FXML
    void chooseDate_OA(ActionEvent event) {
        if (this.settingsManager == null){
            this.settingsManager = manager.getSettingsManager();
        }
        Object source = event.getSource();
        try {
            int  choosenYear = ((DatePicker) source).getValue().getYear();
            String whichDatePicker = ((DatePicker)source).getId();
            int chosenDayOfYear = ((DatePicker) source).getValue().getDayOfYear();
            if (chosenDayOfYear >= 305 && chosenDayOfYear <= 365 && choosenYear == thisYear){
                    OA_Warning.setVisible(false);
                    settingsManager.setDate(whichDatePicker, chosenDayOfYear, true);
            } else {
                OA_Warning.setVisible(true);
            }
        } catch (NullPointerException e) {
            System.out.println("Warning: Oxalic Acid date field was empty.");
        }
    } 

    /**
     * @param event
     */
    @FXML
    void onInputCanged(ActionEvent event) {
        String szenarioName = szenarioComboBox.getValue();
        setSettingOnUI(szenarioName);
    }

    @FXML
    void closeHand(MouseEvent event) {
        ((Node) event.getSource()).setCursor(Cursor.CLOSED_HAND);
    }
}