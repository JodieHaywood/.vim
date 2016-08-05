" .vimrc by Lingliang Zhang
set nocompatible

" turn on pathogen
call pathogen#infect()

" allow jj to exist insert mode
imap jj <Esc>

" switch on syntax highlighting
syntax on

" enable file type detection and indent appropriately 
filetype plugin indent on

" Other formatting (including PEP8)
set nowrap " don't wrap lines
set backspace=indent,eol,start " make backspace behave better
set smartindent " turns on file type indenting
set autoindent " turns on auto indenting
set showmatch " set show matching parenthesis
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ruler
set smarttab
set t_Co=256

set pastetoggle=<F2> " allows F2 to be mapped to turn on and off pasting in vim

" colors
set background=dark
hi Visual term=reverse cterm=reverse guibg=LightGrey 
colorscheme delek

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" Fix for ssh to let NERDTREE work with different locale
let g:NERDTreeDirArrows=0

" line numbers
set number
set numberwidth=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE
      \ guifg=DarkGrey guibg=NONE

" Some shortcuts
nmap <Space> ~
let mapleader = "~"
nmap <Leader>s :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :qa<CR>
imap <C-H> <C-W>

nmap <Esc>h b
nmap <Esc>l w
nmap <Esc>j }
nmap <Esc>k {
vmap <Esc>h b
vmap <Esc>l w
vmap <Esc>j }
vmap <Esc>k {
omap <Esc>h b
omap <Esc>l w
omap <Esc>j }
omap <Esc>k {

" tab management
set splitbelow
set splitright
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>
nmap <Esc>Od <C-W><
nmap <Esc>Oc <C-W>>
nmap <Esc>Oa <C-W>+
nmap <Esc>Ob <C-W>-

" Fix esc delay
set timeoutlen=1000 ttimeoutlen=0

" Line numbers 
au FocusLost * :set number
au FocusGained * :set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set relativenumber

" stop python scratch complete
set completeopt-=preview

" NERDTree
" maps F3 to open the file explorer
map <F3> :NERDTreeToggle<CR> 

" NERDTree Remap
let g:NERDTreeMapOpenVSplit = "u"

" ctrlp remap
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("h")': ['<c-i>'],
  \ 'AcceptSelection("v")': ['<c-u>']
  \ }

" Python
autocmd Filetype python setlocal ts=4 sw=4

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_python_exec = '/path/to/python3'

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        SyntasticCheck
        Errors
    endif
endfunction
map <silent> <Leader>e :<C-u>call ToggleErrors()<CR>

" Ctrl P
set wildignore+=*/node_modules/*,*/build/*,*.so,*.swp,*.zip 

" Neocomplete
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

" DelimitMate
let delimitMate_jump_expansion = 1
imap <C-Space> <Plug>delimitMateS-Tab
imap <C-@> <C-Space>

" Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f)
omap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" TCommenter
map <Leader>" gcc
vmap <Leader>" gc

" Fugitive
autocmd QuickFixCmdPost *grep* cwindow
set diffopt+=vertical
