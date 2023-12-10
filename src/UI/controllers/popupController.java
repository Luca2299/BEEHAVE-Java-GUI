package UI.controllers;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.animation.KeyFrame;
import javafx.animation.KeyValue;
import javafx.animation.Timeline;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ProgressBar;
import javafx.util.Duration;

public class popupController implements Initializable  {

    private static final Integer STARTTIME = 10;

    private IntegerProperty timeSeconds = new SimpleIntegerProperty(STARTTIME * 100);

    private Timeline timeline;

    @FXML
    private ProgressBar progressbar;

    /**
     * Will be called at the start of the GUI.
     * @param location
     * @param resources
     */
    @Override
    public void initialize(final URL location, final ResourceBundle resources) {
        progressbar.progressProperty().bind(timeSeconds.divide(STARTTIME * 100.0).subtract(1).multiply(-1));
        if (timeline != null)
        {
            timeline.stop();
        }
        timeSeconds.set((STARTTIME + 1) * 100);
        timeline = new Timeline();
        timeline.getKeyFrames().add(
        new KeyFrame(Duration.seconds(STARTTIME + 1), new KeyValue(timeSeconds, 0)));
        timeline.playFromStart();
    } 
}
