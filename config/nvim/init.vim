""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SECTION
" Use :PlugInstall to install plugins
" Use :PlugClean to purge plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin("~/.config/nvim/plugged")
  " Start with sensible vim settings
  "Plug 'tpope/vim-sensible'

  " Add nerdtree file browser and some accessories
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  "Plug 'Xuyuanp/nerdtree-git-plugin' 

  " Add icons to plugins (e.g. NERDTree)
  " NOTE: set your terminal font to a Nerd Font (i.e. Meslo) ~OR~ install Nerd Fonts (ryanoasis/nerd-fonts) first
  Plug 'ryanoasis/vim-devicons'

  " Easily delete, change and add such surroundings in pairs
  Plug 'tpope/vim-surround'

  " Comment stuff out. 
  Plug 'tpope/vim-commentary'

  " Lean & mean status/tabline for vim that's light as air.
  Plug 'vim-airline/vim-airline'

  " fzf (fuzzyfinder) and rg (ripgrep) for searching files
  " Source: https://dev.to/hayden/optimizing-your-workflow-with-fzf-ripgrep-2eai
  Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Comment Frames: for making cool looking frames around comments, good for
  " headers
  Plug 'cometsong/CommentFrame.vim'

  " Add numbers to tabline
  Plug 'webdevel/tabulous'

  Plug 'airblade/vim-gitgutter'
  " The premier Vim plugin for Git.
  "Plug 'tpope/vim-fugitive'

  " nvim-cmp for autocomplete
"  Plug 'hrsh7th/cmp-nvim-lsp'
"  Plug 'hrsh7th/cmp-buffer'
"  Plug 'hrsh7th/cmp-path'
"  Plug 'hrsh7th/cmp-cmdline'
"  Plug 'hrsh7th/nvim-cmp'
"  
"  " For vsnip users.
"  Plug 'hrsh7th/cmp-vsnip'
"  Plug 'hrsh7th/vim-vsnip'

  " LSP support
  "Plug 'neovim/nvim-lspconfig'
  " Code linting
  Plug 'dense-analysis/ale'
  " CoC for code completion
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " A language pack for Vim that provides syntax highlighting and indentation for lots and lots of programming languages
  Plug 'sheerun/vim-polyglot'

  " Javascript
  Plug 'pangloss/vim-javascript'

  " Ruby/Rails
  Plug 'tpope/vim-rails'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-endwise'

  "Plug 'preservim/nerdcommenter'

  " A very fast, multi-syntax context-sensitive color name highlighter
  "Plug 'ap/vim-css-color'

  " Rainbow Parentheses Improved for easier differentiation of nested parentheses
  "Plug 'luochen1990/rainbow'

  " Autoformat to clean up code
  "Plug 'Chiel92/vim-autoformat'

  " Color schemes
  Plug 'morhetz/gruvbox'
  Plug 'sonph/onehalf', { 'rtp': 'vim' } 
  Plug 'dracula/vim'
call plug#end()

" Include additional configuration in external files
source $HOME/.config/nvim/settings.vim
"source $HOME/.config/nvim/linterstatus.vim
" source $HOME/.config/nvim/coc.vim
" source $HOME/.config/nvim/cmp.vim
" Put our custom mappings last to override whatever mappings are set above
source $HOME/.config/nvim/mappings.vim
