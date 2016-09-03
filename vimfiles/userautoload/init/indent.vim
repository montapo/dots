" 画面上のタブ幅
" set tabstop=4
" インデント時に自動的に挿入されるタブ
set shiftwidth=2
" タブキー押すと挿入される空白の量
set softtabstop=2
" タブをスペースに展開
set expandtab
" 改行コード自動認識
set fileformats=unix,mac,dos

augroup IndentGroup
  autocmd!
  au BufNewFile,BufRead *.wxm set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.m set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.vim set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.tex set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.html set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.tt set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.pm set nowrap softtabstop=4 shiftwidth=4
  au BufNewFile,BufRead *.pl set nowrap softtabstop=4 shiftwidth=4
  au BufNewFile,BufRead *.js set nowrap softtabstop=4 shiftwidth=4
  au BufNewFile,BufRead *.c set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.cpp set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.cc set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.h set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.css set nowrap softtabstop=4 shiftwidth=4
  au BufNewFile,BufRead *.tt set nowrap softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.less set nowrap softtabstop=4 shiftwidth=4
augroup END

"最後に改行つけない
set noeol
"文字コード
set fileencodings=utf-8,euc-jp

"スペースの駆逐
augroup EndSpaceGroup
  au!
  function! RTrim()
    let s:cursor = getpos(".")
    %s/\s\+$//e
    call setpos(".", s:cursor)
  endfunction
  autocmd BufWritePre * call RTrim()
  autocmd WinEnter * match WhitespaceEOL /\s\+$/
augroup END

" 行末のスペースをハイライト
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
