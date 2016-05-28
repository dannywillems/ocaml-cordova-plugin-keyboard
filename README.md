# ocaml-cordova-plugin-keyboard

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-keyboard/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-keyboard.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-keyboard)

Binding to
[cordova-plugin-keyboard](https://github.com/cjpearson/cordova-plugin-keyboard)

## What does cordova-plugin-keyboard do ?

```
This plugin provides the Keyboard object which has some functions to customize
and control the keyboard. It also supports the HideKeyboardFormAccessoryBar
(boolean) and KeyboardShrinksView (boolean) preferences in config.xml.
```

Source: [cordova-plugin-keyboard](https://github.com/cjpearson/cordova-plugin-keyboard)

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

* If you added
[ocaml-cordova-plugin-list](https://github.com/dannywillems/ocaml-cordova-plugin-list)
as opam package provider, you can use
```
opam install cordova-plugin-keyboard
```

* Else, you can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-keyboard https://github.com/dannywillems/ocaml-cordova-plugin-keyboard.git
```

To compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-keyboard [...] -linkpkg [other arguments]
```

Don't forget to install cordova-plugin-keyboard with
```Shell
cordova plugin add cordova-plugin-keyboard
```

## How to use ?

* See the [official documentation](https://github.com/cjpearson/cordova-plugin-keyboard)
