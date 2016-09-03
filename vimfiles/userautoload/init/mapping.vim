" US KEYBOARD SETTING "
"nnoremap ; :
"nnoremap : ;

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" Yの動作をDやCと同じにする
map Y y$
"normal mode keymap ----------------------------------------------
" <C-L>で検索後の強調表示を解除する
nnoremap <S-L> :nohl<CR><C-L>
" タブ
nnoremap <Tab><right> gt
nnoremap <Tab><left> gT
" F2でvimrc開く
nnoremap <F2> :<C-u>e<Space>~/.vimrc<CR>
"insert mode keymap ----------------------------------------------
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap " ""<left>
inoremap ' ''<left>
"<esc> やめたい
inoremap jj <esc>
"バックスラッシュが遠いのでスペースとswapでもneocompleteと衝突した
"let mapleader=" "

"移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
" window-tab-mappings
nnoremap ss <C-w>w
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

" タブ幅移動系は userautoload/vimfiles/plugins-vim-submode.vim

" originals -------------------------------------------------------
" MATLAB
command! Matlab call s:Matlab()
nnoremap <F6> :Matlab<CR>
function! s:Matlab()
   :w
   :!matlab -nodisplay -r %:r
endfunction

" MATLAB にフォーカス
"nnoremap mm :!wmctrl<Space>-a<Space>MATLAB\<Space>R20<CR>
command! MatFocus call s:MatFocus()
nnoremap mm :MatFocus<CR>
function! s:MatFocus()
    :w
    :!wmctrl -a MATLAB\ R20 &
endfunction

" INVOKE TIG
command! Tig call s:Tig()
nnoremap tig :Tig<CR>
function! s:Tig()
    :w
    :!tig
endfunction

" clip-board
nnoremap cp "+p
noremap cy "+y

" :make
nnoremap <silent> <Space>m :make<CR>
nnoremap <silent> <Space>n :cnext<CR>
nnoremap <silent> <Space>N :cprevious<CR>
nnoremap <silent> <Space>c :make<Space>clean<CR>

