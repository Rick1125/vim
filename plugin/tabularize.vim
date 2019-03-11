"Tabularize shortcut
if exists(':Tabularize')
  vnoremap <leader>a= :Tabularize /=<cr>
  vnoremap <leader>a: :Tabularize /:<cr>
  vnoremap <leader>a. :Tabularize /=><cr>
  vnoremap <leader>al :Tabularize /\|<cr>

  inoremap <silent> <Bar> <Bar><Esc>:call <SID>align()<CR>a

  function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
      let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
      let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
      Tabularize/|/l1
      normal! 0
      call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
  endfunction
endif
