" BASIC CHANGES
set number
set relativenumber
set mouse=a
set cursorline
set showcmd
set showmatch " show oposite bracket
set backspace=indent,eol,start
syntax enable
set encoding=utf-8
set nowrap " No long line break
set clipboard=unnamed " SO clipboard on

set sw=2  " shiftwidth -> Spaces
set ts=2  " tabstop -> Tab

set termguicolors

autocmd Filetype html setlocal tabstop=2
autocmd Filetype css setlocal tabstop=2
autocmd Filetype javascript setlocal tabstop=2
autocmd Filetype java setlocal tabstop=2
autocmd Filetype python setlocal tabstop=2


" Plugins with Vim-plug
call plug#begin('~/.config/nvim/plugged')

" TEMAS 
Plug 'sainnhe/gruvbox-material'

" Completion nvim
Plug 'nvim-lua/completion-nvim'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" Emmet
Plug 'mattn/emmet-vim'

" Commnents
Plug 'tpope/vim-commentary'

" Identline
Plug 'Yggdroot/indentLine'

Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" Colorscheme configuration
set background=dark
let g:gruvbox_material_background='medium'
colorscheme gruvbox-material


" COC Configuration default
so ~/.config/nvim/coc-config.vim


" EMMET CONFIGURATION
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_settings={
\ 'javascript': {
\ 'extends':'jsx'
\ }
\ }

" Prettier configuration
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <C-D> :Prettier<CR>

" Commentary Configuration
vnoremap <space>/ :Commentary<CR>

" AIRLINE CONFIGURATION
let g:airline#extensions#tabline#enabled = 1

" NERDTREE CONFIGURATION
let NERDTreeQuitOnOpen=1
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" MAPPING -> Syntax: {mode} {attribute:optional} {keys} {command}
" INSERT MODE MAPPING

" Brackets
inoremap { {}<left>
inoremap [ []<left>
inoremap ( ()<left>
inoremap " ""<left>
inoremap "" "
inoremap ' ''<left>
inoremap ¿ ¿?<left>



