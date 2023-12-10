package UI.model;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.nlogo.headless.HeadlessWorkspace;

import javafx.beans.property.SimpleListProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public final class HeadlessWorkspaceManager {

    /**
     * Singleton instance
     */
    private static HeadlessWorkspaceManager instance;

    /**
     * private constructor, following the Singleton scheme.
     */
    private HeadlessWorkspaceManager() {
    };

    /**
     * Headlessworkspace class controls the Beehave Model.
     */
    private static HeadlessWorkspace workspace;

    /**
     * Saves all the settings that the user created and saved 
     * handles the changes in the Netlogo workspace 
     */
    private SettingsManager settingsManager;

    /**
     * Contains all the values of the Beehave model.
     * Values get replaced each tick
     */
    private Map<String, Double> modelValues = new HashMap<String, Double>();

    /**
     * Number of Charts that are displayed on the UI.
     */
    private static final int NUMBEROFCHARTS = 3;

    /**
     * Used for the Beehave values
     * that get multiplied for better visibility in the graph.
     */
    private static final int  MULTIPLIER_TEN = 10;

    /**
     * Used for the Beehave values
     * that get multiplied for better visibility in the graph.
     */
    private static final int MULTIPLIER_20 = 20;

    /**
     * This arraylist does not get modified while running the progam.
     * Mite Chart.
     * (name in Beehave Chart in Netlogo -> Name in modelValues map)
     * totalMites -> total mites
     * phoreticMites -> phoretic mites healthy
     * phoreticMitesInfected -> phoretic mites INFECTED
     * miteDrop x 10 -> mite fall x 10
     * mitesInfectedInCells -> mites in cells
     */
    private static final ArrayList<String> graphMitesCONSTANT = new ArrayList<String>(
            Arrays.asList(
                "total mites",
                "phoretic mites healthy",
                "phoretic mites infected",
                "mite fall x 10",
                "mites in cells"
            ));

    /**
     * This arraylist does not get modified while running the progam.
     * Colony Structure Workers Chart.
     * (name in Beehave Chart in Netlogo -> Name in Beehave reporter in Netlogo
     * and/or modelValues map)
     * Eggs -> EggsPerPollen_g
     * Larvae Pupae -> larvae
     * IHbees -> in hive bees
     * Foragers -> foragers
     * Adults -> workers
     * Brood -> brood
     * infectedBees -> infected bees
     */
    private static final ArrayList<String> graphColonyStructureCONSTANT = new ArrayList<String>(
        Arrays.asList(
            "eggs",
            "larvae",
            "in hive bees",
            "foragers",
            "workers",
            "brood",
            "infected bees"
    ));

    /** 
     * This arraylist does not get modified while running the progam.
     * Honey and Pollen Stores [kg] Chart.
     * (name in Beehave Chart in Netlogo -> Name in Beehave reporter in Netlogo
     * and/or modelValues map)
     * honey -> honey store [kg]
     * pollen x 20 -> pollen store [kg] x 20
     */
    private static final ArrayList<String> graphHoneyPollenCONSTANT = new ArrayList<String>(
            Arrays.asList(
                "honey store [kg]",
                "pollen store [kg] x 20"
            ));

    private ArrayList<ArrayList<Double>> valuesForAllCharts = new ArrayList<ArrayList<Double>>(getNumberOfCharts());

    private Map<String, SavedData> allSavedData = new HashMap<String, SavedData>();

    private ObservableList<String> names = FXCollections.observableArrayList();

    private SimpleListProperty<String> simulationDataNames = new SimpleListProperty<String>(names);

    private String pathtoJavaProject;

    private ObservableList<String> szenarios = FXCollections.observableArrayList("default");

    /**************************************
            GETTERS AND SETTERS
    **************************************/
    public String getPathtoJavaProject() {
        return pathtoJavaProject;
    }

    /** 
     * @return Map<String, Double>
     */
    public Map<String, Double> getModelValues() {
        return modelValues;
    }

    /** 
     * @return SettingsManager
     */
    public SettingsManager getSettingsManager() {
        if (settingsManager == null) {
            System.out.println("Warning: SettingsManager was not initialized in HeadlessWorkspaceManager.");
        }
        return settingsManager;
    }

    /**
     * @return graphMitesCONSTANT
     */
    public ArrayList<String> getGraphmitesConstant() {
        return graphMitesCONSTANT;
    }

   /**
     * @return graphColonyStructureCONSTANT
     */
    public ArrayList<String> getGraphcolonystructureConstant() {
        return graphColonyStructureCONSTANT;
    }

    /**
     * @return graphHoneyPollenCONSTANT
     */
    public ArrayList<String> getGraphHoneyPollenCONSTANT() {
        return graphHoneyPollenCONSTANT;
    }

    /**
     * @return int
     */
    public int getNumberOfCharts() {
        return NUMBEROFCHARTS;
    }

    /**
     * Singleton getter for HeadlessWorkspace manager.
     * @return HeadlessWorkspaceManager
     */
    public static HeadlessWorkspaceManager getInstance() {
        if (instance == null) {
            instance = new HeadlessWorkspaceManager();
        }
        return instance;
    }

    /**
     * @return HeadlessWorkspace
     */
    public HeadlessWorkspace getWorkspace() {
        if (workspace == null) {
            workspace = HeadlessWorkspace.newInstance();
        }
        return workspace;
    }

    public SimpleListProperty<String> getSimulationDataNames() {
        return simulationDataNames;
    }

    public SavedData getSavedData(String selected) {
        return  allSavedData.get(selected);
    }

    public boolean deleteSavedData(String selected) {
        if (allSavedData.containsKey(selected)){
            allSavedData.remove(selected);
            return true;
        }
        return false;
    }

/*************************************************
 *  Methods
 * ***********************************************\

    /**
     * @return boolean
     */
    public boolean doesWorkspaceExist() {
        if (workspace == null) {
            return false;
        }
        return true;
    }

    public void addSzenario(String string) {
        szenarios.add(string);
    }

    /**
     * @throws IOException
     */
    public void openBeehaveNetlogo() throws IOException {

        // find path of .nlogo file
        pathtoJavaProject = new File(".").getCanonicalPath();
        List<String> textFiles = new ArrayList<String>();
        File dir = new File(pathtoJavaProject);
        for (File file : dir.listFiles()) {
            if (file.getName().endsWith((".nlogo"))) {
                textFiles.add(file.getName());
            }
        }
        String netlogoFilename = textFiles.get(0);

        // Open Netlogo Beehave model with given path
        workspace = this.getWorkspace();
        try {
            /* Path to Netlogo File
             * Path to Java project + \\BEEHAVE_ISABEL_Schoedl\\Beehave_BeeMapp2016updateversion6_IS_droneBroodRemoval_varroaTreatment.nlogo;
             */
            workspace.open(netlogoFilename, true);
           
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println(
                "Could not find the Beehave model in the given path: "
                + pathtoJavaProject
            );
        }
        this.settingsManager = new SettingsManager(workspace);
        settingsManager.saveDefaultSetting();
    }

    /**
     * deletes the instance of the Headlessworkspace class.
     */
    public void disposeWorkspace() {
        try {
            workspace.dispose();
        } catch (InterruptedException e) {
            System.out.println("HeadlessWorkspace could not get disposed.");
            e.printStackTrace();
        }
    }

    public ArrayList<ArrayList<Double>> getValuesForAllCharts() {
        return valuesForAllCharts;
    }

    /** 
    * runs the Beehave model just one tick 
    */
    public void runBeehaveModel() {
        workspace.command("repeat 1 [ StartProc ]");
        getAllReporters();
    }

    /**
     * Initializes the Beehave Model in Netlogo.
     * The same seed will always produce the same results
     * when the parameters are equal.
     */
    public void setupBeehaveModel() {
        workspace.command("random-seed 0");
        workspace.command("setup");
    }

    /**
     * Saves all the reportes from the Netlogo UI of the Beehave Model.
     */
    public void getAllReporters() {
        try {
            // Reporters under View
            modelValues.put("workers",
                (double) workspace.report("totalIHbees + totalForagers"));
            modelValues.put("foragers",
                (double) workspace.report("totalForagers"));
            modelValues.put("mean age foragers",
                (double) workspace.report("mean [ age ] of foragerSquadrons"));
            modelValues.put("aff", //variable age of in hive bees 
                (double) workspace.report("aff"));
            modelValues.put("in hive bees",
                (double) workspace.report("totalIHbees"));
            modelValues.put("brood",
                (double) workspace.report("totalWorkerAndDroneBrood"));
            modelValues.put("work load",
                (double) workspace.report(
                    "totalWorkerAndDroneBrood / ("
                    + "(totalIHbees + totalForagers * FORAGER_NURSING_CONTRIBUTION)"
                    + " * MAX_BROOD_NURSE_RATIO)"));
            modelValues.put("% pollen store",
                (double) workspace.report(
                    "(PollenStore_g / IdealPollenStore_g) * 100"));

            // reporters in Foraging modelValues
            modelValues.put("Nectar visits",
                (double) workspace.report(
                    " sum [ nectarVisitsToday ] of flowerpatches"));
            modelValues.put("Pollen visits",
                (double) workspace.report(
                    " sum [ pollenVisitsToday ] of flowerpatches"));
            modelValues.put("Julian Day",
                (double) workspace.report("day  ;;ticks mod 365.0000001"));

            // reporters near the plots
            modelValues.put("total mites", (double) workspace.report("totalMites"));
            modelValues.put("phoretic mites healthy",
                (double) workspace.report(
                    "phoreticMites * phoreticMitesHealthyRate"));
            modelValues.put("phoretic mites infected",
                (double) workspace.report(
                    "phoreticMites * (1 - phoreticMitesHealthyRate)"));
            modelValues.put("mites in cells",
                (double) workspace.report(
                "totalMites -  phoreticMites * (1 - phoreticMitesHealthyRate)"
                + " - phoreticMites * phoreticMitesHealthyRate"));
            modelValues.put("rate healthy mites",
                (double) workspace.report("phoreticMitesHealthyRate"));
            modelValues.put("mite fall",
                (double) workspace.report("DailyMiteFall"));
            modelValues.put(
                "mite fall x 10",
                MULTIPLIER_TEN * (double) workspace.report("DailyMiteFall"));
            modelValues.put(
                "rate healthy foragers",
                (double) workspace.report(
                    "(count foragerSquadrons with [infectionState = \"healthy\"])"
                    + " / (totalForagers / SQUADRON_SIZE)"));
            modelValues.put("pollen store [kg]",
                (double) workspace.report("pollenStore_g / 1000"));
            modelValues.put("pollen store [kg] x 20",
                MULTIPLIER_20
                * (double) workspace.report("pollenStore_g / 1000"));
            modelValues.put("honey store [kg]",
                (double) workspace.report("HoneyEnergyStore / "
                + "( ENERGY_HONEY_per_g * 1000 )"));

            // values that do not appear on the netlogo gui
            modelValues.put("larvae",
                (double) workspace.report("(TotalLarvae + TotalDroneLarvae)"));
            modelValues.put("eggs",
                (double) workspace.report("TotalEggs"));
            modelValues.put("infected bees",
                (double) workspace.report("infectedBees"));

            // Parameters for egglaying
            modelValues.put("droneEgglayingTime1",
                (double) workspace.report("DRONE_EGGLAYING_START"));
            modelValues.put("factorWorkers",
                (double) workspace.report("factorWorkers"));
            modelValues.put("ratioDronesToWorkersMiteInvasion",
                (double) workspace.report("factorDrones / factorWorkers"));   
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            System.out.println("Could not get all values from the Beehave model: Method getAllReporters()");
        }
    }

    public void addtoAllSavedData(String simulationName, SavedData savedData) {
        allSavedData.put(simulationName, savedData);
        names.add(simulationName);
    }
}
