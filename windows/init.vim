set nocompatible
set number
set title
set ruler
set autoindent
set smartindent
set tabstop=3
set shiftwidth=3
set noexpandtab
set backspace=indent,eol,start
set mouse=a
set clipboard+=unnamedplus

syntax on
set noswapfile
set t_Co=256
set visualbell
set noerrorbells
set nobackup
set noundofile
set encoding=utf-8

colorscheme palenight
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

let g:plug_url_format = 'git@hobo:%s.git'

call plug#begin('~/VimPlugin')

Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'tomasr/molokai'
Plug 'crusoexia/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'mattn/emmet-vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-pathogen'
Plug 'vim-syntastic/syntastic'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deol.nvim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ziglang/zig.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'Rip-Rip/clang_complete'
Plug 'zah/nim.vim'
Plug 'cohama/lexima.vim'

call plug#end()

let NERDTreeWinSize=20
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max=8
let g:rbpt_loadcmd_toggle=0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:racer_cmd='C:/Users/slime/.cargo/bin/racer'

nnoremap <space>t :NERDTreeToggle<CR>
nnoremap <space>/ :vsplit<CR>
nnoremap <space>- :split<CR>
nnoremap <space>4 :vsplit<CR>:split<CR><C-w>l:split<CR><C-w>h
nnoremap <space>c <C-w>c
nnoremap <space>lf $
nnoremap <space>le ^
nnoremap <space>a <C-w>h
nnoremap <space>w <C-w>k
nnoremap <space>s <C-w>j
nnoremap <space>d <C-w>l

let g:airline_powerline_fonts=1
let g:airline_theme='deus'

let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="\\"
let g:EasyMotion_grouping=1
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade ctermbg=none ctermfg=blue

inoremap <C-a> <Left>
inoremap <C-w> <Up>
inoremap <C-s> <Down>
inoremap <C-d> <Right>
inoremap <CR> <Return>
nnoremap <C-c> i
nnoremap <space>rc :e C:\Users\Masami\AppData\Local\nvim\init.vim<CR>
nnoremap <space><space> ldiwh
inoremap <S-Left> <ESC>^i
inoremap <S-Right> <ESC>$i<Right>
nnoremap <space>n :bnext<CR>
nnoremap <space>b :bprev<CR>
tnoremap <C-c> <C-\><C-n>
nnoremap <space>j :w !trans -b -sl=en -tl=ja<CR>
