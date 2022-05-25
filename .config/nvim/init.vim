call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
call plug#end()

" change cursor depending on mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start
autocmd VimEnter * silent !echo -ne "\e[2 q"

" vimtex setings
let g:tex_flavor='latex'
let g:vimtex_view_method='firefox'
let g:vimtex_quickfix_mode=0
" enable concealment
let g:tex_conceal='abdmg'
set conceallevel=1

" color scheme
colorscheme gruvbox
highlight Normal ctermbg=None

" hybrid line numbers
set nu rnu

" tab settings
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" disable auto comment insertion on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
