" =================================================================
" +
" +   BIND FILETYPE
" +
" =================================================================
" working directory is always the same as the file you are editing
" autocmd BufEnter * silent! lcd %:p:h

"autocmd BufNewFile,BufRead *.todo so ~/.vim/syntax/amido.vim
autocmd BufRead,BufNew *.vim map <buffer> <leader><space> :w!<cr>:source %<cr>
autocmd BufRead,BufNew .vimrc map <buffer> <leader><space> :w!<cr>:source %<cr>

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

autocmd! BufRead,BufNewFile *.json set filetype=json
augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=4
    autocmd FileType json set softtabstop=4 tabstop=4
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END

" Emmit only for html,css,twig
let g:user_emmet_install_global = 0
autocmd FileType html,css,twig EmmetInstall

autocmd FileType javascript noremap <buffer> <leader>f :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <leader>f :call JsonBeautify()<cr>
" " for jsx
autocmd FileType jsx noremap <buffer> <leader>f :call JsxBeautify()<cr>
" " for html
autocmd FileType html,twig noremap <buffer> <leader>f :call HtmlBeautify()<cr>
" " for css or scss
autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>"
autocmd FileType php noremap <buffer> <leader>f :call PhpCsFixerFixFile()<cr>"
