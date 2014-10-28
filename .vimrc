" always show status bar
set laststatus=2
" tabstop
set tabstop=4
" unify indent
set softtabstop=4
set shiftwidth=4
set expandtab
" end line whitespace alert
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
" end line $
"set list
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" highlight string
set hls
