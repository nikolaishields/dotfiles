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

" Git Mob
nnoremap <leader>me :!git solo<CR>
nnoremap <leader>kmt :!git mob kmt<CR>
nnoremap <leader>rag :!git mob rag<CR>
nnoremap <leader>awe :!git mob kmt rag<CR>

nnoremap <leader>wq :w<CR>:bd<CR>

" set grep to use ripgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<Space>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>


