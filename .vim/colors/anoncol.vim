hi clear Normal
set bg&

hi clear
if exists("syntax_on")
    syn reset
endif

let colors_colors = "anoncol"

hi cursorLine                 guifg=NONE    guibg=#303030 cterm=none
hi cursorColumn               guifg=NONE    guibg=#303030 cterm=none
hi normal                     guifg=#eeeeee guibg=#000000 cterm=none
hi colorColumn                guifg=NONE    guibg=#202020 cterm=none
hi lineNR                     guifg=#ff0000 guibg=#202020 cterm=none
hi vertSplit                  guifg=#000000 guibg=#202020 cterm=none
hi folded                     guifg=#505050 guibg=#202020 cterm=none

hi signColumn                 guifg=NONE    guibg=#000000 cterm=none
hi gitGutterAdd               guifg=#00ff00 guibg=NONE    cterm=none
hi gitGutterChange            guifg=#ffff00 guibg=NONE    cterm=none
hi gitGutterDelete            guifg=#ff0000 guibg=NONE    cterm=none
hi gitGutterChangeDelete      guifg=#ffc000 guibg=NONE    cterm=none

hi gitGutterChangeDeleteLine  guibg=#c08000 guifg=NONE    cterm=none

hi diffAdd                    guifg=NONE    guibg=#008000 cterm=none
hi diffChange                 guifg=NONE    guibg=#808000 cterm=none
hi diffDelete                 guifg=NONE    guibg=#800000 cterm=none

hi matchParen                 guifg=#ffff00 guibg=NONE    cterm=underline

hi visual                     guifg=NONE    guibg=#ff8000 cterm=none

hi spellBad                   guifg=#ff0000 guibg=NONE    cterm=underline,bold
hi specialKey                 guifg=#ff6400 guibg=NONE    cterm=none

hi comment                    guifg=#505050 guibg=NONE    cterm=none
hi constant                   guifg=#ffd000 guibg=NONE    cterm=none
hi error                      guifg=#800000 guibg=#ff0000 cterm=none
hi identifier                 guifg=#408000 guibg=NONE    cterm=none
hi preProc                    guifg=#ff00ff guibg=NONE    cterm=none
hi special                    guifg=#800000 guibg=NONE    cterm=none
hi statement                  guifg=#0000ff guibg=NONE    cterm=none
hi todo                       guifg=#ff4500 guibg=NONE    cterm=none
hi type                       guifg=#ff6500 guibg=NONE    cterm=none
hi underlined                 guifg=#aa8000 guibg=NONE    cterm=none

hi cCharacter                 guifg=#aa0000 guibg=NONE  cterm=none
hi cCommentStart              guifg=#404040 guibg=NONE  cterm=none
hi cConditional               guifg=#8000aa guibg=NONE  cterm=none
hi cDefine                    guifg=#800080 guibg=NONE  cterm=none
hi cFormat                    guifg=#800000 guibg=NONE  cterm=underline
hi cNumber                    guifg=#ff0000 guibg=NONE  cterm=none
hi cOperator                  guifg=#8040e0 guibg=NONE  cterm=none
hi cPreCondit                 guifg=#8000c4 guibg=NONE  cterm=none
hi cRepeat                    guifg=#8060aa guibg=NONE  cterm=none
hi cStorageClass              guifg=#ffd000 guibg=NONE  cterm=none
hi cString                    guifg=#904090 guibg=NONE  cterm=none
hi cStructure                 guifg=#ff8000 guibg=NONE  cterm=none

hi cTagsDefinedName           guifg=#c400c4 guibg=NONE  cterm=none
hi cTagsEnumerationValue      guifg=#800040 guibg=NONE  cterm=none
hi cTagsEnumeratorName        guifg=#408000 guibg=NONE  cterm=none
hi cTagsFunction              guifg=#006a40 guibg=NONE  cterm=none
hi cTagsGlobalVariable        guifg=#ffff00 guibg=NONE  cterm=underline
hi cTagsMember                guifg=#ffb000 guibg=NONE  cterm=none

hi link cComment            comment
hi link cConstant           constant
hi link cCppString          cString
hi link cInclude            preProc
hi link cIncluded           cSpecial
hi link cLabel              underlined
hi link cOctal              cNumber
hi link cOctalZero          cFormat
hi link cPreConditMatch     cPreCondit
hi link cPreProc            preProc
hi link cSpecial            special
hi link cStatement          statement
hi link cTodo               todo
hi link cType               type

hi link cTagsStructure      cStructure
hi link cTagsType           type

hi link cppNumber           cNumber

hi link symParens                     cDefine
hi link symBraces                     cType
hi link symOperators                  cOperator
hi link symOutParam                   cFormat
hi link symAnd                        cOperator
hi symPlusGreater             guifg=#00ff00 guibg=NONE    cterm=none
hi symSubtractLessBang        guifg=#ff0000 guibg=NONE    cterm=none
hi symPunctEqual              guifg=#ffff00 guibg=NONE    cterm=none

hi vimCommentTitle            guifg=#00ff00 guibg=NONE    cterm=none
hi vimHighlight               guifg=#0080ff guibg=NONE    cterm=none
"hi vimHiClear                 guifg=#00a0ff guibg=NONE    cterm=none
hi vimSynKeyRegion            guifg=#888888 guibg=NONE    cterm=none
"hi vimUserAttrb               guifg=#0000d0 guibg=NONE    cterm=none
"hi vimUserAttrbKey            guifg=#0000c0 guibg=NONE    cterm=none
"hi vimUserCmd                 guifg=#008080 guibg=NONE    cterm=none
"hi vimUserCommand             guifg=#0080a0 guibg=NONE    cterm=none
hi vimLet                     guifg=#008080 guibg=NONE    cterm=none
hi vimVar                     guifg=#00ffff guibg=NONE    cterm=none

hi link vimCommand          cStatement
hi link vimCommentString    cCommentStart
hi link vimConditional      cConditional
hi link vimContinue         cSpecial
hi link vimFgBgAttrib       cTagsEnumerationValue
hi link vimFTCmd            cTagsEnumeratorName
hi link vimFTOption         cTagsEnumerationValue
hi link vimFuncKey          cStatement
hi link vimFuncName         cTagsFunction
hi link vimFunction         cTagsFunction
hi link vimGroup            cStorageClass
hi link vimGroupName        cStorageClass
hi link vimHiAttrib         cTagsEnumerationValue
hi link vimHiClear          cTagsDefinedName
hi link vimHiCTerm          cTagsEnumeratorName
hi link vimHiGuiRgb         cConstant
hi link vimHiGroup          cStorageClass
hi link vimHiGuiFgBg        cStructure
hi link vimHiKeyList        cOperator
hi link vimIsCommand        vimSynKeyRegion
hi link vimLineComment      cComment
hi link vimNotFunc          cStatement
hi link vimNumber           cNumber
hi link vimOper             cOperator
hi link vimOperParen        cOperator
hi link vimOption           cPreProc
hi link vimParanSep         cOperator
hi link vimRepeat           cRepeat
hi link vimSetEqual         cOperator
hi link vimSetMod           cFormat

" My have issues with this because 'cFormat' is underlined..
hi link vimSetSep           cFormat
hi link vimString           cString
hi link vimSynKeyOpt        cTagsDefinedName
hi link vimSynType          cType
hi link vimUserAttrb        cSpecial
hi link vimUserAttrbKey     cTagsDefinedName
hi link vimUserCmd          cSpecial
hi link vimUserCommand      cStatement
hi link vimUserFunc         cTagsFunction


finish

hi csClass                    guifg=#00ffff guibg=NONE  cterm=none
hi csEnum                     guifg=#408000 guibg=NONE  cterm=none
hi csEnumMember               guifg=#800040 guibg=NONE  cterm=none

hi link csClassOrStructTag  csClass
hi link csConditional       cConditional
hi link csConstant          preProc
hi link csNumber            cNumber
hi link csRepeat            cRepeat
hi link csStatment          statement
hi link csStorage           cStorageClass
hi link csString            cString
hi link csType              type

hi link csMethod            cFunction
hi link csStructure         cStructure


"hi link cIncluded                     special
"hi link cCppString                    cString
"hi cNumber                guifg=#ff0000 guibg=NONE    cterm=none
"hi link cOctal                        cNumber
"hi cString                guifg=#904090 guibg=NONE    cterm=none

"hi cCharacter             guifg=#aa0000 guibg=NONE    cterm=none
"hi cCommentStart          guifg=#404040 guibg=NONE    cterm=none
"hi link cComment                      comment
"hi cStorageClass          guifg=#ffd000 guibg=NONE    cterm=none
"hi cStructure             guifg=#ff8000 guibg=NONE    cterm=none
"hi cType                  guifg=#ff6500 guibg=NONE    cterm=none

"hi link cSpecial                      special
"hi cDefine                guifg=#800080 guibg=NONE    cterm=none
"hi link cInclude                      preProc
"hi cPreCondit             guifg=#8000c4 guibg=NONE    cterm=none
"hi link cPreConditMatch               cPreCondit
"hi link cOctalZero                    cFormat

"hi cOperator              guifg=#8040e0 guibg=NONE    cterm=none

"hi cRepeat                guifg=#8060aa guibg=NONE    cterm=none
