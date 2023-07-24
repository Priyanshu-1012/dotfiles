""""""""""""""""""""""""""""""""""""""""""""""""""""""
"░░░██╗░░░██╗██╗███╗░░░███╗██████╗░░█████╗░
"░░░██║░░░██║██║████╗░████║██╔══██╗██╔══██╗
"░░░╚██╗░██╔╝██║██╔████╔██║██████╔╝██║░░╚═╝
"░░░░╚████╔╝░██║██║╚██╔╝██║██╔══██╗██║░░██╗
"██╗░░╚██╔╝░░██║██║░╚═╝░██║██║░░██║╚█████╔╝
"╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""BASIC CONFIG
let mapleader = " "   "map leader to Space
set path+=**          "path for easy file find
set mouse=a
set nobackup
set history=1000
set nowrap
set noshowmode      "because i already have airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""VIM LOOKS
set number            
set encoding=UTF-8  
syntax on
set cursorline                  

" Set the line number color to dark grey
highlight LineNr ctermfg=darkgray 

"Set the active line number color to white
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""INDENTATION and SEARCH
set autoindent		" auto indentation
set incsearch		" incremental search
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab		" insert tabs on the start of a line according to context
set showcmd         " Show partial command you type in the last line of the screen.
set showmatch       " Show matching words during a search
set hlsearch        " Highlighting when search
""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""" TAB setting
   set expandtab        "replace <TAB> with spaces
   set softtabstop=3 
   set shiftwidth=4 
   set tabstop=4
   au FileType Makefile set noexpandtab 
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""FILETYPE
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""PLUG
call plug#begin('~/local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'flazz/vim-colorschemes'
Plug 'ghifarit53/tokyonight-vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'sheerun/vim-polyglot'
Plug 'bagrat/vim-buffet'
Plug 'yuttie/comfortable-motion.vim'
Plug 'ap/vim-css-color'
Plug 'jceb/vim-orgmode'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""AIRLINE CUSTOMIZATION
let g:airline_powerline_fonts = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""COLOR THEME
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""NERD Tree toggle with Ctrl+N
nmap <C-n> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""BUFFER-TABLINE
let g:buffet_always_show_tabline=0 "dont show when only one tab open
let g:buffet_powerline_separators=1 "seperator icons
let g:buffet_tab_icon=''  
let g:buffet_modified_icon=''

function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=bold ctermbg=5 ctermfg=8 guibg=#a9ff82 guifg=#a9b1d6
   hi! BuffetBuffer cterm=bold ctermbg=5 ctermfg=8 guibg=#232433 guifg=#a9b1d6
   hi! BuffetTab cterm=bold ctermbg=5 ctermfg=8 guibg=#232433 guifg=#a9b1d6
  hi! BuffetModCurrentBuffer cterm=bold ctermbg=5 ctermfg=8 guibg=#ffd976 guifg=#a9b1d6
endfunction

"switch next buffer by TAB key
noremap <Tab> :bn<CR> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""VIMWIKI
let g:vimwiki_list=[{'path':'~/Documents/vimwiki/', 'syntax' : 'markdown','ext' : '.md' }]
""""""""""""""""""""""""""""""""""""""""""""""""""""""
