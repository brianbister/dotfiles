
"Set up Vundle"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Required for Vundle"
Plugin 'VundleVim/Vundle.vim'

"Required for auto-format"
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

call vundle#end()

augroup autoformat_settings
    autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
augroup END

syntax enable
set tabstop=4       " number of visual spaces per TAB"
set softtabstop=4   " number of spaces in tab when editing"
set expandtab       " tabs are spaces"
set number          " show line numbers"
set showcmd         " show command in bottom bar"
set cursorline      " highlight current line"
filetype indent on  " load filetype-specific indent files"
set wildmenu        " visual autocomplete for command menu"
set lazyredraw      " redraw only when we need to"
set showmatch       " highlight matching [{()}]"
colorscheme mustang


