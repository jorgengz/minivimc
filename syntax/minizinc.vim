" Vim syntax file
" Language: MiniZinc
" Maintainer: Jørgen Granseth
" Latest Revision: 8 September 2015
" Based on http://www.minizinc.org/2.0/doc-lib/doc.html

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "minizinc"

" Conditionals: {{{
syn keyword minizincConditional     if
syn keyword minizincConditional     elseif
syn keyword minizincConditional     else
syn keyword minizincConditional     then
syn keyword minizincConditional     endif
"}}}

" General Keywords: {{{
syn keyword minizincItem            annotation
syn keyword minizincItem            function
syn keyword minizincItem            include
syn keyword minizincItem            let
syn keyword minizincItem            maximize
syn keyword minizincItem            minimize
syn keyword minizincItem            of
syn keyword minizincItem            predicate
syn keyword minizincItem            satisfy
syn keyword minizincItem            solve
syn keyword minizincItem            test
syn keyword minizincItem            type

syn keyword minizincItem            constraint
" }}}
" Constraints: {{{
" Global Constraints: {{{
syn keyword minizincConstraint      arg_max
syn keyword minizincConstraint      arg_min
syn keyword minizincConstraint      circuit
syn keyword minizincConstraint      disjoint
syn keyword minizincConstraint      maximum
syn keyword minizincConstraint      maximum_arg
syn keyword minizincConstraint      member
syn keyword minizincConstraint      minimum
syn keyword minizincConstraint      minimum_arg
syn keyword minizincConstraint      network_flow
syn keyword minizincConstraint      network_flow_cost
syn keyword minizincConstraint      partition_set
syn keyword minizincConstraint      range
syn keyword minizincConstraint      roots
syn keyword minizincConstraint      sliding_sum
syn keyword minizincConstraint      subcircuit
syn keyword minizincConstraint      sum_pred
" }}}
" All-different And Related Constraints: {{{
syn keyword minizincConstraint      alldifferent
syn keyword minizincConstraint      all_different
syn keyword minizincConstraint      all_disjoint
syn keyword minizincConstraint      all_equal
syn keyword minizincConstraint      alldifferent_except_0
syn keyword minizincConstraint      nvalue
syn keyword minizincConstraint      symmetric_all_different
" }}}
" Channeling Constraints: {{{
syn keyword minizincConstraint      int_set_channel
syn keyword minizincConstraint      inverse
syn keyword minizincConstraint      inverse_set
syn keyword minizincConstraint      link_set_to_booleans
" }}}
" Counting Constraints: {{{
syn keyword minizincConstraint      among
syn keyword minizincConstraint      at_least
syn keyword minizincConstraint      at_most
syn keyword minizincConstraint      at_most1
syn keyword minizincConstraint      count
syn keyword minizincConstraint      count_eq
syn keyword minizincConstraint      count_geq
syn keyword minizincConstraint      count_gt
syn keyword minizincConstraint      count_leq
syn keyword minizincConstraint      count_lt
syn keyword minizincConstraint      count_neq
syn keyword minizincConstraint      distribute
syn keyword minizincConstraint      exactly
syn keyword minizincConstraint      global_cardinality
syn keyword minizincConstraint      global_cardinality_closed
syn keyword minizincConstraint      global_cardinality_low_up
syn keyword minizincConstraint      global_cardinality_low_up_closed
" }}}
" Extensional Constraints (table, Regular Etc.): {{{
syn keyword minizincConstraint      regular
syn keyword minizincConstraint      regular_nfa
syn keyword minizincConstraint      table
" }}}
" Lexicographic Constraints: {{{
syn keyword minizincConstraint      lex2
syn keyword minizincConstraint      lex_greater
syn keyword minizincConstraint      lex_greatereq
syn keyword minizincConstraint      lex_less
syn keyword minizincConstraint      lex_lesseq
syn keyword minizincConstraint      strict_lex2
syn keyword minizincConstraint      value_precede
syn keyword minizincConstraint      value_precede_chain
" }}}
" Packing Constraints: {{{
syn keyword minizincConstraint      bin_packing
syn keyword minizincConstraint      bin_packing_capa
syn keyword minizincConstraint      bin_packing_load
syn keyword minizincConstraint      diffn
syn keyword minizincConstraint      diffn_k
syn keyword minizincConstraint      diffn_nonstrict
syn keyword minizincConstraint      diffn_nonstrict_k
syn keyword minizincConstraint      geost
syn keyword minizincConstraint      geost_bb
syn keyword minizincConstraint      knapsack
" }}}
" Scheduling Constraints: {{{
syn keyword minizincConstraint      alternative
syn keyword minizincConstraint      cumulative
syn keyword minizincConstraint      disjunctive
syn keyword minizincConstraint      disjunctive_strict
syn keyword minizincConstraint      span
" }}}
" Sorting Constraints: {{{
syn keyword minizincConstraint      arg_sort
syn keyword minizincConstraint      decreasing
syn keyword minizincConstraint      increasing
syn keyword minizincConstraint      sort
syn keyword minizincConstraint      sort_by
" }}}
" }}}
" Assertions and Debugging Functions: {{{
syn keyword minizincFunction        abort
syn keyword minizincFunction        assert
syn keyword minizincFunction        trace
" }}}

" Identifiers: {{{
syn keyword minizincIdentifier      par
syn keyword minizincIdentifier      var
syn match   minizincIdentifier      '='
" }}}

" Output: {{{
syn keyword minizincOutput          output
syn keyword minizincOutput          show
syn keyword minizincOutput          show_float
syn keyword minizincOutput          show_int

" }}}

" Mathematical Logic Words and Patterns: {{{
" Comparison: {{{
syn match   minizincComparison      '!='
syn match   minizincComparison      '<'
syn match   minizincComparison      '<='
syn match   minizincComparison      '='
syn match   minizincComparison      '>'
syn match   minizincComparison      '>='
syn match   minizincComparison      '\~='
" }}}
" Arithmetic: {{{
syn match   minizincArithmetic      '\*'
syn match   minizincArithmetic      '+'
syn match   minizincArithmetic      '-'
syn match   minizincArithmetic      '/'
syn match   minizincArithmetic      '\~\*'
syn match   minizincArithmetic      '\~+'
syn match   minizincArithmetic      '\~-'
syn keyword minizincArithmetic      div
syn keyword minizincArithmetic      mod
" }}}
" Logical Operations: {{{
syn match   minizincBoolLogic       '->'
syn match   minizincBoolLogic       '/\\'
syn match   minizincBoolLogic       '<-'
syn match   minizincBoolLogic       '<->'
syn match   minizincBoolLogic       '\\/'
syn keyword minizincBoolLogic       clause
syn keyword minizincBoolLogic       exists
syn keyword minizincBoolLogic       forall
syn keyword minizincBoolLogic       iffall
syn match   minizincBoolLogic       '\<not\>'
syn match   minizincFunction        '\<not\(\s*(\)\@='
syn keyword minizincBoolLogic       xor
syn keyword minizincBoolLogic       xorall
" }}}
" Set Operations: {{{
syn match   minizincLogical         '\.\.'
syn keyword minizincFunction        array_intersect
syn keyword minizincFunction        array_union
syn keyword minizincFunction        card
syn match   minizincLogical         '\<diff\>'
syn match   minizincFunction        '\<diff\(\s*(\)\@='
syn match   minizincLogical         '\<in\>'
syn match   minizincFunction        '\<in\(\s*(\)\@='
syn match   minizincLogical         '\<intersect\>'
syn match   minizincFunction        '\<intersect\(\s*(\)\@='
syn match   minizincLogical         '\<subset\>'
syn match   minizincFunction        '\<subset\(\s*(\)\@='
syn match   minizincLogical         '\<superset\>'
syn match   minizincFunction        '\<superset\(\s*(\)\@='
syn match   minizincLogical         '\<symdiff\>'
syn match   minizincFunction        '\<symdiff\(\s*(\)\@='
syn match   minizincLogical         '\<union\>'
syn match   minizincFunction        '\<union\(\s*(\)\@='
" }}}
syn keyword minizincExpression      where
syn match   minizincExpression      '|'
syn match   minizincExpression      '++'
"}}}
" Mathematical Functions: {{{
" Basic Mathematical Functions: {{{
syn keyword minizincFunction        abs
syn keyword minizincFunction        max
syn keyword minizincFunction        min
syn keyword minizincFunction        pow
syn keyword minizincFunction        product
syn keyword minizincFunction        sqrt
syn keyword minizincFunction        sum
" }}}
" Trigonometric Functions: {{{
syn keyword minizincTrigonometric   acos
syn keyword minizincTrigonometric   acosh
syn keyword minizincTrigonometric   asin
syn keyword minizincTrigonometric   asinh
syn keyword minizincTrigonometric   atan
syn keyword minizincTrigonometric   atanh
syn keyword minizincTrigonometric   cos
syn keyword minizincTrigonometric   cosh
syn keyword minizincTrigonometric   sin
syn keyword minizincTrigonometric   sinh
syn keyword minizincTrigonometric   tan
syn keyword minizincTrigonometric   tanh
" }}}
" Exponential and Logarithmic Functions: {{{
syn keyword minizincExponential     exp
syn keyword minizincExponential     ln
syn keyword minizincExponential     log
syn keyword minizincExponential     log10
syn keyword minizincExponential     log2
" }}}
" Coercive Functions: {{{
syn keyword minizincFunction        bool2float
syn keyword minizincFunction        bool2int
syn keyword minizincFunction        ceil
syn keyword minizincFunction        floor
syn keyword minizincFunction        int2float
syn keyword minizincFunction        round
syn keyword minizincFunction        set2array
" }}}
" }}}

" Primitive types: {{{
syn keyword minizincType            ann
syn keyword minizincType            array
syn keyword minizincType            bool
syn keyword minizincType            float
syn keyword minizincType            int
syn keyword minizincType            list
syn keyword minizincType            opt
syn keyword minizincType            set
syn keyword minizincType            string
syn match   minizincType            ':'

" Boolean: {{{
syn keyword minizincBoolean         true
syn keyword minizincBoolean         false
syn keyword minizincFunction        bool_eq
" }}}

" Integer: {{{
syn match   minizincInteger         '\(\(\s\|[[(=]\|\.\.\|->\|<-\)\@<=[+-]\)\=\<[0-9]\+\>' "]
syn match   minizincInteger         '\(\(\s\|[[(=]\|\.\.\|->\|<-\)\@<=[+-]\)\=\<0x[0-9A-Fa-f]\+\>'
syn match   minizincInteger         '\(\(\s\|[[(=]\|\.\.\|->\|<-\)\@<=[+-]\)\=\<0o[0-7]\+\>'
syn keyword minizincFunction        int_eq
syn keyword minizincFunction        int_ne
" }}}

" Floats: {{{
syn match   minizincFloat           '\(\(\s\|[[(=]\|\.\.\|->\|<-\)\@<=[+-]\)\=\<[0-9]\+\.[0-9]\+\>'
syn match   minizincFloat           '\(\(\s\|[[(=]\|\.\.\|->\|<-\)\@<=[+-]\)\=\<[0-9]\+\.[0-9]\+[Ee][-+]?[0-9]\+\>'
syn match   minizincFloat           '\(\(\s\|[[(=]\|\.\.\|->\|<-\)\@<=[+-]\)\=\<[0-9]\+[Ee][-+]?[0-9]\>'
" }}}

" Strings: {{{
syn region  minizincString          start='"'   skip='\\"'  end='"' contains=minizincFormattedString,minizincSpecialChar
syn region  minizincFormattedString start='\\('             end=')' contained contains=minizincFunctionArg,minizincInteger,minizincExpression,minizincArithmetic,minizincTrigonometric,minizincFunction,minizincBoolean
syn match   minizincSpecialChar     '\\n\|\\t'                      contained
syn region  minizincFunctionArg     start='\(\\\@<!\)('     end=')' contained transparent

" String Operations: {{{
syn keyword minizincFunction        concat
syn keyword minizincFunction        format
syn keyword minizincFunction        join
" }}}
" }}}
" Arrays: {{{
syn keyword minizincFunction        array1d
syn keyword minizincFunction        array2d
syn keyword minizincFunction        array3d
syn keyword minizincFunction        array4d
syn keyword minizincFunction        array5d
syn keyword minizincFunction        array6d
syn keyword minizincFunction        arrayXd
syn keyword minizincFunction        col
syn keyword minizincFunction        has_element
syn keyword minizincFunction        has_index
syn keyword minizincFunction        index_set
syn keyword minizincFunction        index_set_1of2
syn keyword minizincFunction        index_set_1of3
syn keyword minizincFunction        index_set_1of4
syn keyword minizincFunction        index_set_1of5
syn keyword minizincFunction        index_set_1of6
syn keyword minizincFunction        index_set_2of2
syn keyword minizincFunction        index_set_2of3
syn keyword minizincFunction        index_set_2of4
syn keyword minizincFunction        index_set_2of5
syn keyword minizincFunction        index_set_2of6
syn keyword minizincFunction        index_set_3of3
syn keyword minizincFunction        index_set_3of4
syn keyword minizincFunction        index_set_3of5
syn keyword minizincFunction        index_set_3of6
syn keyword minizincFunction        index_set_4of4
syn keyword minizincFunction        index_set_4of5
syn keyword minizincFunction        index_set_4of6
syn keyword minizincFunction        index_set_5of5
syn keyword minizincFunction        index_set_5of6
syn keyword minizincFunction        index_set_6of6
syn keyword minizincFunction        index_sets_agree
syn keyword minizincFunction        length
syn keyword minizincFunction        row
" }}}

" }}}

" Annotations: {{{
" General Annotations: {{{
" http://www.minizinc.org/2.0/doc-lib/doc-annotations-general.html
syn match   minizincAnnotation      '::'
syn keyword minizincAnnotation      defines_var
syn keyword minizincAnnotation      doc_comment
syn keyword minizincAnnotation      is_defined_var
syn keyword minizincAnnotation      is_reverse_map
syn keyword minizincAnnotation      output_array
syn keyword minizincAnnotation      output_var
syn keyword minizincAnnotation      promise_total
syn keyword minizincAnnotation      var_is_introduced
" }}}

" Search Annotations: {{{
" http://www..org/2.0/doc-lib/doc-annotations-search.html
syn keyword minizincAnnoFunc        bool_search
syn keyword minizincAnnoFunc        float_search
syn keyword minizincAnnoFunc        int_search
syn keyword minizincAnnoFunc        seq_search
syn keyword minizincAnnoFunc        set_search

" Variable Selection Annotations:
syn keyword minizincAnnotation      anti_first_fail
syn keyword minizincAnnotation      dom_w_deg
syn keyword minizincAnnotation      first_fail
syn keyword minizincAnnotation      impact
syn keyword minizincAnnotation      input_order
syn keyword minizincAnnotation      largest
syn keyword minizincAnnotation      max_regret
syn keyword minizincAnnotation      most_constrained
syn keyword minizincAnnotation      occurrence
syn keyword minizincAnnotation      smallest

" Value Choice Annotations:
syn keyword minizincAnnotation      indomain
syn keyword minizincAnnotation      indomain_interval
syn keyword minizincAnnotation      indomain_max
syn keyword minizincAnnotation      indomain_median
syn keyword minizincAnnotation      indomain_middle
syn keyword minizincAnnotation      indomain_min
syn keyword minizincAnnotation      indomain_random
syn keyword minizincAnnotation      indomain_reverse_split
syn keyword minizincAnnotation      indomain_split
syn keyword minizincAnnotation      indomain_split_random
syn keyword minizincAnnotation      outdomain_max
syn keyword minizincAnnotation      outdomain_median
syn keyword minizincAnnotation      outdomain_min
syn keyword minizincAnnotation      outdomain_random

" Exploration Strategy Annotations:
syn keyword minizincAnnotation      complete

" }}}

" Comments: {{{
syn keyword minizincTodo            TODO                    contained
syn keyword minizincTodo            FIXME                   contained
syn keyword minizincTodo            XXX                     contained
syn keyword minizincTodo            NOTE                    contained
syn match   minizincComment         '%.*$'                  contains=minizincTodo
syn region  minizincComment         start='/\*' end='\*/'   contains=minizincTodo
" }}}

" Option Type Support: {{{
syn keyword minizincFunction        absent
syn keyword minizincFunction        deopt
syn keyword minizincFunction        occurs
syn keyword minizincFunction        element
" }}}

" Reflection Operations: {{{
syn keyword minizincFunction        dom
syn keyword minizincFunction        dom_array
syn keyword minizincFunction        dom_bounds_array
syn keyword minizincFunction        dom_size
syn keyword minizincFunction        fix
syn keyword minizincFunction        has_bounds
syn keyword minizincFunction        has_ub_set
syn keyword minizincFunction        is_fixed
syn keyword minizincFunction        lb
syn keyword minizincFunction        lb_array
syn keyword minizincFunction        ub
syn keyword minizincFunction        ub_array
" }}}

" Links: {{{
hi def link minizincConditional     Conditional
hi def link minizincItem            Statement
hi def link minizincConstraint      minizincFunction
hi def link minizincOutput          Statement
hi def link minizincComment         Comment
hi def link minizincAnnotation      Constant
hi def link minizincAnnoFunc        Function

" Types: {{{
hi def link minizincType            Type
hi def link minizincIdentifier      Identifier
hi def link minizincBoolean         Boolean
hi def link minizincBoolLogic       minizincBoolean
hi def link minizincFloat           Number
hi def link minizincInteger         Number
hi def link minizincString          String
hi def link minizincSpecialChar     Type
" }}}

" Functions: {{{
hi def link minizincFunction        Function
hi def link minizincTrigonometric   minizincFunction
hi def link minizincExponential     minizincFunction
" }}}

" Mathematical Expressions: {{{
hi def link minizincExpression      Special
hi def link minizincArithmetic      minizincExpression
hi def link minizincComparison      minizincBoolLogic
hi def link minizincLogical         minizincExpression
" }}}

" }}}
