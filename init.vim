set number
set tabstop=4
set smartindent
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set shiftwidth=4
set nowrap
set smartcase
set noswapfile
set nobackup
set nohlsearch
set hidden
set noerrorbells
set ignorecase
set termguicolors
set scrolloff=8
set mouse+=a

syntax on

let mapleader = " "

" quick escape
inoremap jk <Esc>
inoremap kj <Esc>

" quick save
nnoremap <C-s> :w<CR>

" quick open terminal
nnoremap <leader>t :Term<CR>

" autopair
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O

" disable show mode
set noshowmode
" disable status bar
set laststatus=0 
" disable ruler
set noruler
" disable showcmd
set noshowcmd

" hide status line in the bottom
" let s:hidden_all = 0
" function! ToggleHiddenAll()
"     if s:hidden_all == 0
"         let s:hidden_all = 1
"         set noshowmode
"         set noruler
"         set laststatus=0
"         set noshowcmd
"     else
"         let s:hidden_all = 0
"         set showmode
"         set ruler
"         set laststatus=2
"         set showcmd
"     endif
" endfunction
" 
" nnoremap <S-h> :call ToggleHiddenAll()<CR>

call plug#begin('C:\Users\ASUS-ARCOMP\AppData\Local\nvim\autoload\plugged')
" hyperfocus on a range
Plug 'junegunn/limelight.vim'

" nerd tree: a file explorer for neovim
Plug 'https://github.com/scrooloose/nerdtree'

" File management ??????????????????????????
Plug 'vifm/vifm.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" change surrounding marks
Plug 'tpope/vim-surround'

" distraction free writing
Plug 'junegunn/goyo.vim'

" color preview for css
Plug 'ap/vim-css-color'

" Top tab bar
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Bottom bar for neovim
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" THEMES
" One dark pro theme
Plug 'joshdick/onedark.vim'

" nord color theme
Plug 'arcticicestudio/nord-vim'

" tokyo night
Plug 'folke/tokyonight.nvim', {'branch':'main'}

" database
Plug 'https://github.com/tpope/vim-dadbod'
" (COMING SOON)
" Plug 'kristijanhusak/vim-dadbod-ui'

" split neovim and terminal
Plug 'vimlab/split-term.vim'

call plug#end()

" display all matches when tab complete
set wildmenu

" setting airline theme
" let g:airline_theme='deus'

syntax enable
filetype plugin indent on

colorscheme tokyonight-night
" set bg=dark

" Splits
set splitbelow
set splitright

" navigate windows from any mode
tnoremap <c-h> <C-\><C-N><C-w><C-h>
tnoremap <c-j> <C-\><C-N><C-w><C-j>
tnoremap <c-k> <C-\><C-N><C-w><C-k>
tnoremap <c-l> <C-\><C-N><C-w><C-l>
inoremap <c-h> <C-\><C-N><C-w><C-h>
inoremap <c-j> <C-\><C-N><C-w><C-j>
inoremap <c-k> <C-\><C-N><C-w><C-k>
inoremap <c-l> <C-\><C-N><C-w><C-l>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>

" terminal mapping
" close terminal mode
tnoremap <leader><Esc> <C-\><C-n>

nnoremap <leader>w :set wrap
set clipboard=unnamedplus

map <C-w> :tabclose<CR>

" nerdtree config
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
" let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

" manage tab bar using barbar plugin
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>

let bufferline = get(g:, 'bufferline', {})
" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false
" Enable/disable close button
let bufferline.closable = v:false
" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
" if set to 'buffer_number_with_icon', will show buffer number and icons in the tabline
let bufferline.icons = v:false

" neovide setting
set guifont=Hack\ Nerd\ Font:h10
" let g:neovide_cursor_animation_length=0.13
" let g:neovide_cursor_trail_size=0.8

" set auto change directory
set autochdir
