set timeoutlen=500

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
\| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

let g:which_key_use_floating_win = 0

let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
let g:which_key_map = {}

let g:which_key_map['q'] = [ 'q'                                  , 'quit' ]

" hide 1-9
let g:which_key_map.1 = 'which_key_ignore'
let g:which_key_map.2 = 'which_key_ignore'
let g:which_key_map.3 = 'which_key_ignore'
let g:which_key_map.4 = 'which_key_ignore'
let g:which_key_map.5 = 'which_key_ignore'
let g:which_key_map.6 = 'which_key_ignore'
let g:which_key_map.7 = 'which_key_ignore'
let g:which_key_map.8 = 'which_key_ignore'
let g:which_key_map.9 = 'which_key_ignore'

" undo tree
let g:which_key_map.r = [':UndotreeToggle', 'Undotree']
let g:which_key_map.e = [':NERDTreeToggle', 'Nerdtree']

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add %'                        , 'add current'],
      \ 'A' : [':Git add -A'                        , 'add all'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gvdiffsplit'                       , 'diff split'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 's' : [':Gstatus'                      , 'status'],
      \ 'S' : [':Git status'                      , 'status'],
      \ }

" vim toggle
let g:which_key_map.v = {
      \ 'name' : '+Vim toggle' ,
      \ 'j' : [':call ToggleGj()', 'toggle gj'],
      \ 'v' : [':tabnew ' . $HOME . '/.dotfiles/.vim/vimrc | :cd ' . $HOME . '/.dotfiles/.vim', 'open vimrc'],
      \ 's' : [':source ' .  $MYVIMRC, 'apply vimrc'],
      \ 'n' : [':set invnumber', 'toggle number'],
      \ 'w' : [':set wrap!', 'toggle wrap'],
      \ }

let g:which_key_map.c = {
      \ 'name' : '+Code' ,
      \ 'a' : [':SnakeToCamelAll!', 'Snake to Camel'],
      \ 'b' : [':CamelToSnakeAll!', 'Camel to Snake'],
      \ }

" +tab or terminal
let g:which_key_map.t = {
      \ 'name' : '+tab/terminal' ,
      \ 't' : [':ToggleTerminal', 'Open terminal'],
      \ 'n' : [':tabnew', 'New tab'],
      \ }


let g:which_key_map.f = {
      \ 'name' : '+Leaderf/Files' ,
      \ 'f' : [':Leaderf file', 'file'],
      \ 'F' : ['<c-w>f', 'open-cursor-file'],
      \ 'b' : [':Leaderf buffer', 'buffer'],
      \ 'm' : [':Leaderf mru', 'mru'],
      \ 'l' : [':Leaderf line', 'line'],
      \ 'n' : [':Leaderf filetype', 'filetype'],
      \ }

let g:which_key_map.f.C = {
      \ 'name' : '+Files/convert' ,
      \ 'u' : [':set ff=unix', '2unix'],
      \ 'd' : [':set ff=dos', '2dos'],
      \ }

call which_key#register(',', "g:which_key_map")
