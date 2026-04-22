:syntax enable
:set number
:set laststatus=2
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set termguicolors
:set encoding=utf-8
:set ignorecase
:set wildmenu
:set wildmode=longest:full,full
:set clipboard=unnamedplus
:set background=dark

let g:airline_theme = 'dark_minimal'
let g:airline_section_z = 'lines:%L'
let g:airline_section_warning = ''
let g:airline_section_error = ''
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'override' : {
  \         'color00' : ['#101220']
  \       }
  \     }
  \   }
  \ }

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'projekt0n/github-nvim-theme'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'deadly-octopus/nginx.vim'

call plug#end()

lua << EOF
require('nightfox').setup({
  options = {
    transparent = true,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    },
  },
})
EOF

colorscheme nightfox
highlight LineNr guibg=NONE ctermbg=NONE
