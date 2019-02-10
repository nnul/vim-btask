" Vim syntax file for todo lists
" Language:     TODO
" Author:       Keith W. Thompson <keith@nnul.me>
" Date:         2013.02.28
" File Types:   .todo
" Version:      1.0.0
" Tokens:
"   'x' - completed task
"   '-' - discarded / unfinished task
"   '!' - urgent item
"   '^' - high priority item
"   ' ' - normal todo item
"   '_' - low priority item

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" patterns
"syn match todoBoxUrgent    display "\[\!\]"
"syn match todoBoxHigh      display "\[\^\]"
syn match todoBoxNormal    display "\[ \]"
"syn match todoBoxLow       display "\[_\]"
"syn match todoBoxComplete  display "\[x\]"
"syn match todoBoxDiscard   display "\[-\]"

syn match todoTaskUrgent   display "\[\!\].*$"
syn match todoTaskHigh     display "\[\^\].*$"
"syn match  tTaskNormal     display "\[ \].*$"
syn match todoTaskLow      display "\[_\].*$"
syn match todoTaskComplete display "\[x\].*$"
syn match todoTaskDiscard  display "\[-\].*$"

syn match todoTitle         display "#.*$"

syn region  todoDate       start='<' end='>'

" highlights
"hi def link  todoBoxUrgent    Error
"hi def link  todoBoxHigh      Todo
hi def link todoBoxNormal     Bold
"hi def link todoBoxLow        LineNr
"hi def link  todoBoxComplete  Comment
"hi def link  todoBoxDiscard   Comment

hi def link todoTaskUrgent    Error
hi def link todoTaskHigh      Statement
"hi def link  todoTaskNormal   Normal
hi def link todoTaskLow       LineNr
hi def link todoTaskComplete  Comment
hi def link todoTaskDiscard   Comment
hi def link todoTitle         CommentDoc

hi def link todoDate          Identifier

let b:current_syntax = "todo"
