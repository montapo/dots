"http://cohama.hateblo.jp/entry/2013/08/11/020849

colorscheme desert
syntax on

if !has("gui_running")
  " CUIのvimでの補完リストの色を調節する
  highlight Pmenu ctermbg=8
endif

" 補完リストの色, カラースキーム変えて死んだので
" normal item
" hi Pmenu ctermbg=2
" dessert
hi Pmenu ctermbg=7
" selected item
hi PmenuSel ctermbg=5
" scroll bar
hi PmenuSbar ctermbg=8
" scroll lever
hi PmenuThumb ctermfg=3
