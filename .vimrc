if has("syntax")
  syntax on
endif

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

set nocompatible
noremap <leader>v :vsp^N<cr>
noremap <leader>h :split^N<cr>
map <leader>e :e! $MYVIMRC<cr>
map <ESC><ESC> :nohlsearch<cr>
map <UP> <C-y>
map <DOWN> <C-e>
nmap <A-4> :bd<cr>
nmap j gj
nmap k gk
set nu
set nobackup
set ai
set history=100
set ruler
set undolevels=1000
filetype on
syntax on
set incsearch
set hlsearch
set ignorecase
set tabstop=4
set shiftwidth=4
set laststatus=2
set statusline=%t\ %y\ [%c,%l]\ [%p%%\ of\ %L]\ %r%m
set autochdir
set showmatch
set autoread
set wildmenu
set wildmode=list:longest
