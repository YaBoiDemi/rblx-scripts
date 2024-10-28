# Intro to Module Scrips

- Module scripts can be used to organize your code and make it easier to read and maintain.
  - Make sure it is not **DUPLICATED** between scripts, **IT WILL BECOME HARD TO MANAGE**


## Were to put ModuleScripts in ROblox Studio
- **ModuleScripts** are **commonly placed in ServerScriptService** when **used by server-side scripts** and **ReplicatedStorage** when **used by client-side** local scripts (such as GUI interactions).

## How to create a Module Script
![Alt text](https://prod.docsiteassets.roblox.com/assets/education/coding-6/intro-to-module-scripts/create-module-script.png.webp)


## Structure for module scripts.
```lua
1 local Module = {}
2
3 return Module
```

The line ```local Module = {}``` creates a table, or a container od **CODE**

## Why use Module Scripts?
1. It is a **BETTER** way **TO ORGANIZE** your code.

2. It is a **UNIQUE** type of script that **STORES** a set of functions and **VARIABLE**:
- **VARIABLES** that are designed to meet shared purposes
### For example:
- Like managing players money 

3. Code between module scripts can be used for other scripts.
That way
> That way you can call the same functions

> Note: By storing commonly used code in a module script, it makes it **maintaining** and **organizing** code easier. **JUST BY USING ONLY ONE MODULE SCRIPT**.Rather than updating multiple scripts.