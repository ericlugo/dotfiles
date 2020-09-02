" ======== BASIC SETTINGS ========
set encoding=utf-8
set backspace=2    " Backspace deletes as expected in other programs
set history=50     " Expand history
set number         " Show line numbers with a little room
set numberwidth=5
set ruler          " Show cursor position all the time
set showcmd        " Display incomplete commands
set laststatus=2   " Always show the status line
set tabstop=2      " Softabs, 2 spaces
set shiftwidth=2
set shiftround
set expandtab
set nojoinspaces   " Use one space, not two, after punctuation
set textwidth=80   " Make it obvious where 80 characters is
set colorcolumn=+1
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
set splitright     " Open new split panes to right and bottom for natural feel
set splitbelow

" ======== SIMPLE TWEAKS ========
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

