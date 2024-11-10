" --- VIM ---

" nnoremap <C-h> :tabprevious<CR>
" nnoremap <C-l> :tabnext<CR>

nnoremap <C-w>% <C-w><C-v>
nnoremap <C-w>" <C-w><C-s>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

inoremap jj <Esc>


" --- NERDTREE ---

nnoremap <F8> :NERDTreeToggle<CR>


" --- TAGBAR ---

" nmap <F9> :TagbarToggle<CR>


" --- COC ---

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
