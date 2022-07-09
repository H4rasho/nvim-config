set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set nocompatible

call plug#begin('~/.vim/plugged')

" Lps
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
"Themes
Plug 'mangeshrex/everblush.vim'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim' 
Plug 'Yggdroot/indentLine' 
" Status Bar
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround' 
"Git 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'


" GithubCopilot
Plug 'github/copilot.vim'
call plug#end()

colorscheme everblush
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen = 1
let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.tsx Neoformat
au FileType tsx let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.js,*.ts'
let mapleader = " "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


