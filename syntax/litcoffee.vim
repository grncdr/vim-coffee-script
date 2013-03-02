" Include markdown for literate coffee

" Bail if our syntax is already loaded.
if exists('b:current_syntax') && b:current_syntax == 'litcoffee'
  finish
endif

runtime! syntax/markdown.vim

if !exists('b:current_syntax')
  let b:current_syntax = 'litcoffee'
endif

syn include @markdownCoffee syntax/coffee.vim
syn region coffeeScript start=/^    / skip=/^    / end=/\n[^ \n]/ contains=@markdownCoffee

