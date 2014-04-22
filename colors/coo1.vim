" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	coo1
" Last Change:	2014 Apr 22
" Revision #1: 

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "coo1"

"syntax match myOpe	/[=;:]/
"hi myOpe		guifg=red								gui=bold

hi Normal		guifg=black			guibg=#C0DCC0
hi NonText		guifg=gray								gui=italic
hi Comment		guifg=darkgreen

hi Constant		guifg=darkmagenta
hi String		guifg=brown

hi Identifier	guifg=black
hi Function		guifg=black								gui=bold

hi Statement	guifg=blue
hi Operator		guifg=red

hi PreProc		guifg=blue								gui=italic
hi Special		guifg=gray								gui=italic
hi SpecialKey	guifg=gray								gui=italic
hi Underlined	guifg=magenta
hi label		guifg=black

hi Type			guifg=blue								gui=bold
hi Typedef		guifg=darkmagenta						gui=bold

hi MatchParen	guifg=black			guibg=yellow		gui=bold
hi ErrorMsg		guifg=white
hi WarningMsg	guifg=yellow
hi ModeMsg		guifg=white			guibg=black			gui=NONE
hi MoreMsg		guifg=yellow		guibg=black			gui=NONE
hi Error		guifg=white			guibg=red			gui=bold

hi Todo			guifg=black			guibg=orange
hi Cursor		guifg=white			guibg=darkmagenta	gui=NONE
hi CursorLine						guibg=#C0DCC0		gui=underline
hi Search		guifg=black			guibg=orange
hi IncSearch	guifg=black			guibg=orange
hi LineNr		guifg=darkMagenta
hi title		guifg=white	gui=bold

hi StatusLineNC	guifg=white	guibg=black	gui=NONE
hi StatusLine	guifg=white	guibg=black	gui=bold
hi VertSplit	guifg=white	guibg=black	gui=NONE

hi Visual		guifg=black		guibg=darkCyan

hi DiffChange	guibg=darkGreen		guifg=black
hi DiffText		guibg=olivedrab		guifg=black
hi DiffAdd		guibg=slateblue		guifg=black
hi DiffDelete   guibg=coral			guifg=black

hi Folded		guibg=orange		guifg=black
hi FoldColumn	guibg=gray30		guifg=black
hi cIf0			guifg=gray

