""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" system システム
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" コンソールウィンドウにタイトルを表示しない
set notitle

" Vimの開始時に挨拶メッセージを表示しない
set shortmess+=I


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file ファイル関連 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"バックアップを作成しない
setlocal nobackup
" swapを作らない
setlocal noswapfile
" swapを作るまでの時間m秒
"setlocal updatetime=0

" encode エンコード
if has('win32')
    setlocal fileformat=dos
    setlocal fileformats=dos,unix,mac
    setlocal fileencoding=utf-8
    setlocal fileencodings=iso-2022-jp,utf-8,euc-jp,cp932
    setlocal termencoding=
else
    setlocal fileformat=unix
    setlocal fileformats=unix,dos,mac
    setlocal fileencoding=utf-8
    setlocal fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
    setlocal termencoding=
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search 検索関連
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" インクリメンタルサーチを有効にする
setlocal incsearch

" 大文字小文字を区別しない
"setlocal ignorecase

" 大文字で検索されたら対象を大文字限定にする
"setlocal smartcase

" 行末まで検索したら行頭に戻る
setlocal wrapscan

" 検索結果をハイライトする
setlocal hlsearch

" <ESC>hでハイライトをOFFにする
nmap <ESC><ESC> :noh<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" status line (statusline は ruler や rulerformat より優先される)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ターミナル接続を高速にする (statusline表示のため)
setlocal ttyfast

" コマンドラインの高さ
setlocal cmdheight=1

" ステータスラインを常に表示
setlocal laststatus=2

" ファイル名表示
setlocal statusline+=%<%F

" 変更のチェック表示
setlocal statusline+=%m

" 読み込み専用かどうか表示
setlocal statusline+=%r

" ヘルプページなら[HELP]と表示
setlocal statusline+=%h

" プレビューウインドウなら[Prevew]と表示
setlocal statusline+=%w

" ファイルフォーマット表示
setlocal statusline+=[%{&fileformat}]

" 文字コード表示
setlocal statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]

" ファイルタイプ表示
setlocal statusline+=%y

" ここからツールバー右側
setlocal statusline+=%=

" 行数,
setlocal statusline+=[%l/%L]

" 現在行が全体行の何%目か表示
setlocal statusline+=[%p%%]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" about display 表示関連
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 構文強調
syntax on

" ファイル形式検出 "syntax onにてファイル形式検出もインストールされるため実行する必要はない
"filetype on

" ファイル個別検出
augroup FileTypeDetect
    autocmd BufNewFile,BufRead *.bash_login setfiletype sh
augroup END

" プラグイン ON
filetype plugin on

" indentは手動で設定するためOFF にすることも(プロジェクトのコーディングルールに則るため)
filetype indent on

" 括弧の対応をハイライト
setlocal showmatch

" TAB,EOFなどを可視化する
setlocal list listchars=tab:▸_,trail:=


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" input complement 入力補完
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent インデント defaultとファイルタイプ毎
setlocal tabstop<
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal autoindent
augroup FileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.txt    setlocal tabstop=4  shiftwidth=0  softtabstop=0 autoindent  noexpandtab
    autocmd BufNewFile,BufRead *.py     setlocal tabstop<   shiftwidth=4  softtabstop=4 autoindent  expandtab
    autocmd BufNewFile,BufRead *.sh     setlocal tabstop=4  shiftwidth=0  softtabstop=0 autoindent  noexpandtab
    autocmd BufNewFile,BufRead *.csh    setlocal tabstop=4  shiftwidth=0  softtabstop=0 autoindent  noexpandtab
    autocmd BufNewFile,BufRead *.bash   setlocal tabstop=4  shiftwidth=0  softtabstop=0 autoindent  noexpandtab
    autocmd BufNewFile,BufRead *.c      setlocal tabstop<   shiftwidth=4  softtabstop=4 smartindent expandtab
    autocmd BufNewFile,BufRead *.h      setlocal tabstop<   shiftwidth=4  softtabstop=4 smartindent expandtab
    autocmd BufNewFile,BufRead *.cpp    setlocal tabstop<   shiftwidth=4  softtabstop=4 smartindent expandtab
    autocmd BufNewFile,BufRead *.hpp    setlocal tabstop<   shiftwidth=4  softtabstop=4 smartindent expandtab
    autocmd BufNewFile,BufRead *.html   setlocal tabstop<   shiftwidth=2  softtabstop=2 autoindent  expandtab
    autocmd BufNewFile,BufRead *.css    setlocal tabstop<   shiftwidth=2  softtabstop=2 autoindent  expandtab
    autocmd BufNewFile,BufRead *.less   setlocal tabstop<   shiftwidth=2  softtabstop=2 autoindent  expandtab
    autocmd BufNewFile,BufRead *.js     setlocal tabstop=2  shiftwidth=2  softtabstop=2 autoindent  expandtab
    autocmd BufNewFile,BufRead *.json   setlocal tabstop<   shiftwidth=2  softtabstop=2 autoindent  expandtab
    autocmd BufNewFile,BufRead *.xhtml  setlocal tabstop<   shiftwidth=2  softtabstop=2 autoindent  expandtab
    autocmd BufNewFile,BufRead *.thtml  setlocal tabstop<   shiftwidth=2  softtabstop=2 autoindent  expandtab
    autocmd BufNewFile,BufRead *.php    setlocal tabstop<   shiftwidth=4  softtabstop=4 autoindent  expandtab
    autocmd BufNewFile,BufRead *.rb     setlocal tabstop<   shiftwidth=4  softtabstop=4 autoindent  expandtab
    autocmd BufNewFile,BufRead *.java   setlocal tabstop<   shiftwidth=4  softtabstop=4 autoindent  expandtab
    autocmd BufNewFile,BufRead *.md     setlocal tabstop<   shiftwidth=4  softtabstop=4 autoindent  expandtab
    autocmd BufNewFile,BufRead *.rst    setlocal tabstop<   shiftwidth=3  softtabstop=3 autoindent  expandtab
    autocmd BufNewFile,BufRead *.vim    setlocal tabstop<   shiftwidth=4  softtabstop=4 autoindent  expandtab
    autocmd BufNewFile,BufRead *.bashrc setlocal tabstop=4  shiftwidth=0  softtabstop=0 autoindent  noexpandtab
    autocmd BufNewFile,BufRead *.bash_profile    setlocal tabstop=4  shiftwidth=0  softtabstop=0 autoindent  noexpandtab
    autocmd BufNewFile,BufRead *.bash_login      setlocal tabstop=4  shiftwidth=0  softtabstop=0 autoindent  noexpandtab
    autocmd BufNewFile,BufRead *.yml    setlocal tabstop=2  shiftwidth=2  softtabstop=2 autoindent  expandtab
augroup END

" バックスペースキーで行頭やタブ等を削除する
setlocal backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <C-C><C-d>で現在のバッファと保存前のファイルをdiffする
nmap <C-C><C-D> :w !diff -u % -<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <C-C><C-g>で現在のファイルをgit diffする
nmap <C-C><C-G> :!git diff --  %<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" complement brackets 対応する括弧を自動挿入
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"inoremap { {}<Left>
"inoremap [ []<Left>
"inoremap ( ()<Left>
"inoremap " ""<Left>
"inoremap ' ''<Left>
"inoremap < <><Left>

" 移動制御（ディスプレイ依存）
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap j gj
"nnoremap k gk
"nnoremap <Down> gj
"nnoremap <Up>   gk
"nnoremap gj j
"nnoremap gk k

" window移動
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-H> <C-W>H
nnoremap <C-L> <C-W>L
nnoremap <C-J> <C-W>J
nnoremap <C-K> <C-W>K

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocomment 自動コメント ON
setlocal formatoptions+=ro
" autocomment 自動コメント OFF
"setlocal formatoptions-=ro
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pasteモード ON (自動インデントや自動コメントOFFモード)の有効化 ON
"setlocal paste
" pasteモード OFF (自動インデントや自動コメントOFFモード)の有効化 OFF
setlocal nopaste 

