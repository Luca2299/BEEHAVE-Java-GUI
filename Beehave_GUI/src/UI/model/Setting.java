package UI.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.ObservableMap;

public class Setting {

    /**
     * Saves all the default settings from input fields in the Beehave model.
     */
    public Map<String, Double> setting = new HashMap<String, Double>();

    /**
     * Saves all the default settings from the switches in the Beehave model.
     */
    public Map<String, Boolean> toggleSetting = new HashMap<String, Boolean>();

    private ObservableMap<String, String> overviewMap = FXCollections.observableHashMap();

    private DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd.MM.YYYY");

     ObservableList<Map.Entry<String, String>> items;
    
    /** 
     * @return Map<String, String>
     */
    public Map<String, String> getOverviewMap() {
        return this.overviewMap;
    }

    /**
     * @param customSetting
     * @param customToggleSetting
     * @param c
     */
    public Setting(final Map<String, Double> newSetting,
            final Map<String, Boolean> newToggleSetting) {
        this.setting = newSetting;
        this.toggleSetting = newToggleSetting;
        refreshOverviewMap();
    }


    public ObservableList<Map.Entry<String, String>> getItemsForTable (){
        return this.items;
    }
    
    /** 
     * @return Map<String, Double>
     */
    public Map<String, Double> getMap() {
        return setting;
    }

    /**
     * @return Map<String, Boolean> 
     */
    public Map<String, Boolean> getToggleMap() {
        return toggleSetting;
    }

    /**
     * @param setting
     * @param toggleSetting
     */
    public void setSetting(Map <String,Double> setting, Map <String,Boolean> toggleSetting){
        this.setting = setting;
        this.toggleSetting = toggleSetting;
    }

    /**
     * @param key
     * @param value
     */
    public void changeSetting(String key, Double value) {
        if (!setting.containsKey(key)) {
            setting.put(key, (double) value);
        } else {
            setting.replace(key, (double) value);
        }
        refreshOverviewMap();
        System.out.println("this.overviewMap: " + this.overviewMap);
    }

    /**
     * @param key
     * @param value
     */
    public void changeToggleSetting(String key, Boolean value) {
        if (!toggleSetting.containsKey(key)) {
            toggleSetting.put(key, (Boolean) value);
        } else {
            toggleSetting.replace(key, (Boolean) value);
        }
        refreshOverviewMap();
    }

    /**
     * @return Map<String, String>
     * puts all current settings in a map to provide an oberview in a tableview 
     * (see szenarioAnalyticsController)
     */
    public void refreshOverviewMap() {
        if (this.overviewMap != null){
            if (!this.overviewMap.isEmpty()){
                this.overviewMap.clear();
            }
        }
        this.overviewMap.put("Drone Brood Removal", Boolean.toString(this.toggleSetting.get("DroneBroodRemoval")));
        this.overviewMap.put("Removal Day 1", convertToDate(setting.get("RemovalDay1")));
        this.overviewMap.put("Removal Day 2", convertToDate(setting.get("RemovalDay2")));
        this.overviewMap.put("Removal Day 3", convertToDate(setting.get("RemovalDay3")));
        this.overviewMap.put("Removal Day 4", convertToDate(setting.get("RemovalDay4")));
        this.overviewMap.put("Removal Day 5", convertToDate(setting.get("RemovalDay5")));
        this.overviewMap.put("Oxalic Acid Treatment Day", convertToDate(setting.get("oxalicAcidTreatmentDay")));
        this.overviewMap.put("Oxalic Acid Varroa Treatment", Boolean.toString(toggleSetting.get("oxalicAcidVarroaTreatment")));
        this.overviewMap.put("Oxalic Acid Efficiency", Double.toString(setting.get("oxalicAcidEfficiency")));
        this.overviewMap.put("initial Bees", Double.toString(setting.get("N_INITIAL_BEES")));
        this.overviewMap.put("Critical Colony Size in Winter", Double.toString(setting.get("CRITICAL_COLONY_SIZE_WINTER")));
        this.overviewMap.put("Remaining Honey (kg)", Double.toString(setting.get("RemainingHoney_kg")));
        this.overviewMap.put("Minimum honey before starting harvest", Double.toString(setting.get("HarvestingTH")));
        this.overviewMap.put("Harvesting Period", Double.toString(setting.get("HarvestingPeriod")));
        this.overviewMap.put("Harvesting Day", Double.toString(setting.get("HarvestingDay")));
        if (setting.get("oxalicAcidTreatmentDuration") == -10){
            this.overviewMap.put("Oxalic Acid Treatment Duration", "none");
        } else {
            this.overviewMap.put("Oxalic Acid Treatment Duration", Double.toString(setting.get("oxalicAcidTreatmentDuration")));
        }
    } 

    /**
     * @param day
     * @return String
     */
    public String convertToDate(Double day){
        if (day != null) {
            int dayInt = day.intValue();
            if (dayInt>0 && dayInt<366){
                int thisYear = Calendar.getInstance().get(Calendar.YEAR);
                LocalDate date = LocalDate.ofYearDay(thisYear, dayInt);
                String dateString = date.format(formatter);
                return dateString;
            } else {
                return "none";
            }
        } else {
            return "null";
        } 
    }
}