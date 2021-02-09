call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
call plug#end()


autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

set hidden
set relativenumber "coloca numeros nas linhas referentes as linhas acima e abaixo
set nocompatible


filetype plugin on
syntax on

"Pressionar espaço duas vezes pula para a proxima linha em insert mode
inoremap <Space><Space> <End><Return>

"Pressionar i duas vezes volta para o modo normal
inoremap ii <Esc>

"Salvar arquivos usando ctrl+s
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

nnoremap <c-p> :Files<cr>

