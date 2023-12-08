package UI.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Map.Entry;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.XYChart;
import javafx.scene.chart.XYChart.Series;

public class SavedData {

    private String name;

    private ObservableList<Entry<String, Double>> lastValues;

    private XYChart.Series<String,Double> series1;

    private XYChart.Series<String,Double> series2;

    private LineChart<Integer, Double> comparisonChart;

    private BarChart<String, Double> barChart1;

    private BarChart<String, Double> barChart2;

    private SimulationData miteData; 

    private SimulationData colonyData; 

    private SimulationData honeyData;

    private ArrayList<XYChart.Series<Integer, Double>> oldValuesList;

    private ArrayList<String> barGraphs1 = new ArrayList<String>(
                        Arrays.asList(
                            "in hive bees",
                            "total mites",
                            "honey store [kg]"
                    ));

    private ArrayList<String> barGraphs2 = new ArrayList<String>(
                        Arrays.asList(
                            "foragers",
                            "workers"
                    ));

    public SavedData(SimulationData miteData,
                        SimulationData colonyData, 
                        SimulationData honeyData, 
                        Map<String, Double> modelValues, 
                        String simulationName){
        this.lastValues = FXCollections.observableArrayList(modelValues.entrySet());
        this.miteData = miteData;
        this.colonyData = colonyData;
        this.honeyData = honeyData;
        this.name = simulationName;
        this.series1 = new XYChart.Series<String,Double>();
        this.series2 = new XYChart.Series<String,Double>();
        this.series1.setName(this.name); 
        this.series2.setName(this.name); 
        save();  
        for (Entry<String, Double> value : lastValues){
            if (barGraphs1.contains(value.getKey())){
                series1.getData().add(new XYChart.Data<String,Double>(value.getKey(), value.getValue()));
            } 
            if (barGraphs2.contains(value.getKey())){
                series2.getData().add(new XYChart.Data<String,Double>(value.getKey(), value.getValue()));
            }
        }
    }

     /**
     * saves the values for the display on szenario Analytics
     */
    public void save() {
        this.oldValuesList = new ArrayList<XYChart.Series<Integer, Double>>();
        this.oldValuesList.addAll(miteData.saveOldvalues(new ArrayList<>()));
        this.oldValuesList.addAll(colonyData.saveOldvalues(new ArrayList<>()));
        this.oldValuesList.addAll(honeyData.saveOldvalues(new ArrayList<>()));
    }

    public void setComparisonChart(LineChart<Integer, Double> comparisonChart) {
        this.comparisonChart = comparisonChart;
    }
    public void setBarChart1(BarChart<String, Double> barChart1) {
            this.barChart1 = barChart1;
    }    
    public void setBarChart2(BarChart<String, Double> barChart2) {
            this.barChart2 = barChart2;
    }
    
    public void comparison(ArrayList<String> selectedGraphs){ 
        barChart1.getData().add(series1);
        barChart2.getData().add(series2);

        // Line Chart
        if (!selectedGraphs.isEmpty()){
            for (String selected : selectedGraphs){
                comparisonChart.getData().add(getOldValues(selected,this.name));
                
                /** //add functionality: when clicking a graph, it will get invisible 
                lineSeries.getNode().setOnMouseClicked(e -> setGraphsInvisible(lineSeries));
                lineSeries.getNode().setCursor(Cursor.HAND);
                // Set tooltips, which informs user that the graphs can be set invisible with a click 
                Tooltip tooltip =  new Tooltip("Click to set invisible");
                Tooltip.install(lineSeries.getNode(),tooltip);
                tooltip.setShowDelay(Duration.seconds(0));
                tooltip.setShowDuration(Duration.seconds(2));  */
            } 
        }  else {
            System.out.println("No graph was selected.");   
        } 
    }   
    
    /**
     * @param name
     * @param run
     * @return Series<Integer, Double>
     */
    public Series<Integer, Double> getOldValues(String selectedGraph, String simulationName) {
        for (Series<Integer, Double> v : this.oldValuesList){
            if (v.getName().equals(selectedGraph)){
                Series<Integer, Double> oldValues = new XYChart.Series<>(v.getData());
                oldValues.setName(selectedGraph + " (" + simulationName + ")");
                return oldValues;
            }
        }
        System.out.println("getOldValues() returns null.");
        return null;
    }

    /**
     * with a click on a graphs, it gets set as invisible
     * @param series
     */
    public void setGraphsInvisible(XYChart.Series<Integer, Double> series ) {
        if (series.getNode().isVisible()){
            series.getNode().setVisible(false);
        } else {
            series.getNode().setVisible(true);
        }
    }
}
