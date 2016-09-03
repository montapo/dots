" init
command! CloneNeoBundle call s:CloneNeoBundle()
function! s:CloneNeoBundle()
  :!ln -s ~/dots/vimfiles ~/.vim
  :!mkdir -p ~/.vim/bundle
  :!git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
endfunction

" PATHの自動更新関数
" http://lambdalisue.hatenablog.com/entry/2014/05/21/065845
" | 指定された path が $PATH に存在せず、ディレクトリとして存在している場合
" | のみ $PATH に加える
function! IncludePath(path)
  " define delimiter depends on platform
  if has('win16') || has('win32') || has('win64')
    let delimiter = ";"
  else
    let delimiter = ":"
  endif
  let pathlist = split($PATH, delimiter)
  if isdirectory(a:path) && index(pathlist, a:path) == -1
    let $PATH=a:path.delimiter.$PATH
  endif
endfunction
" filetype について
" http://d.hatena.ne.jp/wiredool/20120618/1340019962
filetype off
filetype plugin indent off

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/dots/vimfiles/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/dots/vimfiles/bundle/'))
    "プロキシ環境でgit:が駄目なのでhttpsでclone
    let g:neobundle_default_git_protocol='https'

    " Let NeoBundle manage NeoBundle
    NeoBundleFetch 'Shougo/neobundle.vim'

    " compile at $HOME/.vim/bundle/vimproc
    NeoBundle 'Shougo/vimproc', {
          \ 'build' : {
          \     'windows' : 'tools\\update-dll-mingw',
          \     'cygwin' : 'make -f make_cygwin.mak',
          \     'mac' : 'make -f make_mac.mak',
          \     'unix' : 'make -f make_unix.mak',
          \    },
          \ }

    " auto completion
    NeoBundle 'Shougo/neocomplete'
    NeoBundle 'Shougo/neosnippet'
    NeoBundle 'Shougo/neosnippet-snippets'

    " unite
    NeoBundle 'Shougo/unite.vim.git'
    NeoBundle 'Shougo/unite-outline.git'

    " reference
    NeoBundle 'thinca/vim-ref.git'

    " filer
    " NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'Shougo/vimfiler'
    NeoBundle 'kien/ctrlp.vim.git'

    " syntax check
    NeoBundle 'scrooloose/syntastic.git'

    " powerline
    NeoBundle 'itchyny/lightline.vim'

    " exec
    NeoBundle 'thinca/vim-quickrun'

    " Perl utility plugins
    NeoBundle 'petdance/vim-perl'
    NeoBundle 'hotchpotch/perldoc-vim'

    " Scala
    NeoBundle 'derekwyatt/vim-scala'
    " Go
    NeoBundle 'fatih/vim-go'

    " Research
    " NeoBundle 'https://github.com/jcf/vim-latex.git'
    " NeoBundle 'https://github.com/fuenor/im_control.vim.git'


    " Python
    " pyenvで管理しているpythonを使う $PYENV_ROOTは$HOME/.pyenv で運用中
    " ~/.pyenv/shims を $PATH に追加する
    " これを行わないとpythonが正しく検索されない
    call IncludePath(expand("~/.pyenv/shims"))
    " Python auto completion + pydoc
    NeoBundle "davidhalter/jedi-vim"
    " do not load vim-pyenv until *.py is opend and
    " make sure that it is loaded after jedi-vim is loaded.
    NeoBundleLazy 'lambdalisue/vim-pyenv', {
          \ 'depends': ['davidhalter/jedi-vim'],
          \ 'autoload': {
          \   'filetypes': ['python', 'python3'],
          \ }}

    " Git
    NeoBundle "tpope/vim-fugitive"
    NeoBundle "mattn/gist-vim"

    " C++
    NeoBundle "osyo-manga/vim-snowdrop"

    " comment
    NeoBundle "https://github.com/tyru/caw.vim.git"

    " tab setting
    NeoBundle "https://github.com/kana/vim-submode.git"

    " Emoji
    NeoBundle "https://github.com/mattn/emoji-vim.git"

    " N3337
    NeoBundle 'https://github.com/rhysd/unite-n3337.git'

	NeoBundleLazy 'osyo-manga/unite-boost-online-doc', {
			\ 'autoload': {
			\   'filetypes': 'cpp',
			\ },
			\ 'depends': [
			\   'mattn/webapi-vim',
			\   'Shougo/unite.vim',
			\   'tyru/open-browser.vim',
			\ ],
			\ }

call neobundle#end()


" {{{ other plugins
" NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" NeoBundle 'L9'
" NeoBundle 'FuzzyFinder'
" NeoBundle 'rails.vim'
" " Non github repos
" NeoBundle 'git://git.wincent.com/command-t.git'
" " gist repos
" NeoBundle 'gist:Shougo/656148', {
"       \ 'name': 'everything.vim',
"       \ 'script_type': 'plugin'}
" " Non git repos
" NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
" }}}

filetype plugin indent on     " Required!

" Installation check.
NeoBundleCheck
