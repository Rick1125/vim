" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"set completeopt=longest,menu

" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项

" Expand snippet or return
" let g:ulti_expand_res = 1
" function! Ulti_ExpandOrEnter()
" 	call UltiSnips#ExpandSnippet()
" 	if g:ulti_expand_res
" 		return ''
" 	else
" 		return "\<return>"
" endfunction

" Set <space> as primary trigger
" inoremap <return> <c-r>=Ulti_ExpandOrEnter()<cr>
"
" 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion=2
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ycm_confirm_extra_conf=0
