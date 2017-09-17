"2 tabspac
set tabstop=2

"set line number
set number

"mouse active
set mouse=a

"show file name
set laststatus=2
"show file name with directory
set statusline+=%F
syntax on

"css autocomplete
:set omnifunc=csscomplete#CompleteCSS

"space when block as tab with >
set sw=2

"NERDTree file browser size
let g:NERDTreeWinSize=20
"Start NERDTree when vim starts
autocmd VimEnter * NERDTree

"emmet initialize for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_expandabbr_key='<Tab>'

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:user_emmet_leader_key='<C-Z>'

call plug#begin()
	Plug 'scrooloose/nerdtree'
	Plug 'valloric/youcompleteme'
	Plug 'elixir-lang/vim-elixir'
	Plug 'nanotech/jellybeans.vim'
	Plug 'sirver/ultisnips'
	Plug 'kien/ctrlp.vim'
	Plug 'mattn/emmet-vim'
call plug#end()
