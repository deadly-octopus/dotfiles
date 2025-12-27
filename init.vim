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
:set background=dark

function! HalfPageToggle(dir)
  let delta = winheight(0) / 2

  if a:dir ==# 'down'
    if !exists('b:half_down') || b:half_down == 0
      let target = min([line('$'), line('.') + delta])
      call cursor(target, col('.'))
      let b:half_down = 1
    else
      execute 'normal! ' . delta . "\<C-e>"
      let b:half_down = 0
    endif

  else
    if !exists('b:half_up') || b:half_up == 0
      let target = max([1, line('.') - delta])
      call cursor(target, col('.'))
      let b:half_up = 1
    else
      execute 'normal! ' . delta . "\<C-y>"
      let b:half_up = 0
    endif
  endif
endfunction

nnoremap <silent> <C-d> :call HalfPageToggle('down')<CR>
nnoremap <silent> <C-u> :call HalfPageToggle('up')<CR>

":hi Normal guibg=NONE ctermbg=NONE
":hi EndOfBuffer guibg=NONE ctermbg=NONE

let g:airline_theme = 'dark_minimal'
let g:airline_section_z = 'lines:%L'
let g:airline_section_warning = ''
let g:airline_section_error = ''

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

call plug#end()

colorscheme PaperColor
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }


