" augroup - goruping autocommands
" autocommandは :autocmd が実行された回数だけ定義されるので、一旦削除して
" 再定義しないと同じautocommand が無限に登録されてひどくなる
" WakameGroup に属するautocmdはvimrcをloadする毎に一旦削除

augroup CheckSpelling
  autocmd!
  " スペルチェック
  autocmd FileType tex setlocal spell
  autocmd BufEnter *.tex setlocal spell
  " 日本語除外
"   autocmd FileType tex set spelllang+=cjk
augroup END


augroup MyAutoCmdGroup
  autocmd!
  " QuickFix
  " make, grepした時に自動でquickfix開く
  autocmd QuickfixCmdPost make,vimgrep copen
  " helpとかはqでバッファ閉じる
  autocmd FileType help,quickfix,quickrun,gf nnoremap <buffer> q <C-w>c
"   autocmd MyAutoCmdGroup BufWrite *.vim :source ~/.vimrc
augroup END

" K command group
"
augroup setKpHelp
  autocmd!
  autocmd FileType vim setlocal keywordprg=:help
"   autocmd BufNewFile,BufRead *.m setlocal keywordprg=less
augroup END

augroup vimrcAutoUpdate
  autocmd!
  autocmd BufWritePost ~/dots/vimfiles/userautoload/*.vim  source ~/.vimrc
augroup END

augroup swift
  autocmd!
  autocmd BufRead,BufNewFile *.swift set filetype=swift
augroup END

augroup fsharp
  autocmd!
  autocmd BufRead,BufNewFile *.fs set filetype=fsharp
augroup END

" ref.vim
nnoremap <Space>g :<C-u>Ref alc<Space><C-R><C-W><CR><CR>
let g:ref_alc_start_linenumber = 39 " 表示する行数
let g:ref_alc_encoding = 'UTF-8' " 文字化けするならここで文字コードを指定してみる
