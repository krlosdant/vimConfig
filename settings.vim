let mapleader=" " "configura la tecla leader a barra espacidoruu
set number  "Muestra nro de linea
set mouse=a "Interactuar con el mouse
set numberwidth=1 "ancho de los numeros
set clipboard=unnamed "muestra el clipboard
syntax enable "Resaltado de sintaxis
set showcmd "mostrar comandos que se ejecutan
set cc=80
set ruler "muestra la posición del cursor
set encoding=utf-8 "codificación de los archivos
set showmatch "muestra pares de parentesis
set sw=2 "indentar a 2 espacios
set tabstop=2
set relativenumber "muestra la posición relativa del cursor
set laststatus=2 "muestra la barra de status
set noshowmode "no muestra el modo de insertar
set cursorline "color de fondo para linea actual
set backupdir=c:/vim/back   "Ubicación archivos respaldo
set dir=c:/vim/tmp/          "Ubicación archivos temporales
set undodir=c:/vim/undodir
set incsearch
set hlsearch
set nocompatible
set history=500
filetype plugin indent on " use the file type plugins
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set path +=.,,
set wildmenu
set wildmode=longest:full,full
set foldmethod=manual
set updatetime=50
set splitbelow
set splitright
autocmd FileType php set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType html set omnifunc=htmlcomplete#CompleteTagsautocmd FileType phtml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType phtml set omnifunc=htmlcomplete#CompleteTagsautocmd FileType phtml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType js set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType js set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab

