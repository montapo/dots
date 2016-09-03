nnoremap vf :VimFilerSplit<CR>

let g:vimfiler_as_default_explorer = 1
" controls whether vimfiler change Vim current directory automatically
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_safe_mode_by_default = 0

" splitでなくtabで開く
" let g:vimfiler_edit_action = "tabopen"

" keymapped cmd {{{
"a	 アクションを選択
"l	 フォルダを開く
"h	 フォルダを閉じる
"t	 フォルダを開く・閉じる
"T	 フォルダを再帰的に開く・閉じる
"Backspace	 親フォルダに移動する
"Enter	 フォルダに入る
"e	 ファイルを開く
"E	 新しいウィンドウでファイルを開く
".	 隠しファイル（ドットファイル）表示
"I	 ディレクトリを入力し移動
"yy	 フルパスをヤンク（コピー）する
"ge	 システムのファイラーでフォルダを開く
"gf	 ファイルを検索 (find)
"gg	 ファイルをフィルタリング (grep)
"x	 システムの関連付けでファイルを開く
"また下記コマンドを覚えることでVimfiler上でファイルの作成・編集・削除ができます。 なおこれらの破壊的コマンドに関してはgsと入力しセーフモードを抜けないと実行できないようになっています。
"
"キーマッピング	 コマンド
"Cc	クリップボードにファイルをコピー
"Cm	クリップボードにファイルを移動
"Cp	クリップボードからファイルを貼り付け
"N	 新規ファイルを作成
"c	 ファイルをコピー
"m	 ファイルを移動
"r	 ファイルをリネーム
"d	 ファイルを削除
"
"M   mask mode --- unite.vim
"Space : marks
"mark -> r: extended rename mode
"}}}
