set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
filetype indent on        " activates indenting for files
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.

syntax enable
set hidden                    " Required to keep multiple buffers open
"set nowrap                    " Display long lines as just one line
set wrap                      " Enable soft wrapping at the edge of the screen
set linebreak                 " Do not wrap in the middle of a word
set encoding=utf-8
set pumheight=10              " Reduce popup height
set fileencoding=utf-8
set ruler                     " Show the cursor position at all time
set cmdheight=2               " More space for displaying notifications
set iskeyword+=-              " Treat dash separated words as a word text object
set mouse=a                   " Enable mouse
set splitbelow splitright     " Horizontal splits open below; vertical splits open right
set t_Co=256                  " Support 256 colours
set conceallevel=0            " Show `` in markdown files
set smartindent               " Makes indenting smart
set autoindent                " Good auto indent
set laststatus=0              " Always display the status line
set number                    " Show line numbers
set cursorline                " Enable highlighting of the current line
set noshowmode                " Do not display things like -- INSERT -- (?)
set nobackup                  " Recomended by coc
set nowritebackup             " Recommended by coc
set updatetime=300            " Faster completion
set timeoutlen=500            " By default, timeoutlen is 1000ms
set formatoptions-=cro        " Stop newline continuation of new comments
set clipboard=unnamedplus     " Copy/paste between neovim and everything else
set showcmd                   " ???
set nrformats=                " Treat all numerals as decimal even if padded with zeros (zero padding typically denotes octal)

" Tabs
set tabstop=2 softtabstop=2  " Use 2 spaces for tabs
set shiftwidth=2              " Change the number of space characters inserted for indentation
set smarttab                  " Makes tabbing smarter; will realize you have 2 vs 4 (?)
set expandtab                 " Converts tabs to spaces
set showtabline=2             " Always show tabs (?)

" turn off mouse mode
set mouse=c
" turn on spell checking
set spell

" From his holiness, The Primagen
set scrolloff=8               " Start scrolling up or down when the cursor is 8 lines away from the top or bottom
set signcolumn=yes            " Add an extra column to the left of the line numbers; useful for showing git diffs, linter errors...
set colorcolumn=80            " Show a coloured line in the 80th column to highlight if a line is getting too long
au! BufWritePost $MYVIMRC source %    " Auto-source when writing to init.vim (or manually run source $MYVIMRC)

" Colours
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" Leader key config
let mapleader = ","   " Map leader key to ,

" Enable true colours in neovim?
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Enable 24-bit true colours
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NERD Commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" " Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" " Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" " Map ++ to call NERD Commenter and use iTerm key bindings
" " to bind Ctmd+/ to ++
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
