# Setup
This software works best with [`VSCode`](https://code.visualstudio.com/Download).
Make sure to install the necessary [`Extension Pack of Java`](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack).

## Necessary development dependencies
[`Netlogo`](https://ccl.northwestern.edu/netlogo/download.shtml) == `6.2.2`

[`JavaFx SDK`](https://openjfx.io/) >= `20.0.1` 

## Setting up the project and the dependencies in VSCode for compiling, debugging and running
In the `.vscode/` folder there are two files `settings.json` and `launch.json`.
The necessary paths need to be added/adjusted.

For this you can follow the steps in [`JavaFx`'s official documentation](https://openjfx.io/openjfx-docs/#IDE-VSCode) under section 4 **"Create and update launch configurations"**.
The only missing part is adding the path to `Netlogo` (`Netlogo6.2.2/app/netlogo.jar`) to the `settings.json` just like with `JavaFx`.

-------------------
# Known issues
### Breaking issues
- ``Time Comparison Chart``: Nach einem Refresh werden manchmal keine Graphen mehr angezeigt. 
- In den **Kalenderfeldern** können auch unpassende Daten eingegeben werden (Wörter oder Zahlen nicht im Datumsformat). Dies sorgt dann dafür dass das BEEHAVE-Modell nicht ordnungsgemäß funktioniert.
### Non-breaking issues
- Bei `Initial Bees`können auch Kommazahlen (`double`) eigegeben werden. Die Simulation wird dadurch nicht beinträchtigt. 
- Mehrere `Settings` dürfen mit identischem Namen abgespeichert werden. Die Einstellungen werden nicht überschrieben, sondern sind nur nicht auseinanderhaltbar. 


