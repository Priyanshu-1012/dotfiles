"""""""""""""""""""""""""""""""""""""""""""""""""""""
"░░░██╗░░░██╗██╗███╗░░░███╗██████╗░░█████╗░
"░░░██║░░░██║██║████╗░████║██╔══██╗██╔══██╗
"░░░╚██╗░██╔╝██║██╔████╔██║██████╔╝██║░░╚═╝
"░░░░╚████╔╝░██║██║╚██╔╝██║██╔══██╗██║░░██╗
"██╗░░╚██╔╝░░██║██║░╚═╝░██║██║░░██║╚█████╔╝
"╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░ https://github.com/Priyanshu-1012/my-dotfiles
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
""cut n copy key mapping
vnoremap <C-c> "+y  
map <C-u> "+c
"""""""VIM LOOKS
set nu            
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
""""""""""""NEW COMMANDS
command! Ranger FloatermNew ranger
command! -nargs=0 Py FloatermNew python
command! Htop  FloatermNew htop 
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
"---------themes---------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'semibran/vim-colors-synthetic'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rose-pine/vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'nanotech/jellybeans.vim'
Plug 'hardhackerlabs/theme-vim', { 'as': 'hardhacker' }
Plug 'ghifarit53/tokyonight-vim'
"---------------------------
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
"Plug 'bagrat/vim-buffet'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'voldikss/vim-floaterm'
"Plug 'yggdroot/indentline'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'terryma/vim-multiple-cursors'
Plug 'ap/vim-css-color'
"Plug 'jceb/vim-orgmode'
"Plug 'vimwiki/vimwiki'
Plug 'lervag/wiki.vim'
"Plug 'suoto/vim-hdl'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""AIRLINE CUSTOMIZATION
let g:airline_powerline_fonts = 1
let air_sel = 1 "take values 0-4
let lsep = ['', '', '' , '' , '']
let rsep = ['', '', '' , '' , ''] 
let lasep = ['', '', '', '' , '']
let rasep = ['', '', '', '' , '']
let g:airline_left_sep = lsep[air_sel]
let g:airline_left_alt_sep = lasep[air_sel]
let g:airline_right_sep = rsep[air_sel]   
let g:airline_right_alt_sep = rasep[air_sel]
let g:airline_extensions = ['branch', 'tabline'] "if branch icon not showing do :PlugUpdate
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_z = airline#section#create(['%3p%% %L:%3v'])  "for a simpler section Z
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""COLOR THEME
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:embark_terminal_italics = 1
"colorscheme tokyonight
"colorscheme catppuccin_mocha
colorscheme embark
"cycle through theme with leader-t
let s:themes = ['tokyonight', 'rosepine', 'synthetic', 'ayu_dark', 'ayu_mirage', 'dracula', 'peachpuff', 'catppuccin_mocha', 'catppuccin_frappe', 'onehalfdark', 'hardhacker', 'embark', 'jellybeans', 'shades_of_purple', 'ron']
let s:current_theme = 1 "0 to n

function! CycleThemes()
    let s:current_theme += 1
    if s:current_theme >= len(s:themes)
        let s:current_theme = 0
    endif
    execute 'colorscheme ' . s:themes[s:current_theme]
endfunction

nnoremap <Leader>t :call CycleThemes()<CR>

"""""""""""""""""""""""""""""""""""""""""""STARTIFY"
let g:webdevicons_enable_startify = 1
let g:startify_fortune_use_unicode = 1 " beautiful symbols
let g:startify_padding_left = 3 " the number of spaces used for left padding
let g:startify_custom_header =
         \ startify#pad(readfile('/home/xuxin/Documents/asciiart/pac-ascii.txt'))
let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ["  Bookmarks"]      },
      \ { 'type': 'files',     'header': [" 󰈙 MRU Files"]            },
      \ { 'type': 'dir',       'header': ["  MRU Files in ". getcwd()] },
      \ { 'type': 'commands',  'header': ["  Commands"]       },
      \ ]
""""""""""
let g:startify_bookmarks = [ 
         \{ 'v' : '~/.vimrc' },
         \{ 'b' : '~/.bashrc' },
         \{ 'a' : '~/.bash_aliases'}
         \]

let g:startify_enable_special = 0   "disable quit and empty buffer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""FLOATERM
let g:floaterm_keymap_toggle= '<F8>'
let g:floaterm_keymap_kill= '<F12>'
let g:floaterm_keymap_prev= '<F9>'
let g:floaterm_keymap_new= '<F7>'
let g:floaterm_autoclose=1
""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""NERD Tree 
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1 "show hidden files
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
"let g:NERDTreeLimitedSyntax = 1 "disable uncommon extension highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""switch next buffer by TAB key
noremap <Tab> :bn<CR>
"let g:indentLine_char = '|' "indent line character
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""VIMWIKI
let g:wiki_root = '~/Documents/wikivim'
"let g:vimwiki_list=[{'path':'~/Documents/vimwroniki/', 'syntax' : 'markdown','ext' : '.md' }]
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""Cpp file boiler plate

au BufNewFile *.cpp 0r ~/.vim/templates/cpp_template.cpp
au BufNewFile *.cpp call cursor(6,0) 
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""Verilog file config
source ~/.vim/verilogconfigs.vim

""""""""""DEVICONS
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {
         \ 'v': '󰍛',
         \ 'sv':'󰍛',
         \ 'vhd': '󰍛',
         \ 'vhdl': '󰍛'}

""""""""""""""""""""""""""""""""""""""indentline"
let g:indentLine_char = '▏'
