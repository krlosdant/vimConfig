noremap <esc> :noh<return>
" Copia path+nombrearchivo al portapatales 
nnoremap <leader>fp :let @*=expand("%:p")<CR>
" mejorar scroll
nnoremap <M-S-j> 10<C-e>
nnoremap <M-S-k> 10<C-y>
" seleccionar todo el buffer
nnoremap <M-S-e> gg0<C-v>GG$
" Cierre de etiquetas html, xml
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"Nombre teclas especiales Alt es M, Shift es S y CTRL es C.
"AutoForamteado de código
nnoremap <M-S-f> gg=G``<CR>
" move line or visually selected block - alt+j/k
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv
" mueve la linea actual arriba o abajo en modo edición
" alt+d abajo alt+u arriba
"inoremap <M-Down> :m .+1<CR>==
"inoremap <M-Up> :m .-2<CR>==
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <M-Down> <Esc>:m .+1<CR>==gi
inoremap <M-Up> <Esc>:m .-2<CR>==gi
"Ajustar tamaño de ventanas
nnoremap <M-S-Up> <c-w>+
nnoremap <M-S-Down> <c-w>-
nnoremap <M-S-Left> <c-w><<c-w><<c-w><
nnoremap <M-S-Right> <c-w>><c-w>><c-w>>
"move split panes to left/bottom/top/right
nnoremap <M-h> <C-W>H
nnoremap <M-j> <C-W>J
nnoremap <M-k> <C-W>K
nnoremap <M-l> <C-W>L
" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" save file hola
nnoremap <leader>ww :w<CR>
" save and exit
nnoremap <leader>xx :x<CR>
" exit
nnoremap <leader>qq :q<CR>
" con esp + r activo la opcion de reemplazar lo que seleccione con *
nmap <Leader>r :%s///gc

" keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
nnoremap <leader>P :let @*=expand("%")<CR>

"undo break points
"inoremap , ,<c-g>u
"inoremap . .<c-g>u
"inoremap ! !<c-g>u
"inoremap ? ?<c-g>u

"Jumplist mutations
nnoremap <expr>k (v:count > 5 ? "m'" . v:count : "") .'k'
nnoremap <expr>j (v:count > 5 ? "m'" . v:count : "") .'j'
