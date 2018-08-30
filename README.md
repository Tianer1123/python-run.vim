## 介绍

**python_run** 插件依赖

* `vim8.0`或更新
* `+terminal`

通过映射快捷键直接运行当前`python`脚本。关于`terminal`的特性，可以查看`terminal`的相关文档：
``` vim
:h terminal
```

**python_run** 需要在配置文件`vimrc`中配置`python`版本（`python2`或`python3`）：
``` vim
g:python_run_python_version = 3
```
或：
``` vim
g:python_run_python_version = 2
```
默认情况下`g:python_run_python_version = 3`。

**terminal的一些简单介绍**
1. 如果`terminal`处于运行状态，可以使用`<c-w> <c-c>`来终止`terminal job`，突出`REPL`并进入`normal`模式。
2. 如果要退出`terminal`窗口，在进入`normal`模式后执行`:q!`或者`:close!`等。


## 映射

**python_run** 中设置的`<localleader>`为`_`。
``` vim
set maplocalleader='_'
```

快捷键 | 功能
---- | ---
\<localleader\>r | 运行python脚本
\<localleader\>b |  跳回terminal窗口
