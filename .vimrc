" Plugins
" I prefer to use Plug to manage the plugins since it is cleaner
" and just situated inside the vimrc directly, instead of me having
" to get out of vim and do things over there.

call plug#begin()
Plug 'mattn/emmet-vim'                " For better HTML stuff
Plug 'tpope/vim-surround'             " For easier surrounding operations

Plug 'justinmk/vim-sneak'             " For easier navigating (easy motion alternative)

Plug 'itchyny/lightline.vim'          " KEWL status line at the bottom

Plug 'godlygeek/tabular'              " To see tabular information better
Plug 'dhruvasagar/vim-table-mode'     " To compose and edit tables in text

Plug 'junegunn/fzf'                   " FZF. Enough said
Plug 'junegunn/fzf.vim'               " Same as above ^

Plug 'morhetz/gruvbox'                " Great simple theme
call plug#end()

" Better leader key for all the mappings below
let mapleader = ","

" Avoid having backup files written
set nobackup

" Have a line at the cursor location
set cursorline

" Reread files when they are changed on disk
set autoread

" Allow hidden buffers so I can switch around without saving
set hid

" Gimme mouse
set mouse=a
set mousehide

" Don't redraw too often
set lazyredraw

" Allow me to place the cursor anywhere on the buffer. Even if there is no
" actual character over there
set virtualedit=all 

" I want syntax highlighting
syntax on

" Set my theme
set background=dark
colorscheme gruvbox

" Set numbering
set relativenumber      " Set relative numbering (much easier to navigate)
set number              " But on the line I'm on, show the line number

" Show matching bracket
set showmatch

" Lightline related configs
set noshowmode                " Don't show mode, lightline takes care of it
set laststatus=2              " Required for lightline to work on all buffers

" Visually highlight the conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Show a column at the 81st position to make sure I don't write too long lines
highlight ColorColumn ctermbg=magenta
set colorcolumn=81

" Don't error - sound/visual for any bells
set noerrorbells

" Tab handling. Spaces not tabs (sorry Richard)
set expandtab
set smarttab
set tabstop=2
set softtabstop=2   " Show all tabs as 2 spaces
set shiftwidth=2

" Indentation
set smartindent
set autoindent

" Don't wrap or spell check by default.
" I have a mapping down below to enable both
set nowrap
set nospell

" Apply everything globally
set gdefault

" Search related settings
set smartcase               " Do a smart search if there are non lowercase chars
set ignorecase              " Ignore case for default searches
set hlsearch                " Highlight searches
set incsearch               " Do incremenetal searches

" Handle vim related regex issues by forcing a 
" common behaviour
nnoremap / /\v
vnoremap / /\v

" Always keep search results centered to the screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Dismiss highlights (from search) with a double escape
nnoremap <esc><esc> :nohlsearch<cr>

" Split behaviours
set splitright                 " Always do vert splits to the right
set splitbelow                 " Always do horiz splits to the bottom
nnoremap <leader>v :vnew<cr>
nnoremap <leader>s :new<cr>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
inoremap <c-j> <esc><c-w>j
inoremap <c-k> <esc><c-w>k
inoremap <c-h> <esc><c-w>h
inoremap <c-l> <esc><c-w>l


set wildmode=longest,list,full


nnoremap ; :
nnoremap : <nop>
inoremap jj <esc>
nnoremap <leader>a ggVG
nnoremap Y y$
nnoremap 0 ^
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
vnoremap < <gv
vnoremap > >gv


nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ee :e $MYVIMRC<cr>
nnoremap <leader>hosts :e /etc/hosts<cr>
nnoremap <leader>big :set guifont=JetBrains\ Mono:h20<cr>
nnoremap <leader>w :set wrap!<cr>


nmap <Tab> <Plug>Sneak_;
nmap <S-Tab> <Plug>Sneak_,
xmap <Tab> <Plug>Sneak_;
xmap <S-Tab> <Plug>Sneak_,
omap <Tab> <Plug>Sneak_;
omap <S-Tab> <Plug>Sneak_,


let g:fzf_layout = { 'down': '40%' }
" Files in current directory/project
nnoremap <leader>P :Files<CR>
" Git-tracked files, when inside a git repo
nnoremap <leader>p :GFiles<CR>
" Open buffers
nnoremap <leader>b :Buffers<CR>
" Search text in project using ripgrep
nnoremap <leader>g :Rg<Space>
" Use F1 to fuzzy-search Vim/plugin help
nnoremap <F1> :Helptags<CR>
