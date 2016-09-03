" Leader-r は没
map <Space>r <Plug>(quickrun)

" initialize quickrun-config
if !has("g:quickrun_config")
  let g:quickrun_config = {}
endif

" 同期的に実行するのでvimが固まって危ない
" vimprocを使用して非同期実行する
"http://d.hatena.ne.jp/thinca/20100212/1265948643
let g:quickrun_config = {
  \ 'cpp' : { 'command' : 'clang++',  'cmdopt' : '-std=c++11 -Wall -Wextra' },
  \ "_"   : { "runner"  : "vimproc"},
  \ }

let g:quickrun_config['tex'] = {
  \   'outputter' : "multi:buffer:quickfix",
  \   'command' : 'latexmk',
  \   'outputter/buffer/split' : ':botright 4sp',
  \   'cmdopt': '-pdfdvi',
  \   "runner/vimproc/updatetime" : 40,
  \   'exec': ['%c %o %s']
  \ }

let g:quickrun_config['rb'] = {
  \   'outputter' : "quickfix"
  \}

"   \   'runner' : 'vimproc',
"   \   'outputter' : 'error',
"   \   'outputter/quickfix/errorformat' : texerrorformat,
"   \   'outputter/error/success' : 'buffer',
"   \   'outputter/error/error' : 'quickfix',
