" ========================================================
" *-------- 色 --------*
"   現在の設定状況は、:highlightで確認可能。
" ========================================================
"colorscheme molokai  "カラースキーマ
syntax on  "シンタックスカラーリングを設定する
set t_Co=256  "256色使用する

"コマンドラインの背景色をvimの背景色に引き継ぐ
autocmd VimEnter,ColorScheme * highlight Normal ctermbg=none

"コマンドラインの背景色をvimの行番号の背景色に引き継ぐ
autocmd VimEnter,ColorScheme * highlight LineNr ctermbg=none

"コマンドラインの背景色をSignColumn(syntasticのerr checkが表示されるところ)の背景色に引き継ぐ
autocmd VimEnter,ColorScheme * highlight SignColumn ctermbg=none

"コマンドラインの背景色をvimの垂直分割ラインの背景色に引き継ぐ
autocmd VimEnter,ColorScheme * highlight VertSplit ctermbg=none

"コマンドラインの背景色をvimのEOF以降の~などの背景色に引き継ぐ
autocmd VimEnter,ColorScheme * highlight NonText ctermbg=none

" http://h2plus.biz/hiromitsu/wp-content/uploads/2012/07/termcolor.jpg
highlight Comment ctermfg=130 ctermbg=none
highlight Delimiter ctermfg=202 ctermbg=none
highlight Search term=reverse cterm=reverse ctermfg=193 ctermbg=16


" ========================================
" *-- vimdiff --*
" ========================================
" vimdiffの色設定(黒背景用)
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21


" ========================================================
" *-------- 表示 --------*
" ========================================================
set title  "編集中のファイル名を表示する
set number  "行数の表示
set laststatus=2  "ステータスラインを常に表示
set statusline=%f%m%=%l,%c\ %{'['.(&fenc!=''?&fenc:&enc).']\ ['.&fileformat.']'}  "ステータスラインの内容
set list  "不可視文字の表示
set listchars=tab:>-,trail:_,extends:\  "不可視文字をどのように表示するか
set tabstop=2  "タブの幅
set autoindent  "改行時に自動インデントする
set shiftwidth=2 "自動インデントの文字数
set smartindent  "ネスト時自動的にインデント数を増減
set smarttab  "行頭余白タブでshiftwidthの数だけインデント
set expandtab  "タブの代わりにスペースを使用する
autocmd Filetype json setl conceallevel=0  "jsonのダブルクオーテーションは表示する

"対応括弧のハイライトなし
let loaded_matchparen = 1

" ========================================================
" *-------- 編集 --------*
" ========================================================
set encoding=utf8  "vim自身の文字コード
set fileencoding=utf-8  "ファイル保存時の文字コード
set fileencodings=utf-8  "ファイルを開くときの文字コード
set history=128  "コマンド履歴数
set incsearch  "インクリメンタルサーチ
set hlsearch  "サーチ結果のハイライト
set ignorecase  "検索時に文字の大小を区別しない
set smartcase  "検索時に大文字を含んでいたら大小を区別する
set whichwrap=b,s,h,l,<,>,[,]  "行頭行末で止まらず上下行へ移動できるようになる
set backspace=indent,eol,start  "インサートモード時にバックスペースを使う

"編集位置の記憶
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif
