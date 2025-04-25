" Vim syntax file
" Language:   ABC (A Bloody Compiler)
" Maintainer: Michael Christian Lehn <michael.lehn@uni-ulm.de>
" Last Change: 2022-07-10
" License: Vim (see :h license)

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax case match

" Identifiers (Variablen, Funktionsnamen)
syntax match abcIdentifier /\<[A-Za-z_][A-Za-z0-9_]*\>/ containedin=ALL

" Keywords
syntax keyword abcKeyword label fn _fn for do while if else then local global
syntax keyword abcKeyword static extern return array of type let sizeof cast
syntax keyword abcKeyword break continue switch case default struct union enum goto

" Boolean Literals
syntax keyword abcLiteral true false nullptr

" Numeric Literals (Integer, Hex, Octal)
syntax match abcLiteral /\<[+-]\?[1-9][0-9]*\>/ contained
syntax match abcLiteral /\<0[0-7]*\>/ contained " Oktalzahlen
syntax match abcLiteral /\<0x[0-9a-fA-F]\+\>/ contained " Hexadezimalzahlen

" String Literals
syntax region abcString start=/"/ skip=/\\"/ end=/"/ contains=@Spell
syntax match abcCharLiteral /'\\\?.'/

" Kommentare
syntax region abcComment start="//" end="$" contains=@Spell
syntax region abcComment start="/\*" end="\*/" contains=@Spell

" Datentypen
syntax keyword abcType const readonly void bool float double char
syntax keyword abcType u8 u16 u32 u64 i8 i16 i32 i64 size_t ptrdiff_t
syntax keyword abcType int long long_long unsigned unsigned_long unsigned_long_long

" Präprozessor (C-ähnliche Direktiven)
syntax match abcPreProcessor "^\s*\zs\%(%:\|#\)\s*define\>" contained
syntax match abcPreProcessor "^\s*\zs\%(%:\|#\)\s*include\>" contained
syntax match abcPreProcessor "^\s*\zs\%(%:\|#\)\s*\%(if\|ifdef\|ifndef\|elif\|else\|endif\)\>" contained

" Highlighting (Farben zuweisen)
highlight link abcKeyword Statement
highlight link abcType Type
highlight link abcLiteral Number
highlight link abcString String
highlight link abcCharLiteral Character
highlight link abcComment Comment
highlight link abcPreProcessor PreProc
highlight link abcIdentifier Identifier

let b:current_syntax = "abc"

