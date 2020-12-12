" PLUGIN CONFIG

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

" Plugin: nauke
nnoremap <Leader>t :Nuake<CR>
let g:nuake_position = 'bottom'

" Plugin: vim-auto-save
let g:auto_save = 1
let g:auto_save_postsave_hook = ':silent ! commit.sh &>/dev/null'

" Plugin: vim-terraform
let g:terraform_align=0
let g:terraform_fmt_on_save=0


