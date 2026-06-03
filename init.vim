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

let mapleader = " "
let g:airline_theme = 'night_owl'
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

" Nvim Tree key bindings
nnoremap <leader>e :NvimTreeToggle<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader><Left>  <C-w>h
nnoremap <leader><Right> <C-w>l
nnoremap <leader><Down>  <C-w>j
nnoremap <leader><Up>    <C-w>k

call plug#begin()
" Themes
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
Plug 'arcticicestudio/nord-vim'

" Not themes
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'deadly-octopus/nginx.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-commentary'

call plug#end()

" Lua section
lua << EOF

-- nightfox setup 
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

require('nvim-tree').setup{}

-- require('mason').setup{}

-- LSP setup
-- vim.lsp.config('gopls', {})
-- vim.lsp.enable('gopls')
-- vim.lsp.config('nginx_language_server', {}) 
-- vim.lsp.enable('nginx_language_server')

-- autocomplete setup
local cmp = require('cmp')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>']   = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>']    = cmp.mapping.confirm({ select = true }),
  }),
})

-- nvim-autopairs setup
require('nvim-autopairs').setup{}
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

EOF

colorscheme nightfox
highlight LineNr guibg=NONE ctermbg=NONE
