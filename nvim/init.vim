
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

"INSTALL - :PlugUpdate
"CLEAN - :PlugClean
call plug#begin('~/.vim/plugged')


" Code and project naviagtion {{{

Plug 'preservim/nerdtree' 					" file tree
Plug 'ryanoasis/vim-devicons' 				" file tree icons
"Plugin 'majutsushi/tagbar'                  " Class/module browser
"Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files

" }}}


"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
"Plug 'Xuyuanp/nerdtree-git-plugin' " git status
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " syntax
"Plug 'tikhomirov/vim-glsl'
"Plug 'calviken/vim-gdscript3' " GDScript syntax
"Plug 'kevinoid/vim-jsonc' " JSON syntax highlighting
"Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete
Plug 'bling/vim-airline'                  " Lean & mean status/tabline for vim
call plug#end()

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

