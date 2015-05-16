" Vimrc written from scratch by reading from Learn vimscript the hard way
" Author: Shrayas Rajagopal
" Register used for all operations required: *c*

"""""""""" Pathogen

filetype off
execute pathogen#infect()

"""""""""" Basic rules

" Allow mouse
set mouse=a

" Assume the g by default on substitutes
set gdefault

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Don't care about vi mode
set nocompatible

" Set CWD to the same things as the file in buffer
"set autochdir

" DONT WRAP
set nowrap

" Alerts, visual bells
set vb t_vb="
set noerrorbells

" Options for search
set smartcase
set ignorecase
set hlsearch
set incsearch

" History settings
set history=500
set undolevels=1000

" Filetypes and Encoding
set fileformats=unix,dos,mac
set encoding=utf-8

" Enable filetype plugin
filetype plugin indent on

" Allow syntax highlighting
syntax on

" Indentation
set si
set ai

" Set line nos. to be relative and sets the width to a more reasonable level
set relativenumber
set numberwidth=2

" Tab settings
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"""""""""" UI based settings

" Use 256 colours on commandline mode
set t_Co=256
color spacegray

" Hack for getting vim to work nicely inside tmux
set term=screen-256color

" Some split magic
" Vertical splits are opened to right and Horiz to the bottom 
" by default
set splitright
set splitbelow

" Show matching bracket
set showmatch

" Hide mouse while typing
set mousehide

" No. of pixel lines b/w characters
set linespace=0

" Dont redraw while executing macros
set lazyredraw

" Match menu while in : mode to select something
set wildmenu
set wildmode=longest,list,full

" Show current position on bottom right with 
" a percentage reading on where in the file
" you are
set ruler

" Don't create backup files
set nobackup

" If a file has changed outside vim, reload it inside
set autoread

" Set a buffer to hidden when abandoned
" i.e. changes are not saved and you move
" to a different buffer
set hid

" Some magic shiz relating to escaping chars
set magic

" If you have more than 2 split, show the status
" line on the 2nd split only
set laststatus=2

" Status line magic

" Name of the file
set statusline=%t\ 

" Type of the file
set statusline+=%y\ 

" [ Column, Line no. ]
set statusline+=[%c,%l]\ 

" [ Percentage through a file of Total lines in file
set statusline+=[%p%%\ of\ %L]\ 

" Readonly flag, modified flag
set statusline+=%r%m

" Add the fugitive part that shows the branch we're on
set statusline+=%{fugitive#statusline()}

"""""""""" Plugin settings

""""" Easy Motion
let g:EasyMotion_do_mapping = 0
map <Leader>s <Plug>(easymotion-s)

""""" CTRLP
let g:ctrlp_map = '<leader>p'
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py|env\/'
let g:ctrlp_show_hidden = 0
let g:ctrlp_extensions = ['funky']
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_use_caching = 1

""" STUPID HOMEBREW won't install ag for me. Bored to figure out the problem.
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"""""""""" Maps

" Toggle wrapping
nnoremap <leader>w :set wrap!<cr>

" Toggle spellcheck
nnoremap <leader>l :set spell!<cr>

" EXPERIMENTAL
inoremap jj <esc>
nnoremap <C-j> +
nnoremap <C-k> -

nnoremap ; :
nnoremap : <nop>

nnoremap / /\v
vnoremap / /\v

" Delete the current buffer
nnoremap <leader>q :bd<cr>

" Keep search results to the middle of the screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Sane navigation with splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
inoremap <c-j> <esc><c-w>j
inoremap <c-k> <esc><c-w>k
inoremap <c-h> <esc><c-w>h
inoremap <c-l> <esc><c-w>l

" Sane split creation
nnoremap <leader>v :vnew<cr>

" Always reselect block after indentation
vnoremap < <gv
vnoremap > >gv

" Ctrl P Mappings
nnoremap <leader><leader> :CtrlPBuffer<cr>
nnoremap <leader>o :CtrlPFunky<cr>

" Nerd tree mappings
nnoremap <F3> :NERDTreeToggle<cr>

" Remove highlights after search
nnoremap <esc><esc> :nohlsearch<cr>

" Map up and down to move physical lines
" Instead of logical lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Alt-tab with buffers
nnoremap <c-e> :e#<cr>

" Ctrl N and Ctrl P for previous and next buffers
"nnoremap <c-n> :bnext<cr>
"nnoremap <c-b> :bprev<cr>

" Use space like in browsers
"nnoremap <space> <c-f>
"nnoremap <s-space> <c-b>

" Map Y to behave like C and D
nnoremap Y y$

" Map 0 to go to first character on line
nnoremap 0 ^

" map leader+d in NORMAL mode to move the line you're on, down.
nnoremap <leader>d ddp

" map the same leader+d in VISUAL mode to capitalize selected words
vnoremap <leader>d U

" map ctrlD in INSERT and NORMAL mode to uppercase the letter the cursor is on
" uses register c so beware
inoremap <leader>u <esc>mcviwU`ca
nnoremap <leader>u mcviwU`c

""""" Quickly edit Vimrc

" In a split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" In the same window
nnoremap <leader>ee :e $MYVIMRC<cr>

"""""

" Quickly source Vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>:echo "Sourced!"<cr>:redraw<cr>

" Add quotes around selection
" uses register c so beware
vnoremap <leader>" <esc>mc`>a"<esc>`<i"<esc>`c

"""""""""" Autocmd

" When a "md" file is loaded, treat it like a markdown file
augroup filetype_md
  autocmd!
  autocmd BufNewFile,BufRead *.md setfiletype markdown 
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" When a XSJS or a XSJSLIB file is opened, treat it like a js file
augroup filetype_xsjs_xsjslib
	autocmd!
	autocmd BufNewFile,BufRead *.xsjs,*.xsjslib setfiletype javascript
augroup END

" When editing a python file, set the tabs to 4 spaces
augroup filetype_python
	autocmd!
	autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

"Only show cursorline when in current window and normal mode
augroup cursor_line
  autocmd!
  autocmd WinLeave,InsertEnter * set nocursorline
  autocmd WinEnter,InsertLeave * set cursorline
augroup END

"""""""""" Others

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Highlight 81st column
highlight ColorColumn ctermbg=magenta
set colorcolumn=81
