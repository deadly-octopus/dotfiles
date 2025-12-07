:syntax enable
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set cursorline
":set termguicolors

:hi Normal guibg=NONE ctermbg=NONE
:hi EndOfBuffer guibg=NONE ctermbg=NONE

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'

call plug#end()
