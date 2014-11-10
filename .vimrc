set t_Co=256
set tabstop=4
set shiftwidth=4
set nowrap
set autoindent
set copyindent
set number
set showmatch
set hlsearch
set incsearch
set hidden

colorscheme elflord

execute pathogen#infect() 

nnoremap ; :

"Forcing myself to get use to home row keys
map <up> <nop>
map <right> <nop>
map <down> <nop>
map <left> <nop>

"Easier multi window vim
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Ctrl-P mapping
nmap \p :CtrlP<CR>
nmap \pp :CtrlPBuffer<CR>

"NerdTree mapping
nmap \o :NERDTreeToggle<CR>

nmap \l :setlocal number!<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
