set exrc
"configura la tecla leader a barra espacidora
let mapleader=" " 
set number  "Muestra nro de linea
set relativenumber "muestra la posición relativa del cursor
set mouse=a "Interactuar con el mouse
set numberwidth=1 "ancho de los numeros
set clipboard=unnamed "muestra el clipboard
set showcmd "mostrar comandos que se ejecutan
set cc=80 
set ruler "muestra la posición del cursor
highlight CursorLine  ctermfg=White ctermbg=darkcyan
set cursorline "color de fondo para linea actual
set encoding=utf-8 "codificación de los archivos
set showmatch "muestra pares de parentesis
set sw=4 "indentar a 2 espacios
set tabstop=4
set autoindent
set expandtab
set smartindent
set laststatus=2 "muestra la barra de status
set noshowmode "no muestra el modo de insertar
set noswapfile
set backupdir=c:/vim/back   "Ubicación archivos respaldo
set dir=c:/vim/tmp/          "Ubicación archivos temporales
set undodir=c:/vim/undodir
set undofile
set incsearch
set hlsearch
set nocompatible
set scrolloff=8
set history=1500
set path +=.,,
set noerrorbells
set wildmenu
set wildmode=longest:full,full
set foldmethod=manual
set cmdheight=2
set signcolumn=yes
" Better display for messages
set cmdheight
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
set shortmess+=c
syntax enable "Resaltado de sintaxis
filetype plugin indent on " use the file type plugins
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType phtml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType js set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab
" recordar el lugar donde estaba editando el archivo al cerrrarlo
