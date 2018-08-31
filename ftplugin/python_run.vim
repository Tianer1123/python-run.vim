" Vim运行python脚本插件。
" 结果显示在vim内部终端中。
" Last Change: 2018 Aug 29
" Maintainer: Tianer <q2719833@126.com>
" License: MIT

if exists("b:did_python_run_plugin")
  finish
endif
let b:did_python_run_plugin = 1

if v:version <= 800
  echo "You need vim version 8.0 or later."
  finish
endif

if has("terminal") == 0
  echo "Your vim not support terminal."
  finish
endif

filetype plugin on
let s:save_cpo = &cpo
set cpo&vim

if !exists("g:python_run_python_version")
  let g:python_run_python_version = 3
endif

if !exists("g:python_run_python_localleader")
  let maplocalleader = '_'
else
  let maplocalleader = g:python_run_python_localleader
endif

nnoremap <unique> <buffer> <localleader>r :call <SID>Python_run_fun()<CR>

function! s:Python_run_fun()
  let b:current_python_file = expand("%:p")
  if has("win32")
    execute "normal! :terminal python " . b:current_python_file . " \<cr>"
  else
    if g:python_run_python_version == 2
      execute "normal! :terminal python " . b:current_python_file . " \<cr>"
    elseif g:python_run_python_version == 3
      execute "normal! :terminal python3 " . b:current_python_file . " \<cr>"
    endif
  endif
endfunction

if !exists("RunPython")
  command -nargs=0    RunPython :call s:Python_run_fun()
endif

let &cpo = s:save_cpo
unlet s:save_cpo
