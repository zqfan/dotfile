" always show status bar
set laststatus=2
" don't know why the previous setting not show column number, here we need this
set statusline+=%F\ %l\:%c
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
" show line num, disable it because paste will paste line number too
" set nu
"
set autoindent
" avoid code copy & paste issue
set paste
" remeber last edit position
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif
