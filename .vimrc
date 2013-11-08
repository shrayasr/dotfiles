""""""""""""""""""""""""
" Editing Settings
""""""""""""""""""""""""

" Enable filetype plugin
filetype plugin on
filetype indent on

" Filetypes and encoding
set fileformats=unix,dos,mac
set encoding=utf-8

" General behaviour
set autochdir 			" cwd is same as file
set ai 					" autoindent
set nowrap 				" no wrapping
set nocompatible 		" VIM instead of vi 
set smartcase 			" smart case while searching
set ignorecase 			" ignore casing
set hlsearch			" highlight matches
set incsearch 			" incremental serarch
set history=500 		" long history
set undolevels=1000     " setting undo levels
set nu              "line nos

" disable sounds
set vb t_vb="
set noerrorbells

" tabbing, 2 spaces as tab
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Filetype specific 
au FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4


""""""""""""""""""""""""
" UI 
""""""""""""""""""""""""

syntax on

set showmatch 						" show matching braces
set mousehide 						" hide mouse while typing
set linespace=0 					" no extra pixel lines
set lazyredraw 						" dont redraw wile running macro
set wildmenu 						" wild menu
set wildmode=longest,list,full 		" wild menu options
set ruler 							" show current position
set nobackup 						" dont create backup files
set autoread 						" set to auto read when a file is changed from outside
set hid 							" buffer becomes hidden when abandoned
set magic 							" Regex magic
set laststatus=2 					" status line magic

set statusline=%t\ %y\ [%c,%l]\ [%p%%\ of\ %L]\ %r%m

""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""

au BufNewFile,BufRead *.xsjs set filetype=js

" SuperTab
let g:SuperTabDefaultCompletionType = "context"


""""""""""""""""""""""""
" Keymappings
""""""""""""""""""""""""

" Create vertical split
noremap <leader>v :vsp^N<cr> 		

" Create horizontal split
noremap <leader>h :split^N<cr>

" Edit vimrc
map <leader>e :e! $MYVIMRC<cr>

" Remove highlights
map <ESC><ESC> :nohlsearch<cr>

" Map up and down to move visible lines instead of logical lines
nmap j gj
nmap k gk

" Alt-tab with buffers
nmap <C-e> :e#<CR>

" space and shift space map
noremap <S-space> <C-b>
noremap <space> <C-f>

" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" close buffer
map <leader>q :bd<cr>

" map 0 to first non blank character
map 0 ^

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
