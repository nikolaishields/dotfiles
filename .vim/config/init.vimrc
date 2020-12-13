" Autoinstall plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug '907th/vim-auto-save'
Plug 'Lenovsky/nuake'
Plug 'ajmwagar/vim-deus'
Plug 'christoomey/vim-run-interactive'
Plug 'hashivim/vim-terraform'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'pbrisbin/vim-mkdir'
Plug 'rolf007/multiplayer.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'gko/vim-coloresque'
call plug#end()


