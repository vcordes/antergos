" https://dougblack.io/words/a-good-vimrc.html

" --GENERAL---
set nocompatible	 " leave on improvements of Vi Improved
filetype plugin on	 " vimwiki prerequisite
syntax on
let mapleader=","
" ----------

" --PLUGIN---
call pathogen#infect()
call pathogen#helptags()
" -----------

" --Spaces & Tabs---
set tabstop=4		 " number of visual spaces per TAB
set softtabstop=4	 " number of visual spaces per TAB when editing
set expandtab		 " tab becomes shortcut for 'insert four spaces'
" -----------

" --UI CONFIG---
filetype indent on	 " language specific indentation
set ruler			 " show the line and column number of the cursor position
set showcmd			 " show last command entered in bottom right of VIM
" set cursorline	 " draw horizontal line on the line cursor is currently on
set number			 " view line number in the margin
set wildmenu		 " graphical menu of all matches in command line
" -----------

" --SEARCHING---
set incsearch		 " search as characters are entered
set hlsearch		 " highlight matches
" turn off search highlight
nnoremap <leader>p :nohlsearch<CR>
" -----------

" --FOLDING---
" Folds saved and restored
" https://medium.freecodecamp.org/learn-linux-vim-basic-features-19134461ab85
" https://til.hashrocket.com/posts/17c44eda91-persistent-folds-between-vim-sessions
augroup AutoSaveFolds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent loadview
augroup END
" ---------------

" --MOVEMENT---
" move vertically by visual line (in case a line is wrapped)
nnoremap j gj
nnoremap k gk
" -------------

"--VIMWIKI CONFIG--- 
":h vimwiki-syntax

let w1 = {}
let w1.path = '$HOME/Documents/wiki/vimwiki/'
let w1.path_html = '$HOME/Documents/wiki/vimwiki_html/'

let w2 = {}
let w2.path = '$HOME/Documents/wiki/vimwiki/CCNA/'
let w2.path_html = '$HOME/Documents/wiki/vimwiki_html/CCNA/'

let w3 = {}
let w3.path = '$HOME/Documents/wiki/vimwiki/CISSP/'
let w3.path_html = '$HOME/Documents/wiki/vimwiki_html/CISSP/'

let g:vimwiki_list = [w1, w2, w3] 
" ---------------

" --FUNCTIONS---
" Coding Environment
" Taken from http://www.alexeyshmalko.com/2014/using-vim-as-c-cpp-ide
func! CodingMode()
	set shiftwidth=4
	set noexpandtab
	set colorcolumn=110
	set smarttab
	set autoindent
	set cindent 			" enables automatic C program indenting
	highlight ColorColumn ctermbg=darkgray
endfu
com! CM call CodingMode()
"-----------------

" http://www.drbunsen.org/writing-in-vim/ for function wordprocessormode

" Auto-command for plugins :h VimEnter
" autocmd VimEnter * Goyo

" let g:limelight_conceal_ctermfg = 'gray'
" autocmd VimEnter * Limelight

colorscheme dracula
set termguicolors
