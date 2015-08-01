" Vim syntax file
" Language: MiniZinc
" Maintainer: Jørgen Granseth
" Latest Revision: 31 July 2015

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "minizinc"

" General: {{{
syn keyword minizincConditional if elseif else then endif

syn keyword minizincItem        type include constraint
syn keyword minizincItem        solve satisfy minimize maximize
syn keyword minizincItem        annotation predicate test function of

syn keyword minizincFunction    assert max min sum abs alldifferent
syn keyword minizincFunction    sin cos tan asin acos atan sinh cosh

syn keyword minizincOutput      output show show_float

syn match minizincIdentifier    'var\|par\|='
"}}}

" Primitive types: {{{
syn keyword minizincType        bool int float string ann opt array set list
syn match   minizincType        ':'

syn keyword minizincBoolean     true false

syn match minizincInteger       '[0-9]\+'
syn match minizincInteger       '0x[0-9A-Fa-f]\+'
syn match minizincInteger       '0o[0-7]\+'

syn match minizincFloat         '[0-9]\+\.[0-9]\+'
syn match minizincFloat         '[0-9]\+\.[0-9]\+[Ee][-+]?[0-9]\+'
syn match minizincFloat         '[0-9]\+[Ee][-+]?[0-9]'

syn region  minizincString          start='"'   skip='\\"'  end='"' contains=minizincFormattedString,minizincSpecialChar
syn region  minizincFormattedString start='\\('             end=')' contained
syn match   minizincSpecialChar     '\\n\|\\t\|\\f\|\\r'            contained
" }}}

" Mathematical logic words and patterns: {{{
syn match   minizincExpression  '\(\(\<constraint\>\|\<var\>\).\+\)\@<=='
syn keyword minizincExpression  forall exists xorall iffall where
syn match   minizincExpression  '+\|-\|\*\|/'
syn match   minizincExpression  '<->\|->\|<-\|\\/\|/\\'
syn match   minizincExpression  '<=\|>=\|==\|!=\|\.\.\|<\|>\|++\||'
syn keyword minizincExpression  div mod xor
syn keyword minizincExpression  not in subset superset
syn keyword minizincExpression  union diff symdiff intersect inter card
"}}}

syn keyword minizincTodo        TODO FIXME XXX NOTE     contained
syn match   minizincComment     '%.*$'                  contains=minizincTodo
syn region  minizincComment     start='/\*' end='\*/'   contains=minizincTodo

" Links: {{{
hi def link minizincItem        Statement"{{{"}}}
hi def link minizincOutput      Statement
hi def link minizincIdentifier  Identifier
hi def link minizincConditional Conditional
hi def link minizincType        Type
hi def link minizincBoolean     Boolean
hi def link minizincInteger     Number
hi def link minizincFloat       Number
hi def link minizincString      String
hi def link minizincComment     Comment
hi def link minizincFunction    Function
hi def link minizincExpression  Special
hi def link minizincSpecialChar Type
" }}}
