call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme nord

""""Airline
let g:airline_theme = 'nord'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let NERDDefaultAlign="left"
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
" Turn on syntax highlighting
syntax on
" Enable line numbers
set number
" Custom shortcuts
" NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>
map <C-f> :Files<CR>
" Quit vim if nerd tree is the only tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fix j,k keys when lines are wrapped
nnoremap j gj
nnoremap k gk

set clipboard+=unnamedplus
