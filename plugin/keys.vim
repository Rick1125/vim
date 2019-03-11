"Set backspace
set backspace=indent,eol,start

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

" Fast saving
nmap <leader>w :w!<cr>

" cmap w!!... causes delays when typing 'w'in command mode, at least in terminal versions. There is a better scriptbit:
cmap w!! w !sudo tee % >/dev/null
"cnoreabbrev <expr> w!! ((getcmdtype() is# ':' && getcmdline() is# 'w!!')?('!sudo tee % >/dev/null'):('w!!'))

nmap <c-j> <c-W>j
nmap <c-k> <c-W>k
nmap <c-h> <c-W>h
nmap <c-l> <c-W>l

imap <c-h> <left>
imap <c-j> <down>
imap <c-l> <right>
imap <c-k> <up>

"remap escape key when insert mode
inoremap jk <esc>

" TagbarToggle
nnoremap <silent> tt :TagbarToggle<cr>

" Highlight search thing
nnoremap <silent> <leader>l :nohlsearch<cr>

"Tab configuration
map <silent> <leader>tn :tabnew<cr>
map <silent> <leader>tc :tabclose<cr>
map <silent> <leader>tm :tabmove
nmap <silent> <c-n> :tabnext<cr>
vmap <silent> <c-n> :tabnext<cr>

" Buffer Configuration
nmap <silent> <tab> :bnext!<cr>
vmap <silent> <tab> :bnext!<cr>
nmap <silent> <s-tab> :bprevious!<cr>
vmap <silent> <s-tab> :bprevious!<cr>
nmap <silent> <leader>x :bp <BAR> bd #<cr><cr>
vmap <silent> <leader>x :bp <BAR> bd #<cr><cr>

" Git Commands
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>

" cd current dir of file you're editing
nnoremap <silent> <leader>cd :cd %:p:h<CR>
"Super paste
"set pastetoggle
"inoremap <c-v> <esc>:set paste<cr>mui<c-r>+<esc>mv'uV'v=:set nopaste<cr>

" copy to clipboard
nnoremap <silent> <leader>y "+y

"code formatter
nnoremap <silent><leader>f :Autoformat<cr>
