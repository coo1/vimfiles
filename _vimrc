


set autoindent
set incsearch
"set encoding=japan
set number
set ts=4
set ruler
set showcmd

set wildmenu wildmode=list:full
set backspace=indent,eol,start

set guifont=MS_Mincho:h9
set lines=60
set columns=150

set history=50

"	特殊文字の見える化。
set list
set listchars=tab:>_,eol:$

"	構文強調。
syntax enable
colorscheme coo1
set hlsearch

"highlight Normal		guibg=#C0DCC0
"highlight SpecialKey	guifg=gray
"highlight NonText		guifg=gray

"highlight Comment guifg=darkgreen
"highlight Constant guifg=
"highlight Type guifg=blue term=bold
"highlight Statement guifg=blue
"highlight Function guifg=black gui=bold,underline,italic

set cursorline
"highlight CursorLine guibg=bg guisp=red gui=undercurl
"highlight CursorLine guibg=bg guisp=red gui=underline




"	挿入・検索モードでのデフォルト IME 状態。
set iminsert=0 imsearch=0

"	挿入モードで IME 状態を記憶させない。
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"	バッファで編集中のファイルがあるディレクトリに移動
"autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]://" | silent! lcd %:p:h | endif

"	C言語関数強調。
"syntax match CFunction /[a-zA-Z_]\+\w*\s*(\@=/ 
"hi CFunction guifg=#ff0000 guibg=#ffff00 

filetype plugin on


"	taglist.vim
let Tlist_Auto_Open=1


"	選択範囲の文字列を検索する。
"vnoremap <silent> / "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>
"vnoremap <silent> / y/\V<C-r>=substitute(escape(@",'\/'),"\n",'\\n','g')<CR><CR>
vnoremap / y/\V<C-r>=substitute(escape(@",'\/'),"\n",'\\n','g')<CR>

"	選択した文字列を置換
vnoremap /r "xy:%s/<C-R>=escape(@x, '\\/.*$^~[]')<CR>//gc<Left><Left><Left>

"	日本語環境設定
"set encoding=utf-8
set encoding=sjis
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set fileformats=unix,dos,mac

"	Windows gvim セットアップメモ。
"		・$VIM, $VIMRUNTIME, $HOME, $MYVIMRC 等は echo コマンドで確認。
"
"		・以下を作成。
"			$HOME/_vimrc
"			$HOME/vimfiles  (← $VIM/vimfiles をコピー)
"
"		・taglist.vim
"		・iconv
"		・ctags
"
