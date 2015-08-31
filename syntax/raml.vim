" Vim syntax file
" Language: RAML
" Maintainer: Kenneth Feng

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword ramlKeywords title baseUri version displayName
syn keyword ramlKeywords schemas resourceTypes traits
syn keyword ramlKeywords description queryParameters
syn keyword ramlKeywords headers type body responses
syn keyword ramlKeywords example securedBy mediaType
syn keyword ramlPinkThings schemas schema securitySchemes
syn keyword ramlVerbs get post put delete

" Patterns
syn match ramlResource /^\s*\/[a-zA-Z\-_\{\}]*/
syn match ramlHeader /#%RAML .*$/
syn match ramlHTTPCode /\<\d\d\d\>/
syn match ramlKey /- \s*\<\w*\>/
"syn match ramlParameter /\{\w+\}/

let b:current_syntax = "raml"

"hi def link ramlKeywords Statement
"hi def link ramlVerbs Identifier
"hi def link ramlResource Constant
"hi def link ramlHeader Type
hi def ramlKeywords ctermfg=Brown
hi def ramlVerbs ctermfg=Blue
hi def ramlResource ctermfg=Red
hi def ramlHeader ctermfg=Green
hi def ramlHTTPCode ctermfg=Yellow
hi def ramlPinkThings ctermfg=LightRed
hi def ramlKey ctermfg=LightBlue
