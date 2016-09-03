let g:go_bin_path = expand("~/.go/bin")

" mappings
augroup auGolang
    autocmd!

    " go run %
    au FileType go nmap <Space>r <Plug>(go-run)
    " go build %
    au FileType go nmap <Space>b <Plug>(go-build)
    " go install
    au FileType go nmap <Space>t <Plug>(go-test)
    au FileType go nmap <Space>c <Plug>(go-coverage)

    au FileType go nmap <Space>ds <Plug>(go-def-split)
    au FileType go nmap <Space>dv <Plug>(go-def-vertical)
    au FileType go nmap <Space>dt <Plug>(go-def-tab)

    au FileType go nmap <Space>gd <Plug>(go-doc)
    au FileType go nmap <Space>gv <Plug>(go-doc-vertical)

    au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
    au FileType go nmap <Leader>s <Plug>(go-implements)
    au FileType go nmap <Leader>i <Plug>(go-info)
    au FileType go nmap <Leader>e <Plug>(go-rename)

augroup END


let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

let g:go_fmt_fail_silently = 1

let g:go_fmt_autosave = 0
let g:go_play_open_browser = 0
