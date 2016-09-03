" Gstatus
" Gwrite : git add %
" Gcommit : gitcommit
" Gblame
"silent: controls output to cmd line
"used when exec cmd via key-mapping
nnoremap <silent> <Space>gb :Gblame<CR>
nnoremap <silent> <Space>gd :Gdiff<CR>
set diffopt+=vertical
nnoremap <silent> <Space>gs :Gstatus<CR>
" git add
nnoremap <silent> <Space>ga :Gwrite<CR>
nnoremap <silent> <Space>gc :Gcommit-v<CR>
