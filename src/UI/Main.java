package UI;

import java.io.File;
import java.io.IOException;

import UI.model.HeadlessWorkspaceManager;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.concurrent.Task;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.image.Image;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

public class Main extends Application {
    /**
     * contains the Singleton of the HeadlessWorkspaceManager class.
     */
    private static HeadlessWorkspaceManager manager =
                            HeadlessWorkspaceManager.getInstance();

    private String pathtoProject;

    private String pathOfLogo;

    /** Creates the Main Window.
     * @param primaryStage
     * @throws IOException
     */
    @Override
    public void start(final Stage primaryStage) throws IOException {
        try {
            pathtoProject = new File(".").getCanonicalPath();
            pathOfLogo =  pathtoProject + "\\src\\UI\\design\\Icons\\BEEHAVE-Logo.png";
        } catch (Exception e) {
             System.out.println(pathOfLogo + "This is not the right path to the Logo.");
        }
       
        /* open Popup Window
         * Popup tells User to wait until the Beehave Model is loaded
         */
        final FXMLLoader fxmlLoaderPopup = new FXMLLoader(
            getClass().getResource("design//popup.fxml"));
        try {
            Parent rootPopup = fxmlLoaderPopup.load();
            Stage stage = new Stage();
            //Defines a modal window that blocks events
            //from being delivered to any other application window.
            stage.initModality(Modality.APPLICATION_MODAL);
            stage.setTitle("Starting Beehave Model");
            stage.initStyle(StageStyle.UNDECORATED);
            stage.getIcons().add(new Image(pathOfLogo));
            stage.setScene(new Scene(rootPopup));
            stage.show();
            /*
             * Task of opening the Beehave Model with HeadlessWorkspaceManager.
             * Creates a Headlessworkspace INSTANCE
             * which can control the Netlogo workspace
             */
            Task<Void> task = new Task<Void>() {
                @Override
                public Void call() {
                    try {
                        manager.openBeehaveNetlogo();
                    } catch (Exception e) {
                        e.printStackTrace();
                        this.cancel();
                    }
                    return null;
                }
            };
            task.setOnSucceeded(e -> {
                //when loading of Beehave Model is complete, close Popup-Window
                stage.close();
                //starting UI Main Window
                Parent root;
                try {
                    root = FXMLLoader.load(getClass().getResource("design//beehave.fxml"));
                    primaryStage.setTitle("BEEHAVE");
                    primaryStage.getIcons().add(new Image(pathOfLogo));
                    primaryStage.setScene(new Scene(root));
                    primaryStage.show();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            });
            task.setOnCancelled(e -> {
                String path = manager.getPathtoJavaProject();
                stage.close(); 
                final Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Error");
                Stage stage1 = (Stage) alert.getDialogPane().getScene().getWindow();
                stage1.getIcons().add(new Image(pathOfLogo));                         
                alert.setHeaderText("BEEHAVE was NOT loaded successfully");
                alert.setContentText("Please check that you have Netlogo installed" +
                                        " and that the BEEHAVE-Model can be found here: " + path);
                alert.showAndWait();
                });
            //starting the Task
            new Thread(task).start();
        } catch (IOException e1) {
                System.out.println("Loading Popup did not work.");
                e1.printStackTrace();
        }
    }

    /**
     * @param args
     */
    public static void main(final String[] args) {
        //as recommended in https://github.com/NetLogo/NetLogo/wiki/Controlling-API
        long initialHeapSize = 512 * 1024 * 1024; // 512 Megabyte
        long maxHeapSize = 1024 * 1024 * 1024; // 1024 Megabyte
        System.setProperty("java.vm.heapsize.initial", String.valueOf(initialHeapSize));
        System.setProperty("java.vm.heapsize.max", String.valueOf(maxHeapSize));
        System.setProperty("file.encoding", "UTF-8");

        // launch the application
        launch(args);
        Platform.exit();
        // Dispose the Netlogo Headless Workspace
        // of the Beehave model when the Main window is closed
        manager.disposeWorkspace();
    }
}
