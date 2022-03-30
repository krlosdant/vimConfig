call plug#begin('~/.vim/plugged')
" Temas
Plug 'morhetz/gruvbox'
" Plugins
"  IDE
"easy motion plugin para llevarnos a distintas parates del archivo
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree' "Arbol de directorios en el lado izquiero
Plug 'christoomey/vim-tmux-navigator' "navegador entre archivos abiertos
Plug 'tricktux/pomodoro.vim' "sistema pomodoro de desarrollo
Plug 'bling/vim-bufferline'
Plug 'itchyny/lightline.vim' "Barra de estado
Plug 'mengelbrecht/lightline-bufferline'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'ryanoasis/vim-devicons' "Iconos
"Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot' "resaltador de sintaxis o autocompletado de codigo ver bien
"Plug 'StanAngeloff/php.vim' "este va junto al anterior
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntaxPlug 'prettier/vim-prettier'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'airblade/vim-rooter' "Cambia el directorio de trabajo" 
Plug 'joonty/vdebug'  "xdebug
Plug 'mattn/emmet-vim'
Plug 'universal-ctags/ctags'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'yegappan/mru'
Plug 'preservim/nerdcommenter'
Plug 'sgur/vim-editorconfig'
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'
Plug 'alvan/vim-closetag' " cierre atomatico de tags
Plug 'Yggdroot/indentLine'
Plug 'adoy/vim-php-refactoring-toolbox'
"Plug 'lambdalisue/fern.vim'
"Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()
