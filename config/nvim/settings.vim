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
"" fuzzyfinder
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=/opt/homebrew/opt/fzf:w
" " Supposedly fixes some problem: https://github.com/junegunn/fzf.vim/issues/456
set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Rg ripgrep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ripgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow
let g:rg_derive_root='true'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ALE (Asynchronous Lint Engine)
""
"" :ALEFix                to fix current file
"" :ALEGoToDefinition     jump to definition under cursor
"" :ALEFindReferences     jump to reference under cursor
"" :ALEHover              display brief information about symbols under cursor
"" :ALERename             rename symbols (e.g. variables or class names)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
  \   'ruby': ['rubocop'],
  \   'eruby': ['erb'],
\}
" \   'ruby': ['rubocop', 'solargraph', 'reek', 'rails_best_practices', 'debride', 'brakeman'],

let g:ale_fixers = {
 \ '*': ['remove_trailing_lines', 'trim_whitespace'],
 \ 'css': ['prettier'],
 \ 'javascript': ['prettier', 'eslint'],
 \ 'ruby': ['rubocop'],
 \ }

" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" Automatically fix files on save
let g:ale_fix_on_save = 0

" Rainbow Parentheses Improved
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 1 
let g:NERDTreeMinimalUI = 1 " hide helper
let g:NERDTreeIgnore = ['^node_modules$'] " ignore node_modules to increase load speed 
let g:NERDTreeStatusline = '' " set to empty to use lightline
" " Close window if NERDTree is the last one
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" " Map to open current file in NERDTree and set size
nnoremap <leader>pv :NERDTreeFind<bar> :vertical resize 45<CR>

" NERDTree Syntax Highlight
" " Enables folder icon highlighting using exact match
let g:NERDTreeHighlightFolders = 1 
" " Highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1 
" " Color customization
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
" " This line is needed to avoid error
let g:NERDTreeExtensionHighlightColor = {} 
" " Sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['css'] = s:blue 
" " This line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor = {} 
" " Sets the color for .gitignore files
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange 
" " This line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {} 
" " Sets the color for files ending with _spec.rb
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red 
" " Sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFolderSymbolColor = s:beige 
" " Sets the color for files that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue 

" NERDTree Git Plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

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
