call pathogen#infect()      "Executes the pathogen plugin, which loads other plugins
let mapleader=","           "Changes Leader key into a comma instead of a backslash
set nocompatible            "Prefents VIM from being nerfed into acting like VI
set viminfo='1000,f1,:1000,/1000
set history=500
set cursorline
set cursorcolumn
set laststatus=2
"------  Visual Options  ------
set guioptions=egmt         "remove toolbar, scrollbars
syntax enable               "Enables syntax highlighting
set nu                      "Enable Line Number
set nowrap                  "Disable word wrap
set vb                      "Visual bell instead of beeps
"------  Air-Line   ------
set encoding=utf-8
set t_Co=256
let g:airline#extensions#whitespace#enabled = 1
"------  Behavior  ------
set tabstop=4               "tab = 4 spaces
set shiftwidth=4            "Indent to four spaces
set hidden                  "Switch between unsaved buffers w/o needing to save, preserves history
filetype indent on          "Syntax Highlight
filetype plugin on          "Needed for snipMate
set autoindent              "Autoindent
set expandtab               "Use spaces instead of tabs
set so=999
"Ignore these files when completing names
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,node_modules/*
"------  Searching  ------
set incsearch               "Search while typing
set ignorecase              "Case Insensitive Searching
set smartcase               "Lowercase = case insensitive, any uppercase = case sensitive
set hlsearch                "Highlight all search results
"Following line clears the search highlights when pressing Lb
nnoremap <leader>b :nohlsearch<CR>
"------  Replacing ------
"type S, then type what you're looking for, a /, and what to replace it with
nmap S :%s//g<LEFT><LEFT>
vmap S :s//g<LEFT><LEFT>
"------  NERDTree Options  ------
let NERDTreeIgnore=['CVS','\.dSYM$']
let NERDTreeChDirMode=2     "setting root dir in NT also sets VIM's cd
noremap <silent> <Leader>n :NERDTreeToggle<CR>
" These prevent accidentally loading files while in the NERDTree panel
autocmd FileType nerdtree noremap <buffer> <c-left> <nop>
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-right> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %
" Closes the current window
nnoremap <silent> <Leader>Q <C-w>c
"------  Moving Between Windows  ------
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>wo <C-w>o
nnoremap <Leader>wv <C-w>v<C-w>l
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>ww <C-w><C-w>
" Opens an edit command with the path of the currently edited file filled in Normal mode: <Leader>ee
map <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>
" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
" Edit and Reload .vimrc files
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>
" When pressing <leader>cd switch to the directory of the open buffer
"map <Leader>cd :cd %:p:h<CR>
" ,ct = Builds ctags
map <Leader>ct :! /usr/local/bin/ctags -R *<CR>
" F2 = Paste Toggle (in insert mode, pasting indented text behavior changes)
set pastetoggle=<F2>
" ,T = Delete all Trailing space in file
map <Leader>T :%s/\s\+$//<CR>
" ,U = Deletes Unwanted empty lines
map <Leader>U :g/^$/d<CR>
" ,R = Converts tabs to spaces in document
map <Leader>R :retab<CR>
" ,p = Runs PHP lint checker on current file
map <Leader>p :! php -l %<CR>
" ,P = Runs PHP and executes the current file
map <Leader>P :! php -q %<CR>
" ,L = Toggle line numbers
map <Leader>L :set invnumber<CR>
set background=dark
colorscheme Mustang
set mouse=a                     "This allows mouse scrolling in terminal, and selection of text
if filereadable($HOME.'/.vimrc_local')
    source $HOME/.vimrc_local
endif
