:syntax enable

:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set cursorline
:set termguicolors
:set encoding=utf-8
:set ignorecase
:set wildmenu
:set wildmode=longest:full,full

:hi Normal guibg=NONE ctermbg=NONE
:hi EndOfBuffer guibg=NONE ctermbg=NONE

let g:airline_theme = 'term'
let g:airline_section_z = 'lines:%L'
let g:airline_section_warning = ''
let g:airline_section_error = ''

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'

call plug#end()
