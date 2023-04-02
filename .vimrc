"________________________"
" VIM CONFIGURATION "
"-------------------------"


"AUTOREAD WHEN FILE CHANGED FROM OUTSIDE"
set autoread



"AUTORELOAD VIMRC WHILE EDITING"
autocmd! bufwritepost .vimrc source ~/.vimrc   



"ENABLE MOUSE SUPPORT"
set mouse=a



"ENABLE SYNTAX"
syntax on



"ENABLE LINE NUMBER"
set number

     "set line number color to light gray
     highlight LineNr cterm=bold ctermfg=lightgray



"HIGHLIGHT CURRENT LINE"
set cursorline
:highlight Cursorline cterm=bold ctermbg=black



"ENABLE HIGHLIGHT SEARCH  W/ CASE SENSITIVITY" 
set hlsearch
set ignorecase
set smartcase



"INDENTATION SPACES"
set tabstop =4
set softtabstop =4
set shiftwidth =4
set textwidth =79
set expandtab
set autoindent
set smarttab


"SHOW MATCHING PARENTHESIS  [] {} ()"
set showmatch



"NO SOUND ON ERRORS"
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""''
"CUSTOM STATUS LINE SETTING {

set laststatus=2 		  	    		 "status line always visible
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \   "set format of statusline,paste-option/25charNameofFile_alignLeft/hyphen for modificatn,read-only,helpfile,unwritable 
set statusline+=\ \ \ [%{&ff}/%Y]                           "display file format & type
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\  "displays the hostname n current directory of the file(max 30char,leftalign)
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L                   "add space, percentage visible and no. of lines in file

function! CurDir()			
    let curdir = substitute(getcwd(), $HOME, "~", "")	
    return curdir							"script to display file current directly with home direct >> ~
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else							 	"script to display PASTE if that optn is selected
        return ''
    endif
endfunction

"}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"SETTINGS FOR C/C++ FILES"

autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30                  "set indent/comment styles for c/cpp files


set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif  
"Restore cursor to file position in previous editing session
