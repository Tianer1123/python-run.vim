## 介绍


通过快捷键或命令直接运行当前`python`脚本。

### python_run 插件依赖

* `vim8.0`或更新
* `+terminal`


### python_run 配置
`python_run` 需要在配置文件`vimrc`中配置`python`版本（`python2`或`python3`）：
``` vim
let g:python_run_python_version = 3
```
或：
``` vim
let g:python_run_python_version = 2
```
默认情况下`g:python_run_python_version = 3`。

### terminal的一些简单介绍
关于`terminal`的特性，可以查看`terminal`的相关文档：
``` vim
:h terminal
```
1. 如果`terminal`处于运行状态，可以使用`<c-w> <c-w>`或者`<c-w>` + `h,j,k,l`来切换window。
2. 如果`terminal`处于运行状态，可以使用`<c-w> <c-c>`来终止`terminal job`，退出`REPL`并进入`normal`模式。
3. 如果要**退出**`terminal`窗口，在进入`normal`模式后执行`:q!`或者`:close!`等。


## 映射

**python_run** 中设置的`<localleader>`为`_`。
``` vim
set maplocalleader='_'
```

快捷键 | 功能
---- | ---
\<localleader\>r | 运行python脚本
\<localleader\>b | 跳回terminal窗口

## 命令

在`python`脚本进入`normal`模式时，执行`ex`命令：
``` vim
:RunPython
```
运行`python`脚本。

## License
**The MIT License (MIT)**

Copyright (c) 2012 Benjamin D. Williams

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
