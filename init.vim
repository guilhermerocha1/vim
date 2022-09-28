set number
set cursorline
set mouse=a

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'gko/vim-coloresque'
  Plug 'ryanoasis/vim-devicons'
  Plug 'cohama/lexima.vim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'preservim/nerdcommenter'
  Plug 'mattn/emmet-vim'
  Plug 'dense-analysis/ale'
  Plug 'morhetz/gruvbox'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'arzg/vim-substrata'
call plug#end()

" Configurações do CoC.nvim

inoremap <silent><expr> <cr>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd FileType scss setl iskeyword+=@-@

" Fim das configurações do CoC.nvim

" Configurações do lexima.vim
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'
" Fim das configurações do lexima.vim

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1

let NERDTreeShowHidden=1
nnoremap <C-n> :NERDTreeToggle<CR>

filetype plugin on
let g:NERDSpaceDelims = 'left'
let g:NERDSpaceDelims = 1
map cc <Plug>NERDCommenterInvert

nnoremap <C-s> :w!<CR>
nnoremap <C-q> :qa<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-i> mzgg=G`z
nnoremap <C-x> :q<CR>
nnoremap <silent> <a-j> :m +1<CR>
nnoremap <silent> <a-k> :m -2<CR>
imap jj <ESC>
imap <C-c> "+y
nnoremap <C-p> :bdelete<CR>

set background=dark
" colorscheme tokyonight
" colorscheme gruvbox
colorscheme substrata
