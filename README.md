## 介绍


通过快捷键或命令直接运行当前`python`脚本。

### 截图
![RunPython](https://github.com/Tianer1123/python-run.vim/blob/master/RunPython.gif)

在`ex`命令下输入: `:python_run`或者按<kbd>_ + r</kbd>运行`python`脚本。

### python_run 插件依赖

* `vim8.0`或更新
* `+terminal`

#### 查看版本
终端查看vim版本:
``` bash
vim --version
```
vim内查看vim版本:
``` vim
:version
```

#### 查看是否支持terminal
终端查看:
``` bash
vim --version | grep terminal
```

* `+terminal` : 支持
* `-terminal` : 不支持

vim内查看:
``` vim
:echo has("terminal")
```
* 1 : 支持
* 0 : 不支持

### 安装

#### [Vundle](https://github.com/VundleVim/Vundle.vim) ( **建议** )

把下面内容放到你的`vimrc`中
``` vim
Plugin 'Tianer1123/python-run.vim'
```
打开`vim`执行
``` vim
:source %
:PluginInstall
```

#### Pathogen
``` vim
cd ~/.vim/bundle
git clone https://github.com/Tianer1123/python-run.vim.git
```

#### 无插件管理器
将插件下载下来拷贝到你的`vim`配置文件夹中
``` bash
cd /tmp && git clone https://github.com/Tianer1123/python-run.vim.git
cp -r python-run.vim/* ~/.vim/
```

查看`vim`帮助`:help add-global-plugin`.

### python_run 配置

**win32:**

win32下默认使用`python`命令，请设置好环境变量。

**linux,MACOS:**

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

**自定义maplocalleader**
``` vim
let g:python_run_python_localleader = '_'
```

快捷键 | 说明| 功能
---- | --- | ---
_r | \<localleader\>r| 运行python脚本

## 命令

在`python`脚本进入`normal`模式时，执行`ex`命令：
``` vim
:RunPython
```
运行`python`脚本。

如果安装了`ipython`，用如下命令打开：
``` vim
:RunIpython
```

## 许可证
[MIT许可证](https://github.com/Tianer1123/python-run.vim/blob/master/LICENSE)

