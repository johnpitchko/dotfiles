"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ALE (Asynchronous Lint Engine)
""
"" :ALEFix                to fix current file
"" :ALEGoToDefinition     jump to definition under cursor
"" :ALEFindReferences     jump to reference under cursor
"" :ALEHover              display brief information about symbols under cursor
"" :ALERename             rename symbols (e.g. variables or class names)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
  \   'ruby': ['rubocop', 'solargraph'],
  \   'eruby': ['erb'],
\}
" \   'ruby': ['rubocop', 'solargraph', 'reek', 'rails_best_practices', 'debride', 'brakeman'],

let g:ale_fixers = {
 \ '*': ['remove_trailing_lines', 'trim_whitespace'],
 \ 'css': ['prettier'],
 \ 'javascript': ['prettier', 'eslint'],
 \ 'ruby': ['rubocop'],
 \ 'eruby': ['erblint'],
 \ }

" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" Automatically fix files on save
let g:ale_fix_on_save = 1

" Rainbow Parentheses Improved
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
