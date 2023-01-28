set laststatus=2
set noshowmode
set tabstop=3

set t_Co=256

" enable use of mouse within vim
set mouse=n
nnoremap <RightMouse> v<CR>

" linenumbering on and colored
set number
highlight linenr cterm=NONE ctermfg=darkgrey ctermbg=black guibg=NONE guifg=NONE
" colors for selected text
highlight visual cterm=bold ctermfg=black ctermbg=brown guibg=NONE guifg=NONE

set cursorline
highlight cursorline cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight cursorlineNr cterm=NONE ctermbg=black ctermfg=lightblue guibg=NONE guifg=NONE
highlight search cterm=NONE ctermbg=blue 

" Airline customization
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled=1


"highligh search enabled by default
set hlsearch
"now you can toggle it
nnoremap <S-F11> <ESC>:set hls! hls?<cr>
inoremap <S-F11> <C-o>:set hls! hls?<cr>
vnoremap <S-F11> <ESC>:set hls! hls?<cr> <bar> gv

" select word by clicking on it
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>

"buffers and control
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

let g:airline#extensions#tabline#enabled = 1

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" lightline status bar
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', { 'as': 'dracula' }

" Initialize plugin system
call plug#end()

colorscheme dracula
