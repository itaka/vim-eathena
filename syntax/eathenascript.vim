"Vim syntax file
" Language:             Script
" Maintainer:		Itaka <itaka.dev@gmail.com>
" ----------------------------------------------------------------------------

"TODO add special words
"Comment and String
syn region  eathenaComment     start="^//" end="$" contains=TODO,FIXME
syn region  eathenaString      start="\"" end="\"" contains=eathenaSpecialContained

"Number,Integer,Float,ASCIICode
syn match eathenaASCIICode	"\%(\w\|[]})\"'/]\)\@<!\%(?\%(\\M-\\C-\|\\C-\\M-\|\\M-\\c\|\\c\\M-\|\\c\|\\C-\|\\M-\)\=\%(\\\o\{1,3}\|\\x\x\{1,2}\|\\\=\S\)\)"
syn match eathenaInteger	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[xX]\x\+\%(_\x\+\)*\>"								display
syn match eathenaInteger	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0[dD]\)\=\%(0\|[1-9]\d*\%(_\d\+\)*\)\>"						display
syn match eathenaInteger	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[oO]\=\o\+\%(_\o\+\)*\>"								display
syn match eathenaInteger	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[bB][01]\+\%(_[01]\+\)*\>"								display
syn match eathenaFloat	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0\|[1-9]\d*\%(_\d\+\)*\)\.\d\+\%(_\d\+\)*\>"					display
syn match eathenaFloat	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0\|[1-9]\d*\%(_\d\+\)*\)\%(\.\d\+\%(_\d\+\)*\)\=\%([eE][-+]\=\d\+\%(_\d\+\)*\)\>"	display

"Conditional
syn keyword eathenaConditional if else end return switch case goto
syn keyword eathenaChoise next select close
"Repeat
syn keyword eathenaRepet for do while 
"Boolean
syn keyword eathenaBoolean true false

"Special Keywords
syn keyword  Todo TODO FIXME contained

"Field and Town
syn match eathenaFields	"[A-z]*_fild[0-9,]*"
syn match eathenaFieldsDungeon	"nguild_[a-z,0-9]*"
syn keyword eathenaTown	prontera prontera izlude moc_ruins geffen payon pay_arche alberta aldebaran yuno lighthalzen einbroch einbech comodo umbala amatsu gonryun ayothaya louyang hugel rachel veins

"Special Variable and Words
syn keyword eathenaSpecialWords script monster 
syn keyword eathenaSpecialInsert emotion set delitem getitem getnameditem getexp setexp callfunc
syn keyword eathenaSpecialContained strcharinfo
syn match eathenaSwitchWords "[A-z0-9_#]\+:$"

"Message
syn keyword eathenaMessage mes
"Variable and function
syn match eathenaFunctions "[A-z\s\t]\+{$" contains=eathenaSpecialWords,eathenaTown,eathenaFields,eathenaFieldsDungeon,eathenaInteger,eathenaFloat,eathenaASCIICode,eathenaString,eathenaVariable
syn match eathenaVariable "[.@$]\{1,3}[A-z0-9_$#]\+" 
syn region eathenaInlineFunctions start="[A-z_0-9:,#$]\+(" skip="," end=")" contains=eathenaSpecialWords,eathenaTown,eathenaFields,eathenaFieldsDungeon,eathenaInteger,eathenaFloat,eathenaASCIICode,eathenaString,eathenaVariable

"contains=eathenaComment,eathenaString,eathenaASCIICode,eathenaFloat,eathenaInteger,eathenaTown,eathenaFields,eathenaFieldsDungeon,eathenaSpecialWords,eathenaSpecialInsert,eathenaSpecialContained ,eathenaConditional,eathenaChoise,eathenaRepet, eathenaMessage,eathenaBoolean,eathenaFunctions,eathenaCurlyBlock,eathenaVariable        

hi def link eathenaComment                Comment
hi def link eathenaString                 String
hi def link eathenaASCIICode              Number
hi def link eathenaFloat                  Float
hi def link eathenaInteger                Number
hi def link eathenaTown                   PreProc
hi def link eathenaFields                 eathenaTown
hi def link eathenaFieldsDungeon          eathenaFields
hi def link eathenaSpecialWords           PreProc
hi def link eathenaSwitchWords            eathenaConditional 
hi def link eathenaSpecialInsert          Special
hi def link eathenaSpecialContained       Special
hi def link eathenaConditional            Conditional
hi def link eathenaChoise                 Keyword
hi def link eathenaRepet                  Repeat
hi def link eathenaMessage                CursorLine
hi def link eathenaBoolean                Boolean
hi def link eathenaFunctions              Function
hi def link eathenaInlineFunctions        Function
hi def link eathenaVariable               Delimiter
