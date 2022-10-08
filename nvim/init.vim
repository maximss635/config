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

""" Переопределение горячих клавиш """

" Ctrl-c выход с сохранением
noremap <C-c> :wq<CR>

" Ctrl-s сохранить
inoremap <C-s> <esc>:w<CR>
noremap <C-s> <esc>:w<CR>

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

