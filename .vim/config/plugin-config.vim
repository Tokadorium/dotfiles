" --- NERDTREE ---

let NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1
set wildignore+=*.DS_Store,*.min.*
" autocmd BufWinEnter * silent NERDTreeMirror


" --- ALE ---

let g:ale_disable_lsp = 1
let g:ale_linters = {'cpp': ['clang', 'gcc', 'g++']}


" --- COC ---

set shortmess+=c


" --- AIRLINE ---

" Automatically displays all buffers when there's only one tab open
" let g:airline#extensions#tabline#enabled=1

" Statusline segments configuration
let g:airline_section_z=airline#section#create(['%p%%'])
let g:airline#extensions#whitespace#checks = []

" ALE integration
let g:airline#extensions#ale#enabled=1
