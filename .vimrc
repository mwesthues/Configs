"Vim-R specs
set nocompatible

"Enable the use of plug-ins via Tim Pope's pathogen program.
execute pathogen#infect()

"Turn on syntax highlighting.
syntax enable

"Indent code.
filetype indent on

"Always open new windows in the right-hand panel.
set splitright 

"Automatically run script when Vim detects the type of file when the file is
"created or opened.
filetype plugin on

"Used by vim-latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

"Compile .tex files to .pdf.
let g:Tex_DefaultTargetFormat='pdf'

" Compile multiple times for bibtex files (vim-latex).
let g:Tex_MultipleCompileFormats='pdf,aux'

"VIM color scheme
colorscheme solarized

"Automatic line break at column 79.
set tw=79

"Highlight column number 80.
set colorcolumn=80

set formatoptions+=t
set number

"Use solarized light theme in GUI, dark theme at terminal.
set background=dark

"Use Ctrl+Space do to omnicompletion
if has("gui_running")
  inoremap <C-Space> <C-x><C-o>
else
  inoremap <Nul> <C-x><C-o>
endif

"Move by display line rather than by actual lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

"Switch between different panes
"map <C-j><C-W>j
"map <C-k><C-W>k
"map <C-h><C-W>h
"map <C-l><C-W>l


"Define backslash as the leader key for customized keyboard shortcuts.
let mapleader = '\'
let maplocalleader = ","

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set showbreak=..
set linebreak
set foldmethod=indent foldcolumn=2
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
"Line folding of blocks with a size of 99 or bigger, only
set foldlevel=99

"Don't let VIM catch all global options.
set sessionoptions-=options

"For tmux support
let g:ScreenImpl = 'Tmux'
let vimrplugin_screenvsplit = 1 " For vertical tmux split
"Split Vim-R vertically
let vimrplugin_vsplit = 1
"Number of columns to use for the R-console
let vimrplugin_rconsole_width = 100
let g:ScreenShellInitialFocus = 'shell' 
" instruct to use your own .screenrc file
let g:vimrplugin_noscreenrc = 1
" For integration of r-plugin with screen.vim
let g:vimrplugin_screenplugin = 1
" Don't use conque shell if installed
let vimrplugin_conqueplugin = 0
" map the letter 'r' to send visually selected lines to R 
let g:vimrplugin_map_r = 1
" see R documentation in a Vim buffer
let vimrplugin_vimpager = "no"
"Do not delete R menu item when changing buffers
let vimrplugin_never_unmake_menu = 1
"Increase time to wait for vimcom loading
let vimrplugin_vimcom_wait = 10000
"Disable conversion of "_" to assignment operator "<-"
let vimrplugin_assign = 0
"Use the xterm terminal emulator
let vimrplugin_term = "xterm"
"Show function arguments
let vimrplugin_show_args = 1


" start R with F2 key
map <F2> <Plug>RStart 
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart
" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection 
" send line to R with space bar
nmap <Space> <Plug>RDSendLine

"Show function arguments with Ctrl+s
imap <C-m> <Plug>RCompleteArgs
