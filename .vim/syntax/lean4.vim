" Vim syntax file for Lean 4

if exists("b:current_syntax")
  finish
endif

" Keywords
syntax keyword lean4Keyword if then else match with do return let have where
syntax keyword lean4Keyword fun λ forall ∀ exists ∃
syntax keyword lean4Keyword import open namespace section end
syntax keyword lean4Keyword variable universe set_option
syntax keyword lean4Keyword by sorry admit

" Declaration keywords
syntax keyword lean4Decl def theorem lemma example abbrev
syntax keyword lean4Decl structure class instance inductive
syntax keyword lean4Decl axiom constant opaque

" Types
syntax keyword lean4Type Nat Int Bool String Char Unit Prop Type
syntax keyword lean4Type List Array Option IO

" Boolean/unit values
syntax keyword lean4Boolean true false
syntax keyword lean4Constant () 

" Comments
syntax match lean4Comment "--.*$" contains=lean4Todo
syntax region lean4BlockComment start="/-" end="-/" contains=lean4Todo,lean4BlockComment
syntax keyword lean4Todo TODO FIXME NOTE XXX contained

" Strings
syntax region lean4String start=+"+ skip=+\\"+ end=+"+

" Numbers
syntax match lean4Number "\<\d\+\>"
syntax match lean4Number "\<0x[0-9a-fA-F]\+\>"

" Operators
syntax match lean4Operator ":="
syntax match lean4Operator "=>"
syntax match lean4Operator "->"
syntax match lean4Operator "→"
syntax match lean4Operator "←"
syntax match lean4Operator "<-"
syntax match lean4Operator "|"
syntax match lean4Operator ":"

" Function/theorem definitions
syntax match lean4Function "\w\+\ze\s*:"
syntax match lean4Function "\w\+\ze\s*("

" Tactics (common ones)
syntax keyword lean4Tactic intro intros apply exact rfl simp
syntax keyword lean4Tactic cases induction constructor
syntax keyword lean4Tactic rw rewrite have show suffices
syntax keyword lean4Tactic assumption trivial decide
syntax keyword lean4Tactic unfold ring linarith omega

" Attributes
syntax match lean4Attribute "@\[\w\+\]"
syntax match lean4Attribute "#\w\+"

" Highlighting links
highlight link lean4Keyword Keyword
highlight link lean4Decl Keyword
highlight link lean4Type Type
highlight link lean4Boolean Boolean
highlight link lean4Constant Constant
highlight link lean4Comment Comment
highlight link lean4BlockComment Comment
highlight link lean4Todo Todo
highlight link lean4String String
highlight link lean4Number Number
highlight link lean4Operator Operator
highlight link lean4Function Function
highlight link lean4Tactic Special
highlight link lean4Attribute PreProc

let b:current_syntax = "lean4"


" Conceal settings
setlocal conceallevel=2
setlocal concealcursor=
highlight Conceal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Greek letters
syntax match lean4Conceal /\\a\>/ conceal cchar=α
syntax match lean4Conceal /\\b\>/ conceal cchar=β
syntax match lean4Conceal /\\g\>/ conceal cchar=γ
syntax match lean4Conceal /[\\]e\>/ conceal cchar=ε
syntax match lean4Conceal /[\\]s\>/ conceal cchar=σ

" Logic symbols
syntax match lean4Conceal /\\not\>/ conceal cchar=¬
syntax match lean4Conceal /\\and\>/ conceal cchar=∧
syntax match lean4Conceal /\\or\>/ conceal cchar=∨
syntax match lean4Conceal /\\fo\>/ conceal cchar=∀
syntax match lean4Conceal /\\ex\>/ conceal cchar=∃
syntax match lean4Conceal /\\in\>/ conceal cchar=∈

" Arrows
syntax match lean4Conceal /->/ conceal cchar=→
syntax match lean4Conceal /<->/ conceal cchar=↔
"syntax match lean4Conceal /\\<-/ conceal cchar=←
syntax match lean4Conceal /<-/ conceal cchar=←
syntax match lean4Conceal /\\=>/ conceal cchar=⇒
syntax match lean4Conceal /\\==>/ conceal cchar=⟹
syntax match lean4Conceal /\\mapsto\>/ conceal cchar=↦

" Comparison/sets
syntax match lean4Conceal /\\<=/ conceal cchar=≤
syntax match lean4Conceal /\\>=/ conceal cchar=≥
syntax match lean4Conceal /\\neq\>/ conceal cchar=≠
"syntax match lean4Conceal /\\~~/ conceal cchar=≈
syntax match lean4Conceal /\\[~][~]/ conceal cchar=≈
syntax match lean4Conceal /\\empty\>/ conceal cchar=∅
syntax match lean4Conceal /\\union\>/ conceal cchar=∪
syntax match lean4Conceal /\\intersect\>/ conceal cchar=∩
syntax match lean4Conceal /[\\]x\>/ conceal cchar=×
syntax match lean4Conceal /\\circ\>/ conceal cchar=∘

" Subscripts
syntax match lean4Conceal /\\0\>/ conceal cchar=₀
syntax match lean4Conceal /\\1\>/ conceal cchar=₁
syntax match lean4Conceal /\\2\>/ conceal cchar=₂
syntax match lean4Conceal /\\3\>/ conceal cchar=₃
syntax match lean4Conceal /\\4\>/ conceal cchar=₄
syntax match lean4Conceal /\\5\>/ conceal cchar=₅
syntax match lean4Conceal /\\6\>/ conceal cchar=₆
syntax match lean4Conceal /\\7\>/ conceal cchar=₇
syntax match lean4Conceal /\\8\>/ conceal cchar=₈
syntax match lean4Conceal /\\9\>/ conceal cchar=₉

" Brackets
syntax match lean4Conceal /\\\[\[/ conceal cchar=⟦
syntax match lean4Conceal /\\\]\]/ conceal cchar=⟧

highlight link lean4Conceal Operator