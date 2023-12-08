package UI.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;

import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.embed.swing.SwingFXUtils;
import javafx.scene.Node;
import javafx.scene.SnapshotParameters;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.XYChart;
import javafx.scene.chart.XYChart.Series;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.Label;
import javafx.scene.image.WritableImage;

import java.io.File;
import java.io.FileWriter;

public class SimulationData {
    /**
     * The HeadlessWorkspaceManager class contains the Headlessworspace as class
     * variable
     * and all the methods that interact directly with Netlogo.
     */
    private HeadlessWorkspaceManager manager; 

    private Map<String, Double> modelValues = new HashMap<String, Double>();

    private ArrayList<String> graph;
    
    private LineChart<Integer, Double> chart;

    private ArrayList<XYChart.Series<Integer, Double>> seriesList;

    private ArrayList<String> selected;
   
    private ArrayList<String> notSelected;

    /* Constructor */
    public SimulationData (ArrayList<String> graphCONSTANT, LineChart<Integer, Double> chart){
        this.manager =  HeadlessWorkspaceManager.getInstance();
        this.modelValues = manager.getModelValues();
        this.graph = new ArrayList<>(graphCONSTANT);
        this.chart = chart;
        this.seriesList = new ArrayList<XYChart.Series<Integer, Double>>(
            graphCONSTANT.size()
        );
        this.selected = new ArrayList<>(this.graph);
        this.notSelected = new ArrayList<String>();
    }

/**************************************
            GETTERS AND SETTERS
**************************************/

    public void setChart(LineChart<Integer, Double> chart){
        this.chart = chart;
    }
    
    public Map<String, Double> getModelValues() {
        return modelValues;
    }
    
    /** 
     * @return ArrayList<String>
     */
    public ArrayList<String> getGraph() {
        return graph;
    }

    public void setGraph(final ArrayList<String> newgraph) {
        this.graph = newgraph;
    }

    public Series<Integer, Double> getSeries(String name){  
        for(Series<Integer, Double> series : seriesList){
            if (series.getName().equals(name)){
                Series<Integer, Double> found = series;
                return found;
            }
        }
        Series<Integer, Double> notfound = newSeries("notfound");
        return notfound;
    }

/*************************************************
 *  Methods
 * ***********************************************\

	/**
     * Initializes Series.
     * Adds new empty Series with the name (for the legend)
     * the SeriesList1/2/3.
     */
    public void createSeriesList() {
        for (int j = 0; j < this.graph.size(); j++) {
            String graphName = this.graph.get(j);
            seriesList.add(newSeries(graphName));
        }
    }
	
	/**
     * Helps with the creation of new Series.
     * @param name
     * @return series
     */
    public Series<Integer, Double> newSeries(String name) {
        XYChart.Series<Integer, Double> series =
            new XYChart.Series<Integer, Double>();
        series.setName(name);
        return series;
    }

    public void removeAllSeriesList(){
        chart.getData().removeAll(seriesList);
    }
	
    /**
     * This method is necesarry to see the graphs in the diagrams:
     * adds the Series from SeriesList1/2/3
     * to the correct one of the three Diagrams.
     */
    public synchronized void addSeriestoPlots() {
        for (int i = 0; i < seriesList.size(); i++) {
            XYChart.Series<Integer, Double> series = seriesList.get(i);
            if (!chart.getData().contains(series)) {
                chart.getData().add(seriesList.get(i));
                /** //add functionality: when clicking a graph, it will get invisible 
                series.getNode().setOnMouseClicked(e -> setGraphsInvisible(series));
                series.getNode().setCursor(Cursor.HAND);
                // Set tooltips, which informs user that the graphs can be set invisible with a click 
                Tooltip tooltip =  new Tooltip("Click to set invisible");
                Tooltip.install(series.getNode(),tooltip);
                tooltip.setShowDelay(Duration.seconds(0));
                tooltip.setShowDuration(Duration.seconds(2)); */
                
            } else {
                //System.out.println("Tried adding duplicate series to " + this.chart);
            }
        }
    }

    /**
     * deletes the data from the XYChart series
     */
    public void clearSeriesData() {
        for (XYChart.Series<Integer, Double> series : seriesList) {
            series.getData().clear();
        }
        // Necessary for the Legend to refresh
        // and not add new series with each refresh
        seriesList.clear();
    }

    public void setPlotVisible(){
        //add all plots from notselected to the selected list and clear the not selected list
        for (String i : this.notSelected){
            this.selected.add(i);
        }
        // System.out.println("THIS.SELECTED: " + this.selected);
        this.notSelected.clear();

        if (!seriesList.isEmpty()){
            if (seriesList.get(0).getNode() != null){ //why this?
                setInvisibleGraphsFromList();
            }
        }
    }

    public void refreshLegend(){
        if (chart != null){
            for(Node node : chart.lookupAll("Label.chart-legend-item")){
            node.setStyle("-fx-opacity: 1;"); 
            }
        }
    }
	
    /**
     * with a click on a graphs, it gets set as invisible
     * @param series
     */
    /** public void setGraphsInvisible(XYChart.Series<Integer, Double> series ) {
        if (series.getNode().isVisible()){
            series.getNode().setVisible(false);
        } else {
            series.getNode().setVisible(true);
        }
    } */

    public void setChosenGraphs(CheckMenuItem source, String selectedGraph){
        if (!source.isSelected()) {
            if (!notSelected.contains(selectedGraph)){
                notSelected.add(selectedGraph);
            }
            if (selected.contains(selectedGraph)){
                selected.remove(selectedGraph);
            }
        } else {
            if (notSelected.contains(selectedGraph)){
                notSelected.remove(selectedGraph);
            }
            if (!selected.contains(selectedGraph)){
                selected.add(selectedGraph);
            }
        }
        if (!seriesList.isEmpty()){
            if (seriesList.get(0).getNode() != null){
                setInvisibleGraphsFromList();
            }
        } 
    } 

    private void setInvisible(String selectedGraph){
        for(int i=0 ; i < seriesList.size(); i++){
            XYChart.Series<Integer, Double> series = seriesList.get(i);

            if (series.getName().equals(selectedGraph)){
                series.getNode().setVisible(false);
                for(Node node : chart.lookupAll("Label.chart-legend-item")){
                    Label label = (Label)node;
                    if (label.getText().equals(selectedGraph)) {
                        node.setStyle("-fx-opacity: 0.5;"); 
                        break; // Stop searching once you've found the specific legend item
                    }
                }
            } 
        }
    }

    private void setVisible(String selectedGraph){
        for(int i=0 ; i < seriesList.size(); i++){
            XYChart.Series<Integer, Double> series = seriesList.get(i);
            if (series.getName().equals(selectedGraph)){
                series.getNode().setVisible(true);
                for(Node node : chart.lookupAll("Label.chart-legend-item")){
                    Label label = (Label)node;
                    if (label.getText().equals(selectedGraph)) {
                        node.setStyle("-fx-opacity: 1;"); 
                        break; // Stop searching once you've found the specific legend item
                    }
                }
            }
        }
    }
    

    public void setInvisibleGraphsFromList(){
        if (this.selected != null && this.notSelected != null){
            for (String g : this.notSelected){
                setInvisible(g);
            }
            for (String g : this.selected){
                setVisible(g);
            }
        } else {
            System.out.println("List of selected or not selected Graphs was not initialized.");
        }  
    }

	/**
     * Method that adds the values from the Beehave model to the series.
     * Method is synchronized, which solves the error,
     * that sometimes one datapoint stayed in the charts after refreshing
     * @param tick
     */
    public synchronized void fillSeriesWithData(int tick) {
        Platform.runLater(() -> {
            if (tick == 0){
            System.out.println("Tick is 0 in fillSeriesWithData");
            }
            this.modelValues = manager.getModelValues();
            ObservableList<Double> values = fillvaluesChartsArray(this.modelValues);
            
            for (int i = 0; i < graph.size(); i++) {
                double modelvalue = values.get(i);
                XYChart.Series<Integer, Double> series = seriesList.get(i);
                // gets the correct series to add the datapoint to
                series.getData().add(
                    new XYChart.Data<Integer, Double>(tick, modelvalue));
                    // Adds datapoints to the series:
                    // x = tick and y = modelvalue
            }
        });  
    }

    public synchronized ObservableList<Double> fillvaluesChartsArray(Map<String, Double> modelvalues ){ 
        ObservableList<Double> values = FXCollections.observableArrayList();
        for (int j = 0; j < graph.size(); j++) {
            double y = modelValues.get(graph.get(j));
            values.add(y);
        }
        return values;
    }

    public ArrayList<Series<Integer, Double>> saveOldvalues(ArrayList<XYChart.Series<Integer, Double>> oldValuesList){
        for (String name : graph){
            var oldValues = new Series <Integer, Double>();
            for (XYChart.Data<Integer,Double> datapoint : getSeries(name).getData()){
                oldValues.getData().add(new XYChart.Data<Integer,Double>(datapoint.getXValue(), datapoint.getYValue()));
            }
            oldValues.setName(name);
            oldValuesList.add(oldValues);
        }
        if (oldValuesList == null){
            System.out.println("oldValuesList is null! SimulationData: " + this + " " + this.chart);
        }
        if (oldValuesList.isEmpty()){
            System.out.println("oldValuesList is emmpty!");
        }
        return oldValuesList;
    }

    public void saveAsPng(File file){
        WritableImage image = chart.snapshot(new SnapshotParameters(), null);
        try {
            ImageIO.write(SwingFXUtils.fromFXImage(image, null), "png", file);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void chartToCSV(File csvFile) throws IOException{
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
}

