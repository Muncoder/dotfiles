
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50
"set <M-h>=^[h



"always show updated file content
set autoread
au CursorHold, CursorHoldI * checktime

"stop creating recovery files
set nobackup
set noswapfile
set noundofile


" 256-color terminal
set t_Co=256

" Set encoding to UTF-8 to show glyphs
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
" required if using https://github.com/bling/vim-airline
" let g:airline_powerline_fonts=1

set background=dark

"2 tabspac
set tabstop=2

"set line number
set number

"mouse active
set mouse=a

"highlight line
"set cursorline
"highlight current column
set cursorcolumn

"show file name
set laststatus=2
"show file name with directory
"set statusline+=%F
syntax on

"css autocomplete
:set omnifunc=csscomplete#CompleteCSS

"space when block as tab with >
set sw=2

"copy to system clipboard ubuntu system
set clipboard=unnamedplus


"--------------------------------------------------------
" ctrlp plugin to search only at working directory
let g:ctrlp_working_path_mode = 'r'
"--------------------------------------------------------


"nerdtree
"NERDTreeToggle shortcut ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>
"NERDTree file browser size
let g:NERDTreeWinSize=20
"Start NERDTree when vim starts
autocmd VimEnter * NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1
"open folder in one click
let g:NERDTreeMouseMode=3
let NERDTreeMapOpenInTab='<ENTER>'


"emmet initialize for html/css
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
"let g:user_emmet_expandabbr_key='<Tab>'


"ultisnip-----------------------------------------------
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"--------------------------------------------------------


"let g:user_emmet_leader_key='<C-Z>'

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

"--------------------------------------------------------
"tab
nnoremap <C-t> :tabe<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-Right> gt
nnoremap <C-Left> gT

"--------------------------------------------------------
"split
"horizontal and vertical split following hjkl convention
nnoremap <C-j> :split<CR>
nnoremap <C-l> :vsplit<CR>
nnoremap <C-m> :Files<CR>

"map esc to jj to leave insert mode
imap jj <esc>

"navigate in insert mode
inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>

runtime macros/matchit.vim


call plug#begin()
	Plug 'scrooloose/nerdtree'
	Plug 'jistr/vim-nerdtree-tabs'

	Plug 'elixir-lang/vim-elixir'
	Plug 'sirver/ultisnips'
	Plug 'shougo/neocomplete.vim'
	Plug 'flazz/vim-colorschemes'
	Plug 'bling/vim-airline'
	Plug 'vim-scripts/matchit.zip'
	Plug 'ryanoasis/nerd-fonts'
	Plug 'ryanoasis/vim-devicons'
	Plug 'gcmt/taboo.vim' 
	Plug 'vim-scripts/ZoomWin'
	Plug 'tpope/vim-surround'
	Plug 'djoshea/vim-autoread'
	Plug 'tpope/vim-commentary'
	
	"search
	Plug 'kien/ctrlp.vim'
	Plug 'rking/ag.vim'
	Plug 'mileszs/ack.vim'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'

	"docker
	Plug 'ekalinin/dockerfile.vim'

	Plug 'vim-scripts/auto-pairs-gentle'
call plug#end()

"neocompleteme

"set default colorscheme
colorscheme CandyPaper
" colorscheme railscasts
" colorscheme bonokai

"let g:ackprg = "ag --vimgrep"

