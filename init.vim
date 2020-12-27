call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'psliwka/vim-smoothie'
Plug 'https://github.com/posva/vim-vue'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

colorscheme gruvbox
set noswapfile
set number
set relativenumber
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
map <C-p> :GFiles <return>
map <leader><C-P> :Files <return>
map ,<space> :CocCommand eslint.executeAutofix <return>
map ,d "md
map <leader>c "+y
map <leader>y "+y
map <leader>p "+gp

" coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
 inoremap <silent><expr> <c-@> coc#refresh()
endif
    
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }
    
