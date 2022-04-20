call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
call plug#end()

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start
autocmd VimEnter * silent !echo -ne "\e[2 q"

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

" auto compile + run
autocmd filetype cpp nnoremap <F11> :!g++ % -o %:r -lsfml-graphics -lsfml-window -lsfml-system && ./%:r<CR>
