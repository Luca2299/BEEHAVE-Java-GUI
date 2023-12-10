package UI.controllers;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

public class Controller implements Initializable {

    private String pathtoProject;
    private String pathtoIcons;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            pathtoProject = new File(".").toURI().toString();
            pathtoIcons = pathtoProject + "\\src\\UI\\design\\Icons";
        } catch (Exception e) {
            System.out.println(pathtoIcons + "Path to Icons folder could not be found.");
            e.printStackTrace();
        } 
    }

    @FXML
    void aboutMenuClicked(ActionEvent event) {
        try {
        Parent root = FXMLLoader.load(getClass().getResource("/UI/design/about.fxml"));
        Stage about = new Stage();
        about.setTitle("About");
        about.getIcons().add(new Image(pathtoIcons + "\\Info.png"));
        about.setScene(new Scene(root));
        about.show();
        } catch (Exception e) {
            System.out.println("Could not open ABOUT");
        }
    }

    @FXML
    void tipsMenuClicked(ActionEvent event) {
        try {
        Parent root = FXMLLoader.load(getClass().getResource("/UI/design/tips.fxml"));
        Stage tips = new Stage();
        tips.setTitle("Guide");
        tips.getIcons().add(new Image(pathtoIcons + "\\Help.png"));
        tips.setScene(new Scene(root));
        tips.show();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Could not open TIPS");
        }
    }
}
