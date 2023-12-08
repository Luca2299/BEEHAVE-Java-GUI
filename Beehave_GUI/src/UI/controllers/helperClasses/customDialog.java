package UI.controllers.helperClasses;

import java.util.Locale;
import java.util.Optional;

import javafx.beans.binding.Bindings;
import javafx.beans.binding.BooleanBinding;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonBar.ButtonData;
import javafx.scene.control.ButtonType;
import javafx.scene.control.TextField;
import javafx.scene.control.TextInputDialog;
import javafx.scene.image.Image;
import javafx.stage.Stage;

public class customDialog {

    private customDialog(){
    }
    
    public static void createAlert(String title, String header, String content, String pathOfLogo){
        Locale.setDefault(Locale.ENGLISH);
        final Alert warning = new Alert(Alert.AlertType.WARNING);
        Stage stage = (Stage) warning.getDialogPane().getScene().getWindow();
        stage.getIcons().add(new Image(pathOfLogo));
        warning.setTitle(title);                      
        warning.setHeaderText(header);
        warning.setContentText(content);
        warning.showAndWait();
    }

    public static Optional<String> createTextInputDialog(String defaultName, String title, String header, String content, String pathOfLogo){
        Locale.setDefault(Locale.ENGLISH);
        TextInputDialog dialog = new TextInputDialog(defaultName);
        Stage stage = (Stage) dialog.getDialogPane().getScene().getWindow();
        stage.getIcons().add(new Image(pathOfLogo));        
        dialog.setTitle(title);
        dialog.setHeaderText(header);
        dialog.setContentText(content);

        //Testing if input is valid
        Button okButton = (Button) dialog.getDialogPane().lookupButton(ButtonType.OK);
        TextField inputField = dialog.getEditor();
        BooleanBinding isInvalid = Bindings.createBooleanBinding(() -> isInvalid(inputField.getText()), inputField.textProperty());
        okButton.disableProperty().bind(isInvalid);

        Optional<String> result = dialog.showAndWait();
        return result;
    }

    private static Boolean isInvalid(String inputText){
        Boolean invalid = true;
        System.out.println(inputText);
        if (inputText.length() >= 1){
            invalid = false;
        }
        return invalid;
    }

    public static Optional<ButtonType> createConfirmationDialog(String title, String header, String content, String buttonText, String pathOfLogo){
        final Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle(title);
        Stage stage2 = (Stage) alert.getDialogPane().getScene().getWindow();
        stage2.getIcons().add(new Image(pathOfLogo));
        ButtonType buttonTypeDelete = new ButtonType(buttonText, ButtonData.OK_DONE);
        ButtonType buttonTypeCancel = new ButtonType("Cancel", ButtonData.CANCEL_CLOSE);
        alert.getButtonTypes().setAll(buttonTypeDelete, buttonTypeCancel);                          
        alert.setHeaderText(header);
        alert.setContentText(content);
        Optional<ButtonType> result = alert.showAndWait();
        return result;
    }
}
