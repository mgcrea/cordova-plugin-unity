# Cordova SecureDeviceIdentifier #
by [Olivier Louvignes](http://olouv.com)

## DESCRIPTION ##

* This plugin provides a simple way to integrate and communicate with an Unity view.

* This plugin is built for Cordova >= v2.1.0 with ARC, it has been tested to work without ARC.

## PLUGIN SETUP FOR IOS ##

Using this plugin requires [Cordova iOS](https://github.com/apache/incubator-cordova-ios).

1. `cordova plugin add io.mgcrea.Unity`

## JAVASCRIPT INTERFACE (IOS/ANDROID) ##

    // After device ready, create a local alias
    var Unity = cordova.plugins.Unity;

    Unity.show({x: 200, y: 200, width: 512, height: 384});
    Unity.sendMessage("foo;bar");
    Unity.hide();

* Check [source](https://github.com/mgcrea/cordova-unity/tree/master/www/Unity.js) for additional configuration.

## BUGS AND CONTRIBUTIONS ##

Patches welcome! Send a pull request. Since this is not a part of Cordova Core (which requires a CLA), this should be easier.

Post issues on [Github](https://github.com/mgcrea/cordova-unity/issues)

The latest code (my fork) will always be [here](https://github.com/mgcrea/cordova-unity/tree/master)

## LICENSE ##

    The MIT License (MIT)

    Copyright (c) 2015 Olivier Louvignes

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.

## CREDITS ##

Contributors :

* [Olivier Louvignes](http://olouv.com), author.

