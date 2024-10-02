" --- GENERAL ---

set termguicolors


" --- ONEDARK ---

let g:onedark_color_overrides = {
\ "background": {"gui": "NONE", "cterm": "235", "cterm16": "0" }
\}

let g:onedark_terminal_italics = 1


" --- JELLYBEANS ---

" let g:jellybeans_overrides = {
" \    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
" \}
" if has('termguicolors') && &termguicolors
"     let g:jellybeans_overrides['background']['guibg'] = 'none'
" endif

" let g:jellybeans_use_term_italics = 1


" --- GRUVBOX ---

" let g:gruvbox_italic=1
" set background=dark
" hi Normal guibg=NONE ctermbg=NONE
" hi SignColumn guibg=NONE ctermbg=NONE


" --- COLORSCHEME ---

colorscheme onedark
