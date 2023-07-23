syntax on
set mouse=a
set number
set encoding=UTF-8
syntax on
"set cursorline
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
set tabstop=4
set cursorline
highlight cursorline ctermbg=237 cterm=bold
set nowrap
"CURSOR SETTINGS""""""""""""""""""
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
"""""""""""""""""""""""""""""""""""""""
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







"SETTINGS FOR C/C++ FILES"

autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30                  "set indent/comment styles for c/cpp files


set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif  
"Restore cursor to file position in previous editing session
