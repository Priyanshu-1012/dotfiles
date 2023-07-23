set number
"set termguicolors
syntax on
set cursorline
" Set the line number color to dark grey
highlight LineNr ctermfg=darkgray

" Set the active line number color to white
highlight ActiveLineNr guifg=white ctermfg=white

" Set the cursorline color to bold with a light grey background (color 237)
highlight cursorline ctermbg=237 cterm=bold

" Set cursor shape to a pipe in normal and visual mode, and make it blink
if has('autocmd')
  autocmd InsertEnter * silent execute "!echo -ne '\e[6 q'" | redraw!
  autocmd InsertLeave * silent execute "!echo -ne '\e[2 q'" | redraw!
  autocmd VimEnter,FocusGained,BufWinEnter * silent execute "!echo -ne '\e[1 q'" | redraw!
  autocmd VimLeave,FocusLost,BufWinLeave * silent execute "!echo -ne '\e[2 q'" | redraw!
endif
""""""""""""""""""
set autoindent		" auto indentation
set incsearch		" incremental search
set nobackup		" no *~ backup files
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab		" insert tabs on the start of a line according to context

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=3 
   set shiftwidth=3 

   au FileType Makefile set noexpandtab
"}   
""""""""""""""""'
""""""""""""""""''
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
"""""""

set mouse=a
" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

call plug#begin('~/local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'flazz/vim-colorschemes'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()
let g:airline_powerline_fonts = 1
"""""""""THEME""""
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
