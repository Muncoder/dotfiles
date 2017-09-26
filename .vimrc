" 256-color terminal
set t_Co=256

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

"copy to sysetm clipboard ubuntu system
set clipboard=unnamedplus

"NERDTreeToggle shortcut ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>
"NERDTree file browser size
let g:NERDTreeWinSize=20
"Start NERDTree when vim starts
autocmd VimEnter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

"emmet initialize for html/css
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
"let g:user_emmet_expandabbr_key='<Tab>'

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"let g:user_emmet_leader_key='<C-Z>'

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1


call plug#begin()
	Plug 'scrooloose/nerdtree'
	Plug 'jistr/vim-nerdtree-tabs'

	Plug 'elixir-lang/vim-elixir'
	Plug 'sirver/ultisnips'
	Plug 'kien/ctrlp.vim'
	Plug 'shougo/neocomplete.vim'
	Plug 'flazz/vim-colorschemes'
call plug#end()

"neocompleteme
