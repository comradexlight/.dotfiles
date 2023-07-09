set mouse=a " enable mouse
set encoding=utf-8
set number " line numbers
set noswapfile " do not create swap files
set clipboard=unnamedplus
set smarttab
set autoindent
set fileformat=unix
set relativenumber
set colorcolumn=80

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype pascal setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

inoremap jk <esc> 
nnoremap <C-n> :NERDTreeToggle<CR>
" switching between buffers in circles
nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>

" plugins and colorschemes
call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'christoomey/vim-system-copy'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-commentary'

call plug#end()

" colorschemes
colorscheme gruvbox
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" emmet config
" redefine trigger key
let g:user_emmet_leader_key=','

