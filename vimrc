" ===
" .vimrc
" Author: Jeremy
" Description: My Vim config; drop in ~ as .vimrc.
" ===

" ===
" General
" ===
set encoding=utf-8
set history=1000
" Enable filetype detection and language-specific indent rules
filetype plugin indent on
" Allow switching away from modified buffers without saving
set hidden
" Make backspace work over indents, line breaks, and insert start
set backspace=indent,eol,start

" ===
" UI
" ===
syntax on
silent! colorscheme dracula
" Show filename in the title bar
set title
" Line numbers in the gutter
set number
" Line/column position, and the same in a dated ruler
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
" Always show the status line
set laststatus=2
" Highlight the current line
set cursorline
" Keep a few lines of context above and below the cursor
set scrolloff=3
" Briefly jump to the matching bracket when one is typed
set showmatch
" Visual completion menu on the command line
set wildmenu
" Mouse support; selections use visual mode, so line numbers aren't copied
set mouse=a

" ===
" Searching
" ===
" Case-insensitive, unless the pattern contains an uppercase letter
set ignorecase
set smartcase
" Highlight matches, and show them as you type
set hlsearch
set incsearch

" ===
" Spaces and Tabs
" ===
set autoindent
" Insert spaces instead of tab characters
set expandtab
" A tab character displays as four columns
set tabstop=4
" Indent step for >>, <<, and autoindent
set shiftwidth=4
" Tab/backspace in insert mode move by four spaces
set softtabstop=4

" ===
" Backup
" ===
set nobackup
set noswapfile

" ===
" Key Mapping
" ===
" Disable arrow keys in insert, normal, visual, and operator-pending modes
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" Clear search highlighting
nnoremap <silent> <leader><space> :nohlsearch<CR>
