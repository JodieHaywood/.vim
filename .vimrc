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

" Fix for ssh to let NERDTREE work with different locale
let g:NERDTreeDirArrows=0

" line numbers
set number
set numberwidth=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE
      \ guifg=DarkGrey guibg=NONE

" Some shortcuts
let mapleader = " "
nmap <Leader>s :w<CR>
nmap <Leader>f za
nmap <Leader>q :q<CR>
nmap <Leader>Q :qa<CR>
nmap <Esc>h b
nmap <Esc>l w
nmap <Esc>j }
nmap <Esc>k {

" tab management
set splitbelow
set splitright
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>
nmap <Leader>h <C-W><
nmap <Leader>j <C-W>+
nmap <Leader>k <C-W>-
nmap <Leader>l <C-W>>

" Line numbers 
au FocusLost * :set number
au FocusGained * :set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set relativenumber

" Folding is fun
set foldmethod=syntax
set foldlevel=99

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

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline_theme='murmur'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_a="%{strftime(\"%k:%M:%S\")}"
let g:airline_section_c="%f%m%r"
let g:airline_section_x=""
let g:airline_section_y=""
let g:airline_section_z="%l : %p%%"
let g:airline_section_error=""
let g:airline_section_warning=""
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#default#section_truncate_width = {
  \ 'c': 40,
  \ }

" Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f2)
omap t <Plug>(easymotion-bd-tl)
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Ag
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
nmap <silent> <Leader>n :cnext<CR>
nmap <silent> <Leader>p :cprev<CR>
nnoremap \ :Ag<SPACE>
nnoremap <Leader>g :Ag <cword><CR>

" TCommenter
map <Leader>" gcc
map <Leader>" gc
vmap <Leader>" :TCommentBlock<CR>
