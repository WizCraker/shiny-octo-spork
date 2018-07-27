" Based on Michael Geddes standard settings

" Pressing Ctrl-N twice in normal mode, Vim toggles between
" showing and hiding line numbers.
nmap <C-N><C-N> :set invnumber<CR>

" Set Display of Line Numbers along the left side of a window
"set number

" Set Make to compile correctly in Vi
set makeprg=make\ %:r.o

" Smart tabbing / autoindenting
set undolevels=100
set nocompatible
set autoindent
set smarttab

" Allow backspace to back over lines
set backspace=2
set exrc
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cino=t0
set cindent shiftwidth=4

" I like it writing automatically on swapping
set autowrite
set noshowcmd
if  exists('&selection')
set selection=exclusive
endif

if has("gui_running")
    " set the font to use
    set guifont=Courier_New:h10
    " Hide the mouse pointer while typing
    set mousehide
endif

" This changes the status bar highlight slightly from the default
" " set highlight=8b,db,es,mb,Mn,nu,rs,ss,tb,vr,ws

"I like things quiet
set visualbell
" Give some room for errors
set cmdheight=2
" always show a status line
au VimEnter * set laststatus=2
set ruler
" Use a viminfo file
set viminfo='20,\"50
"set path=.,d:\wave,d:\wave\include,d:\wave\fdt
set textwidth=80        " always limit the width of text to 80
set backup              " keep a backup file
set backupext=.bak
" Like having history
set history=100

" Map Y do be analog of D
map Y y$
" Toggle paste
map zp :set paste! paste?<CR>

" So I can get to ,
noremap g, ,

" Switch off search pattern highlighting.
set nohlsearch

set shellpipe=2>&1\|tee

if has("gui_running")
"if &columns < 90 && &lines < 32
"   win 90 32
    au GUIEnter * win 90 32
"  endif
  " Make external commands work through a pipe instead of a pseudo-tty
  set noguipty
endif

" Map control-cr to goto new line without comment leader
imap <C-CR> <ESC>o

" Look at syntax attribute
nmap <F4> :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>
nmap <S-F4> :echo synIDattr(synID(line("."), col("."), 0), "name")<CR>
" delete the swap file
nmap \\. :echo strpart("Error  Deleted",7*(0==delete(expand("%:p:h")."/.".expand("%:t").".swp")),7)<cr>

" delete prev word
imap <C-BS> <c-w>

  set joinspaces

" Today
if !exists('usersign')
let usersign=$username
endif
imap <F2> <C-R>=strftime("%d%b%Y")." ".usersign.":"<CR>
if has("menu")
  imenu 35.60 &Insert.&Date<tab>F2      <c-r>=strftime("%d%b%Y")." ".usersign.":"<CR>
  menu  35.60 &Insert.&Date<tab>F2      "=strftime("%d%b%Y")." ".usersign.":"<CR>p
  imenu  35.60 &Insert.Date\ and\ &Username     <c-r>=strftime("%d%b%Y")<CR>
  menu  35.60 &Insert.Date\ and\ &Username      "=strftime("%d%b%Y")<CR>p
endif

" Enable 'wild menus'
set wildmenu
set showfulltag
set display+=lastline
set printoptions=syntax:y,wrap:y

" Switch on syntax highlighting.
syntax on

" Set background to dark to make colors pop
set background=dark

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
