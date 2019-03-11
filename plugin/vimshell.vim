"vimshell
nmap <leader><c-d> :rightbelow new \| VimShell<cr>
inoremap <c-o> exit

"let g:loaded_vimshell=1
if has("gui_running")
  let g:vimshell_editor_command="/usr/local/bin/vim"
endif
