" Vim syntax file
" Language:   ABC (A Bloody Compiler)
" Maintainer: Michael Christian Lehn <michael.lehn@uni-ulm.de>
" Last Change:        2022-7-10
" License:            Vim (see :h license)

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax case match

syntax match abcIdentifier /[A-Za-z_][A-Za-z0-9_]*/ skipwhite
" syntax match abcMinus /[-]/ contained skipwhite
syntax match abcIdentifier /[A-Za-z_][A-Za-z0-9_]*/
 
syntax match keyword /\<label\>/ skipwhite 
syntax match keyword /\<fn\>/ skipwhite 
syntax match keyword /\<_fn\>/ skipwhite 
syntax match keyword /\<for\>/ skipwhite
syntax match keyword /\<do\>/ skipwhite
syntax match keyword /\<while\>/ skipwhite
syntax match keyword /\<if\>/ skipwhite
syntax match keyword /\<else\>/ skipwhite
syntax match keyword /\<then\>/ skipwhite
syntax match keyword /\<local\>/ skipwhite
syntax match keyword /\<global\>/ skipwhite
syntax match keyword /\<static\>/ skipwhite
syntax match keyword /\<extern\>/ skipwhite
syntax match keyword /\<return\>/ skipwhite
syntax match keyword /\<array\>/ skipwhite
syntax match keyword /\<of\>/ skipwhite
syntax match keyword /\<type\>/ skipwhite
syntax match keyword /\<let\>/ skipwhite
syntax match keyword /\<sizeof\>/ skipwhite
syntax match keyword /\<cast\>/ skipwhite
syntax match keyword /\<break\>/ skipwhite
syntax match keyword /\<continue\>/ skipwhite
syntax match keyword /\<switch\>/ skipwhite
syntax match keyword /\<case\>/ skipwhite
syntax match keyword /\<default\>/ skipwhite
syntax match keyword /\<struct\>/ skipwhite
syntax match keyword /\<union\>/ skipwhite
syntax match keyword /\<enum\>/ skipwhite
syntax match keyword /\<goto\>/ skipwhite

syntax match abcLiteral /\<true\>/ skipwhite
syntax match abcLiteral /\<false\>/ skipwhite

syntax match type /\<const\>/ skipwhite
syntax match type /\<readonly\>/ skipwhite
syntax match type /\<volatile\>/ skipwhite
syntax match type /\<void\>/ skipwhite
syntax match type /\<bool\>/ skipwhite
syntax match type /\<float\>/ skipwhite
syntax match type /\<double\>/ skipwhite
syntax match type /\<char\>/ skipwhite
syntax match type /\<u8\>/ skipwhite
syntax match type /\<u16\>/ skipwhite
syntax match type /\<u32\>/ skipwhite
syntax match type /\<u64\>/ skipwhite
syntax match type /\<i8\>/ skipwhite
syntax match type /\<i16\>/ skipwhite
syntax match type /\<i32\>/ skipwhite
syntax match type /\<i64\>/ skipwhite
syntax match type /\<size_t\>/ skipwhite
syntax match type /\<ptrdiff_t\>/ skipwhite
syntax match type /\<int\>/ skipwhite
syntax match type /\<long\>/ skipwhite
syntax match type /\<long_long\>/ skipwhite
syntax match type /\<unsigned\>/ skipwhite
syntax match type /\<unsigned_long\>/ skipwhite
syntax match type /\<unsigned_long_long\>/ skipwhite

syn region cDefine start="^\s*\zs\%(%:\|#\)\s*\%(define\|undef\)\>" skip="\\$" end="$" keepend
syn region cIncluded display contained start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match  cIncluded display contained "<[^>]*>"
syn match  cInclude display "^\s*\zs\%(%:\|#\)\s*include\>\s*["<]" contains=cIncluded
syn match  cInclude display "^\s*\zs\%(%:\|@\)\s*.*$" contains=cIncluded
syn region cPreCondit   start="^\s*\zs\%(%:\|#\)\s*\%(if\|ifdef\|ifndef\|elif\)\>" skip="\\$" end="$" keepend contains=comment
syn match  cPreCondit display "^\s*\zs\%(%:\|#\)\s*\%(else\|endif\)\>"


syntax match abcLiteral /[+-]*[1-9][0-9]*/ skipwhite
syntax match abcLiteral /nullptr/ skipwhite
syntax match abcLiteral /[0-7][0-7]*/ skipwhite
syntax match abcLiteral /0x[0-9a-fA-F][0-9a-fA-F]*/ skipwhite
syntax region abcLiteral start=/"/ skip=/\\"/ end=/"/ skipwhite
syntax match abcLiteral /'.'/ skipwhite
syntax match abcLiteral /'\\[^\\]'/ skipwhite
"syntax match ident /[a-zA-Z][a-zA-Z0-9_]*/ skipwhite

syntax region comment start="//" end="$" skipwhite
syntax region comment start="/\*" end="\*/" skipwhite


highlight def link keyword Statement
highlight def link type Type
highlight def link abcLiteral Number
highlight def link comment Comment

hi def link cDefine             Macro
hi def link cIncluded           cString
hi def link cInclude            Include
hi def link cPreCondit          PreCondit
hi def link cString		String

let b:current_syntax = "abc"
