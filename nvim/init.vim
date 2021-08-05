
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


"autocomplete with C-SPACE
"inoremap <silent><expr> <c-space> coc#refresh()


"goto code
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)


"TODO: COLORIZE COLOR CODES

" Plugins{{{
"INSTALL - :PlugUpdate
"CLEAN - :PlugClean

filetype plugin indent off
filetype off
syntax off
call plug#begin('~/.vim/plugged')


                                      " *** File tree ***
Plug 'preservim/nerdtree'             " file tree
Plug 'ryanoasis/vim-devicons'         " file tree icons
Plug 'Xuyuanp/nerdtree-git-plugin'    " git status

                                      " *** Status line ***
Plug 'vim-airline/vim-airline'        " Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline-themes' " Fonts for airline

                                      " *** Other ***
Plug 'tpope/vim-commentary'           " comment with gc
Plug 'junegunn/vim-easy-align'        " align columns

                                      " *** Syntax ***
Plug 'blankname/vim-fish'             " fish syntax

"Plugin 'majutsushi/tagbar'                      " Class/module browser
"Plugin 'kien/ctrlp.vim'                         " Fast transitions on project files

"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " syntax
"Plug 'tikhomirov/vim-glsl'
"Plug 'calviken/vim-gdscript3'                   " GDScript syntax
"Plug 'kevinoid/vim-jsonc'                       " JSON syntax highlighting
"Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete
call plug#end()
filetype plugin indent on
filetype on
syntax on

" }}}

" Powerline {{{
let g:airline_powerline_fonts = 1 " Unicode symbols and stuff

" }}}

" Align {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

"cginc syntax
"autocmd BufNewFile,BufRead *.cginc set syntax=c

" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction

"inoremap <silent><expr> <Tab>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<Tab>" :
"      \ coc#refresh()

" use <c-space>for trigger completion
"inoremap <silent><expr> <c-space> coc#refresh()

"Use <Tab> and <S-Tab> to navigate the completion list:
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

