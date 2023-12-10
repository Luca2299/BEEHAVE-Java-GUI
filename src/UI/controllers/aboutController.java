package UI.controllers;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;

import java.awt.*;

public class aboutController implements Initializable {
     @Override
    public void initialize(URL location, ResourceBundle resources) {
    }

     @FXML
    void linkClicked(ActionEvent event) throws URISyntaxException, IOException{
        Desktop.getDesktop().browse(new URI("https://beehave-model.net/"));
    }

    @FXML
    void linkNameClicked(ActionEvent event) throws IOException, URISyntaxException {
        Desktop.getDesktop().browse(new URI("https://github.com/Luca2299"));
    }

    @FXML
    void linkIconsClicked(ActionEvent event) throws IOException, URISyntaxException {
        Desktop.getDesktop().browse(new URI("https://icons8.com/"));
    }
   
}
