# A3G Framework Modules
![Version 145](https://img.shields.io/badge/Version-145-blue.svg)

## TL;DR
Use the [A3G Framework](https://github.com/a3g/a3g-framework). All it does is take the modules and enable them for you. You can of course still decide which modules you want to use.

## What do the modules even do?
Each module should have a `README.md` inside their folder that explains:
- What it does
- How and if you can configure it
- Extra steps necessary to make it work

## Settings
Modules which can be configured will have a `settings.hpp` inside their folder. Refer to their `README.md` and the comments inside the `settings.hpp` to the individual descriptions of the settings.

## Manual Installation
If you're adamant on not using the framework, you have the option of using the modules without it. Most modules should be simple to use, but they have slightly different instructions on how to enable them. The framework compensates this for you. But if you want to use the modules "stand alone", you'll have to do it yourself. Generally speaking, `#include` all files inside the module folder into the mission config class of the same name. If you have a file named `cfgFunctions.hpp`, it should be included inside `class CfgFunctions {};` inside your `description.ext`. Like this:

``` c++
class CfgFunctions {
  #include "modules\module-name\cfgFunctions.hpp"
}
```

That should generally make them work. If a module for some reason requires extra attention beyond this step. They should have a `README.md` inside their folder explaining what to do. The modules are designed to sit in a folder appropriately named `modules` in the mission root directory. Example: `mymission.Altis\modules\modulename`. That's because you may use quite a few of them, which would very quickly clutter up the mission root folder.

## Contributing
If you want to add your own module(s) or fix an existing one, fork this repository, make the changes and then make a pull request. See also [contribution guidelines](https://github.com/a3g/a3g-framework-modules/wiki/Contribution-Guidelines).
