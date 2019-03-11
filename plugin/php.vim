let g:phpcomplete_index_composer_command = 'composer'
let g:phpcomplete_extended_tags_cache_dir = '~/.phpcomplete_extended'

function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

let g:php_cs_fixer_level = "symfony"
let g:syntastic_php_checkers = ['php', 'phpmd', 'phpcs']
"nnoremap <silent><leader>f :call PhpCsFixerFixFile()<CR>
