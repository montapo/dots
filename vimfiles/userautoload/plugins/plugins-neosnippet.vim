augroup mySnipAutoCmd
  au!
  autocmd BufWritePost *.snip,*.snippets
    \ call neosnippet#variables#set_snippets({})
augroup END

" C-n/p: select
" C-k or <TAB> expand

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" 自作スニペット
let g:neosnippet#snippets_directory=$HOME.'/dots/vimfiles/snippets/my/'

" tex.snipだと*.latexしか対象にしてくれないので
let g:tex_flavor='latex'
