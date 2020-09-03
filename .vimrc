" vim:fileencoding=utf-8

" ==================== BASIC SETTINGS ====================
set fileencoding=utf-8
set encoding=utf-8
set backspace=2    " Backspace deletes as expected in other programs
set history=50     " Expand history
set number         " Show line numbers with a little room
set numberwidth=5
set ruler          " Show cursor position all the time
set showcmd        " Display incomplete commands
set autoindent
set laststatus=2   " Always show the status line
set tabstop=4      " Softabs, 2 spaces
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set nojoinspaces   " Use one space, not two, after punctuation
set textwidth=80   " Make it obvious where 80 characters is
set colorcolumn=+1
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
set splitright     " Open new split panes to right and bottom for natural feel
set splitbelow
set modelines=1
set modeline


" ==================== SIMPLE TWEAKS =====================
" Enforce VIM Navigation
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
" Quicker Window Movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


" ==================== ADVANCED TWEAKS ===================
map <F8> <esc>:set syntax=html<cr>
imap <F8> <esc><esc>:set syntax=html<cr>a
map <F7> <esc>:set syntax=python<cr>
imap <F7> <esc><esc>:set syntax=python<cr>a
map <F6> <esc>:set syntax=javascript<cr>
imap <F6> <esc><esc>:set syntax=javascript<cr>a

map <f9> <esc>:w<cr>:!W<cr>
imap <f9> <esc>:w<cr>:!W<cr>a

imap <Insert> <Nop>

imap <F5> vim:fileencoding=utf-8:ts=4:sw=4:sts=4:expandtab<cr>
map <F5> <Insert>vim:fileencoding=utf-8:ts=4:sw=4:sts=2:expandtab<cr><esc>


if has('mouse')
"  set mouse=a
endif
