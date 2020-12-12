" Set leader to space
let mapleader = "\<Space>"

" settings
set autowrite      " Automatically :write before running commands
set backspace=2    " Backspace deletes like most programs in insert mode
set encoding=utf-8 
set history=50
set incsearch      " do incremental searching
set laststatus=2   " Always display the status line
set modelines=0    " CVE-2019-12735
set nomodeline
set noswapfile
set ruler          " show the cursor position all the time
set showcmd        " display incomplete commands
set t_vb=
set visualbell

" Make it obvious where 120 characters is
set textwidth=120
set colorcolumn=+1

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" enable smart line number behaviour
set number relativenumber

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" set colorscheme
colorscheme molokai
syntax enable
