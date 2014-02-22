" .vimrc by Lingliang Zhang

set nocompatible

" turn on pathogen
call pathogen#infect()

" allow jj to exist insert mode
imap jj <Esc>

" switch on syntax highlighting
syntax enable

" hide buffers instead of closing them
set hidden

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

" key miss catches
command WQ wq
command Wq wq
command W w
command Q q

" line numbers
set number
set numberwidth=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE
      \ guifg=DarkGrey guibg=NONE

" tab management
set splitbelow
set splitright
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
nmap <silent> <C-Right> <C-W>>
nmap <silent> <C-Left> <C-W><
nmap <silent> <C-Down> <C-W>-
nmap <silent> <C-Up> <C-W>+

" NERDTree Remap
let g:NERDTreeMapOpenVSplit = "u"

" ctrlp remap
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("h")': ['<c-i>'],
  \ 'AcceptSelection("v")': ['<c-u>']
  \ }

" Easymotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" enable file type detection and indent appropriately 
filetype plugin indent on

set pastetoggle=<F2> " allows F2 to be mapped to turn on and off pasting in vim

" maps F3 to open the file explorer
map <F3> :NERDTreeToggle<CR> 

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

" encryption
set cm=blowfish
set exrc
set secure

" javascript
autocmd FileType javascript inoremap (; ();<Esc>hi
autocmd FileType javascript inoremap {<CR> {<CR>}<Esc><S-o><Tab>


" Word Processing Mode
func! WordProcessorMode()
  setlocal formatoptions=t1
  setlocal textwidth=80
  map j gj
  map k gk
  set formatprg=par
  setlocal smartindent
  setlocal spell spelllang=en_us
  setlocal noexpandtab
endfu
com! WP call WordProcessorMode()

" Creates a session
function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:sessionfile = b:sessiondir . '/session.vim'
  exe "mksession! " . b:sessionfile
endfunction

" Updates a session, BUT ONLY IF IT ALREADY EXISTS
function! UpdateSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    NERDTreeClose
    exe "mksession! " . b:sessionfile
    echo "updating session"
  endif
endfunction

" Loads a session if it exists
function! LoadSession()
  if argc() == 0
    let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
    let b:sessionfile = b:sessiondir . "/session.vim"
    if (filereadable(b:sessionfile))
      exe 'source ' b:sessionfile
      NERDTree
    else
      echo "No session loaded."
    endif
  else
    let b:sessionfile = ""
    let b:sessiondir = ""
  endif
endfunction

au VimLeave * :call UpdateSession()
map <leader>m :call MakeSession()<CR>
map <leader>n :call LoadSession()<CR>

" delimitMate options
let delimitMateBackspace = 1

" relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

au FocusLost * :set number
au FocusGained * :set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set relativenumber

" Controlling vim-latex
let g:Tex_SmartKeyBS = 0
let g:Tex_SmartKeyQuote = 0
let g:Tex_SmartKeyDot = 0
let g:Imap_UsePlaceHolders = 0
let g:Tex_Leader = '`tex'
let g:Tex_Leader2 = ',tex'
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""
let g:Imap_FreezeImap=1
let g:Tex_Leader = '`tex'
let g:Tex_Leader2 = ',tex'
nnoremap <SID>I_won’t_ever_type_this <Plug>IMAP_JumpForward

" lint the current file
function! CoffeeLintFile()
  let current = fnamemodify(expand("%"), ':p')
  exec ":!coffeelint " . current 
endfunction
 
" These are my shortcuts, you will probably want your own
map <leader>cx :call CoffeeLintFile()<cr>
