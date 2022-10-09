:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set scrolloff=7
:set encoding=UTF-8

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'       " Нижняя полоса состояния
Plug 'https://github.com/preservim/nerdtree'     	    " Проводник
Plug 'https://github.com/tpope/vim-surround'            " Окружить символами 
Plug 'https://github.com/tc50cal/vim-terminal'          " Терминал
Plug 'https://github.com/terryma/vim-multiple-cursors'	" Несколько курсоров
Plug 'https://github.com/lewis6991/gitsigns.nvim'       " Интеграция с git
Plug 'https://github.com/preservim/tagbar'              " Окно со структурой файла
call plug#end()


""" Standart hotkeys

" Ctrl-s save
inoremap <C-s> <esc>:w<CR>
noremap <C-s> <esc>:w<CR>



""" Text selection
" Up
inoremap <S-up> <c-o><S-v>k
vnoremap <S-up> <up>
nnoremap <S-up> <S-v>k
" Down
inoremap <S-down> <c-o><S-v>j
vnoremap <S-down> <down>
nnoremap <S-down> <S-v>j



""" Copy/Past
nnoremap <C-c> ^"+y$
inoremap <C-c> <C-o>^"+y$
vnoremap <C-c> "+ygv



""" Panels

" F7 - открыть/закрыть проводник
nnoremap <F7> :NERDTree<CR>
nnoremap <F7> :NERDTreeToggle<CR>
inoremap <F7> <esc>:NERDTree<CR>
inoremap <F7> <esc>:NERDTreeToggle<CR>



""" Coding """

" Python
autocmd FileType python set colorcolumn=79
autocmd FileType python nmap <F8> :TagbarToggle<CR>
autocmd FileType python map <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" C
autocmd FileType c map <F5> :w<CR>:exec '!gcc' shellescape(@%, 1) '-o tmp_out; ./tmp_out; rm tmp_out'<CR>
autocmd FileType c set colorcolumn=79

