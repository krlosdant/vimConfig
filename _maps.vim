"copiar nombre y path del archivo actual
nnoremap <leader>kp :let @*=expand("%")<CR>
" mejorar scroll
nnoremap <M-S-j> 10<C-e>
nnoremap <M-S-k> 10<C-y>
" Cierre de etiquetas html, xml
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"Nombre teclas especiales Alt es M, Shift es S y CTRL es C.
"AutoForamteado de código
nnoremap <M-S-f> gg=G``<CR>
" move line or visually selected block - alt+j/k
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv
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
"nnoremap n nzzzv
"nnoremap N Nzzzv
nnoremap J mzJ`znnoremap <leader>P :let @*=expand("%")<CR>
