package UI.model;

import java.util.HashMap;
import java.util.Map;

import org.nlogo.headless.HeadlessWorkspace;

import javafx.collections.FXCollections;


public class SettingsManager {

    private HeadlessWorkspace workspace;

    private Map<String, Setting> allSettings; 

    private Setting actualSetting;

    private Setting defaultSetting;

    /**
     * @param workspace
     */
    public SettingsManager(HeadlessWorkspace workspace){
        this.allSettings = FXCollections.observableHashMap();
        this.workspace = workspace; 
    }
    
    /** 
     * @param name
     * @return Setting
     */
    public Setting getSetting(String name){
        Setting setting = allSettings.get(name);
        return setting;
    }

    public Setting getActualSetting() {
        return actualSetting;
    }
    
    /** 
     * @param name
     */
    public void removeSetting(String name){
        allSettings.remove(name);
    }

    public void saveDefaultSetting(){
       this.defaultSetting = createDefaultSetting();
        allSettings.put("default", this.defaultSetting);

        this.actualSetting = new Setting(
                deepCopy(defaultSetting.getMap()),
                deepCopyBool(defaultSetting.getToggleMap()));
    }

    public void setAsActualSetting(Setting choosenSetting){
        this.actualSetting = new Setting(deepCopy(defaultSetting.getMap()), 
                                        deepCopyBool(defaultSetting.getToggleMap()));
    }

    private HashMap<String,Double> deepCopy(Map<String,Double> map){
        HashMap<String,Double> s = new HashMap<String,Double>();
        for (String key : map.keySet()){
            s.put(key, map.get(key));
        }
        return s;
    }

    private HashMap<String,Boolean> deepCopyBool(Map<String,Boolean> map){
        HashMap<String,Boolean> s = new HashMap<String,Boolean>();
        for (String key : map.keySet()){
            s.put(key, map.get(key));
        }
        return s;
    }
   
    // public static <K,V> Map<K,V> deepCopyStream(<K,V> original) {
    //     return original
    //             .entrySet()
    //             .stream()
    //             .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue));
    // }

    /**
     * @param toggle
     * @param selected
     */
    public void setSwitch(final String toggle, final boolean selected) {
        try {
            //set new value in Netlogo Model
            workspace.command("set " + toggle + " " + Boolean.toString(selected));
            actualSetting.changeToggleSetting(toggle, selected);

            //for error handling
            Boolean getValue = (Boolean) workspace.report(toggle);
            if (selected != getValue){
                System.out.println(toggle + " was not set correctly: " + selected + " was set as " + getValue + ".");
            }

        } catch (RuntimeException e) {
            e.printStackTrace();
            System.out.println("Invalid command for workspace. Check command string.");
        }  
    }

    /**
     * @param value
     * @param variable
     */
    public void setVariable(final String variable, final double value) {
        //set new value in Netlogo Model
        workspace.command("set " + variable + " " + Double.toString(value));
        actualSetting.changeSetting(variable, value);

        //for error handling
        Double getValue = (Double) workspace.report(variable);
        if (value != getValue){
            System.out.println(variable + " was not set correctly: " + value + " was set as " + getValue + ".");
        }
    }

    /**
     * sets date from date picker to model
     */
    public void setDate(final String dateField, final int chosenDay, final boolean convertName) {
        if (convertName){
            //This is needed because FXML does not allow "-1" in the fx:id
            String newdateField = "oxalicAcidTreatmentDay-1"; // alternative: dateField.concat("-1"); 

            //set new value in Netlogo Model
            workspace.command("set " + newdateField + " " +  Integer.toString(chosenDay));
            actualSetting.changeSetting(newdateField, (double) chosenDay);

            //for error handling
            Double getValue = (Double) workspace.report(newdateField);
            if (chosenDay != getValue){
                System.out.println(newdateField + " was not set correctly: " + chosenDay + " was set as " + getValue + ".");
            }
            
        } else{
            workspace.command("set " + dateField + " " +  Integer.toString(chosenDay));
            actualSetting.changeSetting(dateField, (double) chosenDay);

            //for error handling
            Double getValue = (Double) workspace.report(dateField);
            if (chosenDay != getValue){
                System.out.println(dateField + " was not set correctly: " + chosenDay + " was set as " + getValue + ".");
            }
        }

    }

    /**
     * @return customSettings
     */
    public void savecustomSettings(final String name) {
        allSettings.put(name, actualSetting);
    }

    /**
     * @return defaultSettings
     */
    public Setting createDefaultSetting() {
        /**
         * saves all the default settings
         * from the input fields in the Beehave model.
         */
        Map<String, Double> setting = new HashMap<String, Double>();
        /**
         * saves all the default settings from the switches in the Beehave model.
         */
        Map<String, Boolean> toggleSetting =  new HashMap<String, Boolean>();
        try {
            setting.put("RAND_SEED", (double) workspace.report("RAND_SEED"));

            //Inputs for beecolony
            setting.put("N_INITIAL_BEES",
                (double) workspace.report("N_INITIAL_BEES"));
            setting.put("CRITICAL_COLONY_SIZE_WINTER",
                (double) workspace.report("CRITICAL_COLONY_SIZE_WINTER"));
            
            // Inputs for foraging map
            setting.put("QUANTITY_R_l", (double) workspace.report("QUANTITY_R_l"));
            setting.put("QUANTITY_G_l", (double) workspace.report("QUANTITY_G_l"));
            setting.put("CONC_R", (double) workspace.report("CONC_R"));
            setting.put("CONC_G", (double) workspace.report("CONC_G"));
            setting.put("Pollen (kg)", (double) workspace.report("POLLEN_R_kg"));
            setting.put("DISTANCE_R", (double) workspace.report("DISTANCE_R"));
            setting.put("DISTANCE_G", (double) workspace.report("DISTANCE_G"));
            setting.put("DETECT_PROB_R",
                (double) workspace.report("DETECT_PROB_R"));
            setting.put("DETECT_PROB_G",
                (double) workspace.report("DETECT_PROB_G"));

            // Parameters for egglaying
            setting.put("droneEgglayingTime2",
                (double) workspace.report("droneEgglayingTime2"));
            setting.put("droneEgglayingTime3",
                (double) workspace.report("droneEgglayingTime3"));
            setting.put("droneEgglayingTime4",
                (double) workspace.report("droneEgglayingTime4"));
            setting.put("droneEgglayingTime5",
                (double) workspace.report("droneEgglayingTime5"));

            // Drone Brood removal days
            setting.put("RemovalDay1", (double) workspace.report("RemovalDay1"));
            setting.put("RemovalDay2", (double) workspace.report("RemovalDay2"));
            setting.put("RemovalDay3", (double) workspace.report("RemovalDay3"));
            setting.put("RemovalDay4", (double) workspace.report("RemovalDay4"));
            setting.put("RemovalDay5", (double) workspace.report("RemovalDay5"));

            //Oxalic Acid Treatment 
            setting.put("oxalicAcidTreatmentDay",
                (double) workspace.report("oxalicAcidTreatmentDay-1"));
            setting.put("oxalicAcidTreatmentDuration",
                (double) workspace.report("oxalicAcidTreatmentDuration"));
            setting.put("oxalicAcidEfficiency",
                (double) workspace.report("oxalicAcidEfficiency"));

            // Varroa 
            setting.put("N_INITIAL_MITES_HEALTHY",
                (double) workspace.report("N_INITIAL_MITES_HEALTHY"));
            setting.put("N_INITIAL_MITES_INFECTED",
                (double) workspace.report("N_INITIAL_MITES_INFECTED"));
            setting.put("MiteReinfestation",
                (double) workspace.report("MiteReinfestation"));

            // Beekeeping
            setting.put("RemainingHoney_kg",
                (double) workspace.report("RemainingHoney_kg"));
            setting.put("HarvestingTH",
                (double) workspace.report("HarvestingTH"));
            setting.put("HarvestingPeriod",
                (double) workspace.report("HarvestingPeriod"));
            setting.put("HarvestingDay",
                (double) workspace.report("HarvestingDay"));

            // all Toggles
            toggleSetting.put("useDBRdaysAsDroneEgglayingTime", 
                (boolean) workspace.report("useDBRdaysAsDroneEgglayingTime"));
            toggleSetting.put("DroneBroodRemoval",
                (boolean) workspace.report("DroneBroodRemoval"));
            toggleSetting.put("formicAcidVarroaTreatment", 
                (boolean) workspace.report("formicAcidVarroaTreatment"));
            toggleSetting.put("oxalicAcidVarroaTreatment",
                (boolean) workspace.report("oxalicAcidVarroaTreatment"));
        } catch (Exception e) {
            System.out.print("Default values could not be saved. Look for syntax error in workspace.report commands. \n");
        }
        Setting result = new Setting(setting, toggleSetting);
        return result;
    }  
}
