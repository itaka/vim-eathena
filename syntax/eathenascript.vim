"Vim syntax file
" Language:         eAthena Script
" Maintainer:		Itaka <itaka.dev@gmail.com>
" ----------------------------------------------------------------------------

"-----------------------------------------------------------------------------------------------------------------------
"

"Comment
syn region  scriptComment     start="//" end="$" contains=TODO,FIXME

"RID


"Variable
syn match scriptVariable "[.@$]\{1,3}[A-z0-9_]\+[$\s]\{0,1}"

"Base Vairable etc ...
syn keyword scriptBaseVariable StatusPoint BaseLevel SkillPoint Class Upper Zeny Sex Weight MaxWeight JobLevel BaseExp Notice JobExp NextBaseExp NextJobExp Hp MaxHp Sp MaxSp BaseJob Karma Manner

"Special Variable etc ...
syn keyword scriptSpecialVariable PC_DIE_COUNTER jobchange_level CLONE_SKILL

"Condition
syn keyword scriptCondition if else do while for switch case

"Reserwed words
syn keyword scriptReserwedWords script

"String
syn region  scriptString      start="\"" end="\"" contains=scriptSpecialVariable

syn keyword  Todo TODO FIXME contained

"Number,Integer,Float,ASCIICode
syn match scriptASCIICode	"\%(\w\|[]})\"'/]\)\@<!\%(?\%(\\M-\\C-\|\\C-\\M-\|\\M-\\c\|\\c\\M-\|\\c\|\\C-\|\\M-\)\=\%(\\\o\{1,3}\|\\x\x\{1,2}\|\\\=\S\)\)"
syn match scriptInteger	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[xX]\x\+\%(_\x\+\)*\>"								display
syn match scriptInteger	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0[dD]\)\=\%(0\|[1-9]\d*\%(_\d\+\)*\)\>"						display
syn match scriptInteger	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[oO]\=\o\+\%(_\o\+\)*\>"								display
syn match scriptInteger	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[bB][01]\+\%(_[01]\+\)*\>"								display
syn match scriptFloat	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0\|[1-9]\d*\%(_\d\+\)*\)\.\d\+\%(_\d\+\)*\>"					display
syn match scriptFloat	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0\|[1-9]\d*\%(_\d\+\)*\)\%(\.\d\+\%(_\d\+\)*\)\=\%([eE][-+]\=\d\+\%(_\d\+\)*\)\>"	display


"Label
syn match scriptLabels "[A-z]\+[0-9]*\:$"
syn match scriptTimeLabels "^[A-z]\+[0-9]\{1,6}\:"
syn keyword scriptSpecialLabels OnInit: OnInterIfInit: OnInterIfInitOnce: OnAgitStart: OnAgitEnd: OnAgitInit: OnAgitEliminate: OnAgitBreak OnPCDieEvent: OnPCKillEvent: OnPCLogoutEvent: OnPCLoginEvent: OnPCLoadMapEvent: OnNPCKillEvent: OnPCBaseUpEvent:

"Town and Fields
syn keyword scriptTown	prontera prontera izlude moc_ruins geffen payon pay_arche alberta aldebaran yuno lighthalzen einbroch einbech comodo umbala amatsu gonryun ayothaya louyang hugel rachel veins morocc airplane airport
syn match scriptFieldsDungeon	"^[a-z]\{1,7}_[a-z0-9]\{1,7}"
syn match scriptFields	"[a-z]\+_\(fild\|map\)[0-9]*"

"Messages
syn keyword scriptMessage mes

"Scripting commands and functions
syn keyword scriptCommands goto close next callsub callfunc return getarg close2 menu rand warp areawarp heal itemheal percentheal jobchange input setlook set setarray cleararray copyarray deletearray  getitem getitem2 makeitem delitem viewpoint repair
syn keyword scriptCommands failedrefitem successrefitem cutin cutincard statusup statusup2 bonus bonus2 bonus3 bonus4 skill skill guildskill end break
syn keyword scriptCommands setcart checkcart setfalcon setriding savepoint save openstorage itemskill produce monster areamonster killmonster
syn keyword scriptCommands killmonsterall doevent donpcevent addtimer deltimer addtimercount stoptimer inittimer enablearena disablearena cmdothernpc
syn keyword scriptCommands initnpctimer stopnpctimer startnpctimer setnpctimer getnpctimer attachnpctimer detachnpctimer announce mapannounce
syn keyword scriptCommands areaannounce getusers getmapusers getareausers disablenpc enablenpc hideonnpc hideoffnpc
syn keyword scriptCommands sc_start sc_start2 sc_end  debugmes pet pet resetlvl resetstatus resetskill changebase changesex
syn keyword scriptCommands waitingroom delwaitingroom enablewaitingroomevent disablewaitingroomevent getwaitingroomstate
syn keyword scriptCommands warpwaitingpc waitingroomkickall attachrid detachrid setmapflagnosave setmapflag removemapflag
syn keyword scriptCommands pvpon pvpoff gvgon gvgoff
syn keyword scriptCommands maprespawnguildid
"0 arguments 
syn keyword scriptCommands agitstart agitend wedding clearitem nude npcstop day night getusersname recovery
"1 INT
syn keyword scriptCommands emotion agitcheck flagemblem successremovecards makepet misceffect specialeffect specialeffect2 npcspeed guildgetexp unequip
syn keyword scriptCommands activatepset deactivatepset deletepset
"1 STR
syn keyword scriptCommands npctalk logmes dispbottom globalmes
"2 INT,INT
syn keyword scriptCommands getexp skilleffect npcwalkto skilluseid doskill
"2 STR,STR
syn keyword scriptCommands message
"2 INT,STR/INT
syn keyword scriptCommands requestguildinfo failedremovecards classchange
"2 arguments STR,INT
syn keyword scriptCommands soundeffect soundeffectall
"3 argumens strings
syn keyword scriptCommands adopt
"3 INT,STR,STR
syn keyword scriptCommands defpattern
"3-2 STR,INT,<INT>
syn keyword scriptCommands summon
"4 STR,INT,INT,INT
syn keyword scriptCommands warpparty warpguild
"4 int
syn keyword scriptCommands npcskilleffect skillusepos
"4 argumens 2-str/2-int
syn keyword scriptCommands mapwarp
"command_STR create array
syn keyword scriptCommands getinventorylist getskilllist
"6-7 args str int int str int int <int>
syn keyword scriptCommands guardian
"special (condition),<label>
syn keyword scriptCommands jump_zero

"Pet AI commands 
"1 INT
syn keyword scriptCommands petloot
"2 arguments STR,INT
syn keyword scriptCommands petrecovery
"4 str int int int
syn keyword scriptCommands petskillbonus
"4 int
syn keyword scriptCommands petheal petskillattack
"5 int
syn keyword scriptCommands petskillsupport petskillattack2
"Special Commands GM
syn keyword scriptCommands gmcommand atcommand charcommand

syn keyword scriptFunctions function getarraysize getelementofarray countitem checkweight readparam getcharid getpartyname getpartymember 
syn keyword scriptFunctions getguildname getguildmaster getguildmasterid strcharinfo getequipid getequipname getbrokenid  getequipisequiped getequipisenableref getequipisidentify getequiprefinerycnt getequipweaponlv getequippercentrefinery
syn keyword scriptFunctions getskilllv getgdskilllv basicskillcheck getgmlevel checkoption checkoption1 checkoption2 setoption 
syn keyword scriptFunctions checkfalcon checkriding gettimetick gettime gettimestr guildopenstorage getareadropitem 
syn keyword scriptFunctions getscrate isloggedin agitcheck getcastlename getcastledata setcastledata
syn keyword scriptFunctions getequipcardcnt marriage divorce ispartneron getpartnerid warppartner adopt getitemname
syn keyword scriptFunctions mobcount strmobinfo guardianinfo hasitems getlook getsavepoint getmapxy
syn keyword scriptFunctions isnight isday isequipped isequippedcnt cardscnt getrefine getpetinfo checkequipedcard
syn keyword scriptFunctions select getmapmobs getstrlen charisalpha getnameditem getnameditem getnameditem duplicate
"special function without ()
syn keyword scriptFunctions sfakenpcname


"comment
hi def link scriptComment                 Comment
"variable
hi def link scriptVariable                Type
hi def link scriptBaseVariable            scriptVariable
hi def link scriptSpecialVariable         scriptBaseVariable

hi def link scriptInteger                 Number
hi def link scriptASCIICode               scriptInteger
hi def link scriptFloat                   scriptInteger

hi def link scriptReserwedWords           Macro

hi def link scriptString                  String

hi def link scriptMessage                 CursorLine
"labels
hi def link scriptLabels                  Label
hi def link scriptTimeLabels              scriptLabels
hi def link scriptSpecialLabels           scriptLabels

"town and fields
hi def link scriptTown                    Macro
hi def link scriptFields                  scriptTown
hi def link scriptFieldsDungeon           scriptFields

"commands and functions
hi def link scriptFunctions               Function
hi def link scriptCommands                Special

hi def link scriptCondition               Conditional

let b:current_syntax = "eas"
