filetype plugin on

set nocompatible
set backspace=2
set history=50
set cindent
set ruler
set ts=4
set shiftwidth=4
set nu
set mouse=a
set incsearch
set hlsearch
set scrolloff=4
set tags=./tags,../tags,../../tags,../../../tags,../../../../tags,tags

au Bufenter *.\(c\|cpp\|h\|py\|java\|html\) set tabstop=4
au Bufenter *.\(c\|cpp\|h\|py\|java\|html\) set expandtab

autocmd BufNewFile,BufRead *.n source ~/.nml.vim
colors desert
syntax on

au Syntax cpp call BaboSyntax()
au Syntax c call BaboSyntax()
function BaboSyntax()
    syntax keyword baboType byte int8 int16 int32 int64 uint8 uint16 uint32 uint64
    hi link baboType Type
endfunction

filetype plugin indent on

set encoding=korea
set encoding=utf8

autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
