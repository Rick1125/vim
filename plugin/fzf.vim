if has("gui_running")
    nnoremap <silent> <c-p> :CommandTSearch<cr>
else
    function! s:buflist()
      redir => ls
      silent ls
      redir END
      return split(ls, '\n')
    endfunction

    function! s:bufopen(e)
      execute 'buffer' matchstr(a:e, '^[ 0-9]*')
    endfunction

    nnoremap <silent> <c-p> :FZF<cr>
    nnoremap <silent> <Leader>b :call fzf#run({
        \   'source':  reverse(<sid>buflist()),
        \   'sink':    function('<sid>bufopen'),
        \   'options': '+m',
        \   'down':    len(<sid>buflist()) + 2
        \ })<cr>

    nnoremap <silent> <leader>j :call fzf#run({
        \  'source':  v:oldfiles,
        \  'sink':    'e',
        \  'options': '-m -x +s',
        \  'down':    '30%'
        \})<cr>
endif
