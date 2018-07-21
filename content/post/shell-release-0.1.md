+++
title = "lide shell release 0.1"
date = 2018-03-27
description = "First stable version of lide shell."
draft = false
toc = false
categories = ["releases"]
tags = ["shell", "release"]
+++

Lide Shell is a project that gives us the possibility to interact with a totally controlled environment for the execution of the Lide framework. It is built with different libraries that are interoperable with most Lua interpreters that are used by default.

In addition, the Lua scripts allow us to manage different libraries or modules that are organized in "packages" according to a specific specification called lide.manifest.

You can install lide shell on Windows OS using automatic installer:

Download [shell-installer for Windows 10.](https://github.com/lidesdk/shell/releases/download/v0.1-beta/shell-installer-0.1-11.exe).

```
Required OS: Windows XP to Windows 10
Release date: 07/08/2018
Release version: 0.1
Framework version: 0.1
```


<img src="/installer_screenshot.png" 
alt="Lide shell Installer Screenshot" width="300" height="250" border="3" />

With with this version you can:

- Execute lua scripts.
- Manage lide packages (lua libraries representation) `install, delete, update, search`.
- Link packages with dependencies.
