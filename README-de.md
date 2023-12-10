# Setup
Diese Software funktioniert am Besten mit [`VSCode`](https://code.visualstudio.com/Download).
Es ist wichtig, dass das [`Extension Pack of Java`](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack).

## Nötige Entwicklungsabhängigkeiten
[`Netlogo`](https://ccl.northwestern.edu/netlogo/download.shtml) == `6.2.2`

[`JavaFx SDK`](https://openjfx.io/) >= `20.0.1` 

## Projekt und Abhängigkeiten in VSCode aufsetzen um die Software zu kompilieren, debuggen und auszuführen 
Im `.vscode/` Ordner gibt es 2 Dateien `settings.json` und `launch.json`.
Die Pfade dort müssen angepasst werden.

Dafür kann den Schritten in [`JavaFx`'s official documentation](https://openjfx.io/openjfx-docs/#IDE-VSCode) unter Abschnitt 4 **Create and update launch configurations** gefolgt werden.
Nun fehlt nur noch das Hinzufügen des Pfades von `Netlogo` (`Netlogo6.2.2/app/netlogo.jar`) zu der `settings.json` genauso wie bei `JavaFx`.

