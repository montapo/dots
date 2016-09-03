augroup myLaTeXQuickrun
    au!
    au FileType tex setlocal errorformat=%f:%l:\ %m
    au BufEnter *.tex nnoremap <Space>v :call <SID>TexPdfView() <CR>
"     au BufWritePost *.tex call quickrun#run()
augroup END

function! s:TexPdfView()
    let texPdfFilename = expand('%:r').'.pdf'

    let OSTYPE = system('uname')
    if OSTYPE == "Darwin\n"
"       let pdfViewCmd = 'open'
      let pdfViewCmd = '/Applications/Skim.app/Contents/SharedSupport/displayline'
    endif
    if OSTYPE == "Linux\n"
      let pdfViewCmd = 'xdg-open'
    endif

    let lineNumber = line('.')
    let g:TexPdfViewCommand = '!' . pdfViewCmd . ' -r ' . lineNumber . ' ' . texPdfFilename . ' %'
    echo g:TexPdfViewCommand

"     if has('win32')
"         let g:TexPdfViewCommand = '!start '.
"                     \             '"C:/Program Files (x86)/SumatraPDF/SumatraPDF.exe" -reuse-instance '.
"                     \             texPdfFilename
"     endif
    execute g:TexPdfViewCommand
endfunction


" fcitx setting
" 「日本語入力固定モード」の動作設定
" let IM_CtrlMode = 4
" " 「日本語入力固定モード」切替キー
" inoremap <silent> <C-j>=IMState('FixMode')<CR>
"
" " <ESC>押下後のIM切替開始までの反応が遅い場合はttimeoutlenを短く設定してみてください(ミリ秒)
" set timeout timeoutlen=3000 ttimeoutlen=100
"
" 今つかってないね
"     au BufEnter *.tex call <SID>SetLaTeXMainSource()
"     au BufEnter *.tex nnoremap <Leader>v :call <SID>TexPdfView() <CR>

" function! s:SetLaTeXMainSource()
"     let currentFileDirectory = expand('%:p:h').'\'
"     let latexmain = glob(currentFileDirectory.'*.latexmain')
"     let g:quickrun_config['tex']['srcfile'] = fnamemodify(latexmain, ':r')
"     if latexmain == ''
"         unlet g:quickrun_config['tex']['srcfile']
"     endif
" endfunction
