" Vim syntax file
" Language:		C
" Maintainer:	coo1
" Last Change:	2014 Apr 22
" Remark:




syntax match c_Function /\zs\w\+\ze\s*(/ contains=cParen
highlight default link c_Function Function

"syntax match cOpe1 /[:;]/
"syntax match cOpe1 /[:;=\+\-]/
"hi def link cOpe1 Operator

hi cBlock		guifg=black	gui=bold
hi cParen		guifg=black	gui=bold
hi cBracket		guifg=black	gui=bold
hi cCppParen	guifg=black	gui=bold
hi cCppBracket	guifg=black	gui=bold




let cOperatorList  = '[-&|+<>=*/!~]'    " A list of symbols that we don't want to immediately precede the operator
let cOperatorList .= '\@<!'             " Negative look-behind (check that the preceding symbols aren't there)
let cOperatorList .= '\%('              " Beginning of a list of possible operators
let cOperatorList .=     '\('           " First option, the following symbols...
let cOperatorList .=        '[-&|+<>=]'
let cOperatorList .=     '\)'
let cOperatorList .=     '\1\?'         " Followed by (optionally) the exact same symbol, so -, --, =, ==, &, && etc
let cOperatorList .= '\|'               " Next option:
let cOperatorList .=     '->'           " Pointer dereference operator
let cOperatorList .= '\|'               " Next option:
let cOperatorList .=     '[-+*/%&^|!]=' " One of the listed symbols followed by an =, e.g. +=, -=, &= etc
let cOperatorList .= '\|'               " Next option:
let cOperatorList .=     '[*?,!~%]'     " Some simple single character operators
let cOperatorList .= '\|'               " Next option:
let cOperatorList .=     '\('           " One of the shift characters:
let cOperatorList .=         '[<>]'     
let cOperatorList .=     '\)'
let cOperatorList .=     '\2'           " Followed by another identical character, so << or >>...
let cOperatorList .=     '='            " Followed by =, so <<= or >>=.
let cOperatorList .= '\)'               " End of the long list of options
let cOperatorList .= '[-&|+<>=*/!~]'    " The list of symbols that we don't want to follow
let cOperatorList .= '\@!'              " Negative look-ahead (this and the \@<! prevent === etc from matching)

exe "syn match cOperator display '" . cOperatorList . "'"

syn match cOperator display ';'
hi link cOperator Operator
