call plug#begin('~/.config/nvim/plugged')
Plug 'liuchengxu/space-vim-dark'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'machakann/vim-highlightedyank'
call plug#end()

colorscheme space-vim-dark

"""Airline
let g:airline_theme = 'violet'
let g:airline#extensions#tabline#enabled = 1

let g:space_vim_dark_background = 234
color space-vim-dark
set termguicolors
let g:deoplete#enable_at_startup = 1
hi HighlightedyankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 2000

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
filetype plugin on

set wildmode=list:longest " Setup Tab completion to work like in a shell
""" Search
set ignorecase   " case-insensitive search
set smartcase
" but case-sensitive if expression contains a capital letter
""" Buffers
set hidden       " Handle multiple buffers better
" You can abandon a buffer with unsaved changes without a warning
"""Editor
set scrolloff=3  " show 3 lines of context around cursor
set list         " show invisible characters
""" Global Tabs and Spaces configurations
set expandtab    " use spaces instead of tabs
set tabstop=4    " global tab width
set shiftwidth=4 " spaces to use when indenting
syntax on
set number
