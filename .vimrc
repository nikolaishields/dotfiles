set encoding=utf-8
" Set leader to space
let mapleader = "\<Space>"

set backspace=2   " Backspace deletes like most programs in insert mode
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0 " CVE-2019-12735
set nomodeline

" turn hybrid line numbers on
set number relativenumber
set nu rnu
set modelines=0 " CVE-2019-12735

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Autoinstall plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Quicker quits
nnoremap <C-q> <C-w>q

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quick directory change
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

nnoremap <leader>wq :w<CR>:bd<CR>

" set grep to use ripgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<Space>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" PLUGINS

" Plugin: FZF
" Fuzzy search for files in working dir
nnoremap <silent> <C-f> :Files<CR>
" Fuzzy search in file contents
nnoremap <silent> <Leader>f :Rg<CR>
" Fuzzy search buffers
noremap <silent> <Leader>b :Buffers<CR>
" Fuzzy search commits
nnoremap <silent> <Leader>c :Commits<CR>

" Plugin: Fugitive
" Set tags for vim-fugitive
set tags^=.git/tags
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>ga :Gadd -p<CR>
nnoremap <silent> <Leader>gp :Gpush<CR>
nnoremap <silent> <Leader>gf :Gfetch<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gw :Gwrite<CR>
nnoremap <silent> <Leader>gm :Gcommit --amend<CR>

" Plugin: Nerdtree
map <C-e> :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

" Plugin: vim-terraform
let g:terraform_fmt_on_save=1

" Plugin: nauke
nnoremap <Leader>t :Nuake<CR>
let g:nuake_position = 'bottom'

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-run-interactive'
Plug 'hashivim/vim-terraform'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-surround'
Plug 'rolf007/multiplayer.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Lenovsky/nuake'
call plug#end()