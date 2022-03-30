" === [  Archivo de configuración de plugins]=== 
" === Lightline options ===
set laststatus=2
set noshowmode " turn off extra -- INSERT --

" Change colors to be darker for status bar and tab bar
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

let g:lightline.component_expand = {
      \  'buffers': 'lightline#bufferline#buffers',
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'buffers': 'tabsel',
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

" === Lightline-bufferline options ===
set showtabline=2
let g:lightline#bufferline#filename_modifier = ':t' " only filename, no path
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#unicode_symbols = 0
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#min_buffer_count = 2
let g:lightline.tabline = {'left': [['buffers']], 'right': [['close']]}

" ---Configuraciones NertTree ---
let NERDTreeQuitOnOpen=1 "cierra nertdtree al elegir un archivo
"autocmd VimEnter * NERDTree " abrir NertTree al iniciar vim
nmap <Leader>nt :NERDTree<CR>
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" sync open file with NERDTree
" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
"
"" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
"" file, and we're not in vimdiff
"function! SyncTree()
"  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"    NERDTreeFind
"    wincmd p
"  endif
"endfunction
" Highlight currently open buffer in NERDTree
"autocmd BufEnter * call SyncTree()

" activa easymotion con space + s
nmap <Leader>s <Plug>(easymotion-s2)
nmap <M-S>f gg=G``<CR>
autocmd BufEnter * lcd %:p:h
"------ devicons ------ loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_startify = 1
"----Cambiar tipografia ----
"set guifont=mononoki_Nerd_Font:h12

"-----Configuracions para FZF------
" This is the default extra key bindings
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '/vim/fzf-history'

nnoremap <leader>ff :Files<CR>
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bl :BLines<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>tt :Tags<CR>
nnoremap <leader>mm :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden --follow" 
let g:rg_derive_root='true'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
      \ { 'fg':      ['fg', 'normal','#d0d0d0'],
      \ 'bg':      ['bg', 'normal','#282828'],
      \ 'hl':      ['fg', 'Comment','#5187af'],
      \ 'fg+':     ['fg', 'CursorLine', '#d0d0d0'],
      \ 'bg+':     ['bg', 'CursorLine', '#0d606b'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
      \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

"command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
command! -bang ProjectFiles call fzf#vim#files('~/projects', <bang>0)
" Git grep
command! -bang -nargs=* GGrep
      \ call fzf#vim#grep(
      \   'git grep --line-number '.shellescape(<q-args>), 0,
      \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
"......Fin FZF.........
"----Configuración de xdebug
"let g:vdebug_options = {'ide_key': 'netbeans-xdebug'}
let g:vdebug_options = {'break_on_open': 0}
"let g:vdebug_options = {'server': 'minka.local'}
let g:vdebug_options = {'port': '9003'}
let g:editorconfig_verbose = 0 " 0 by default
let g:EditorConfig_exec_path = 'c:\www'
let g:EditorConfig_core_mode = 'external_command'
"-----Tagbar----
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nmap <F8> :TagbarToggle<CR>

"Configuracion PhpActor
map <C-b> :PhpactorGotoDefinition<CR>
map <F2> :PhpactorFindReferences<CR>
map <F3> :PhpactorImportClass<CR>

"----------Emmet Config-----------
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=','
"----------Pomodoro Config -------------
map <leader>po :PomodoroStar<CR>
map <leader>pf :PomodoroStop<CR>
map <leader>ps :PomodoroStatus<CR>
if !exists('g:lightline')
  let g:lightline = {}
endif
if !exists('g:lightline.component')
  let g:lightline.component = {}
endif
if !exists('g:lightline.component_visible_condition')
  let g:lightline.component_visible_condition = {}
endif
"let g:lightline.active.left[1] += [ 'pomodoro' ]
let g:lightline.component["pomodoro"] = '%{pomo#status_bar()}'
let g:lightline.component_visible_condition["pomodoro"] = '(!empty(pomo#status_bar()))'
