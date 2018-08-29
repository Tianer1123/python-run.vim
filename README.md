## 介绍

**python_run** 插件依赖

* `vim8.0`
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
默认情况下`g:python_run_python_version`的配置为**3**。

## 映射

**python_run** 中设置的`<localleader>`为`_`。
``` vim
set maplocalleader='_'
```

快捷键 | 功能
---- | ---
\<localleader\>r | 运行python脚本
\<localleader\>b |  跳回terminal窗口
