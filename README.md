# Hammerspoon 配置

## 使用方法

1. 安装 [Hammerspoon](http://www.hammerspoon.org/)
2. `git clone  https://github.com/forecho/hammerspoon-config.git ~/.hammerspoon`

所以配置文件都在 `config.lua` 文件中，你可以按照自己的习惯或者需求修改此文件。

> 注：修改 `.lua` 文件会自动加载。

### 窗口管理

* <kbd>Control</kbd><kbd>Command</kbd> + <kbd>Return</kbd> `最大化窗口`
* <kbd>Control</kbd><kbd>Command</kbd> + <kbd>→</kbd> `把窗口移动到右边显示器`
* <kbd>Control</kbd><kbd>Command</kbd> + <kbd>←</kbd> `把窗口移动到左边显示器`
* <kbd>Control</kbd><kbd>Command</kbd> + <kbd>F</kbd> `全屏或者退出全屏`

### 快速启动

* <kbd>Option</kbd> + <kbd>G</kbd> `Google Chrome`
* <kbd>Option</kbd> + <kbd>C</kbd> `Visual Studio Code`
* <kbd>Option</kbd> + <kbd>I</kbd> `iTerm`
* <kbd>Option</kbd> + <kbd>P</kbd> `PHPStorm`
* <kbd>Option</kbd> + <kbd>W</kbd> `WeChat`
* <kbd>Option</kbd> + <kbd>Q</kbd> `QQ`
* <kbd>Option</kbd> + <kbd>M</kbd> `Postman`


### 切换输入法

* <kbd>Option</kbd> + <kbd>S</kbd> `搜狗输入法`
* <kbd>Option</kbd> + <kbd>E</kbd> `系统 ABC`
* <kbd>Option</kbd> + <kbd>.</kbd> `系统 ABC、系统简体中文，搜狗输入法轮流切换`

### 自动切换输入法

具体看 `config.lua` 文件里面的 `appInputMethod` 值

### 自动开关蓝牙

休眠自动关闭蓝牙，然后自动开启蓝牙。使用这个功能之前先要安装 `blueutil`

```sh
brew install blueutil
```
