


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

"	���ꕶ���̌����鉻�B
set list
set listchars=tab:>_,eol:$

"	�\�������B
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




"	�}���E�������[�h�ł̃f�t�H���g IME ��ԁB
set iminsert=0 imsearch=0

"	�}�����[�h�� IME ��Ԃ��L�������Ȃ��B
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"	�o�b�t�@�ŕҏW���̃t�@�C��������f�B���N�g���Ɉړ�
"autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]://" | silent! lcd %:p:h | endif

"	C����֐������B
"syntax match CFunction /[a-zA-Z_]\+\w*\s*(\@=/ 
"hi CFunction guifg=#ff0000 guibg=#ffff00 

filetype plugin on


"	taglist.vim
let Tlist_Auto_Open=1


"	�I��͈͂̕��������������B
"vnoremap <silent> / "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>
"vnoremap <silent> / y/\V<C-r>=substitute(escape(@",'\/'),"\n",'\\n','g')<CR><CR>
vnoremap / y/\V<C-r>=substitute(escape(@",'\/'),"\n",'\\n','g')<CR>

"	�I�������������u��
vnoremap /r "xy:%s/<C-R>=escape(@x, '\\/.*$^~[]')<CR>//gc<Left><Left><Left>

"	���{����ݒ�
"set encoding=utf-8
set encoding=sjis
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set fileformats=unix,dos,mac

"	Windows gvim �Z�b�g�A�b�v�����B
"		�E$VIM, $VIMRUNTIME, $HOME, $MYVIMRC ���� echo �R�}���h�Ŋm�F�B
"
"		�E�ȉ����쐬�B
"			$HOME/_vimrc
"			$HOME/vimfiles  (�� $VIM/vimfiles ���R�s�[)
"
"		�Etaglist.vim
"		�Eiconv
"		�Ectags
"
