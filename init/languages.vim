" Whitespace & highlighting & language-specific config
" ----------------------------------------------------

" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction

" C family
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp silent! :StripTrailingWhiteSpace

" Highlight objective C files
autocmd BufNewFile,BufRead *.h,*.m,*.mm set filetype=objc

" Ruby, Rails
autocmd BufWritePre *.rb,*.yml,*.js,*.css,*.less,*.sass,*.scss,*.less,*.html,*.xml,*.erb,*.haml,*.feature silent! :StripTrailingWhiteSpace

" Java, PHP
autocmd BufWritePre *.java,*.php,*.feature silent! :StripTrailingWhiteSpace

" Coffeescript
autocmd BufWritePre *.coffee silent! :StripTrailingWhiteSpace

" Python
autocmd BufWritePre *.py silent! :StripTrailingWhiteSpace

" Highlight Jasmine fixture files as HTML
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Highlight GLSL files
au BufRead,BufNewFile *.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl
autocmd BufWritePre *.frag,*.vert,*.fp,*.vp,*.glsl silent! :StripTrailingWhiteSpace

" Consider question/exclamation marks to be part of a Vim word.
autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255

" Insert ' => '
autocmd FileType ruby imap  <Space>=><Space>

" Open all folds in Markdown.
autocmd FileType mkd normal zR
