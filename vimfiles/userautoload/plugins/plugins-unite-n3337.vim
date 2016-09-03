let g:unite_n3337_pdf=$HOME."/dots/documents/n3337.pdf"

augroup UniteN3337
    autocmd!
"     autocmd FileType cpp nnoremap <buffer><Space>n
    autocmd FileType cpp nnoremap ,n
                \ :<C-u>Unite -auto-preview n3337<CR>
augroup END
