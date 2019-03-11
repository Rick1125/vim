set sessionoptions-=options
set sessionoptions-=help

let g:session_autoload = 'yes'
let g:session_autosave = 'no'
let g:session_autosave_periodic = '5m'

" Open Session mapping 
nnoremap <silent> <leader>o :OpenSession! default<cr>
