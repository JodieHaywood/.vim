let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>delimitMate> =delimitMate#JumpOut("\>")
inoremap <silent> <Plug>delimitMate< <=delimitMate#ParenDelim(">")
inoremap <silent> <Plug>(neocomplcache_start_omni_complete) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete_no_select) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete) =neocomplcache#mappings#popup_post()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_quick_match) unite#sources#neocomplcache#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_complete) unite#sources#neocomplcache#start_complete()
inoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)a
inoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)a
inoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()a
inoremap <Plug>ZenCodingSplitJoinTagInsert :call zencoding#splitJoinTag()
inoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()a
inoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()a
inoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
inoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
inoremap <Plug>ZenCodingBalanceTagOutwardInsert :call zencoding#balanceTag(-1)
inoremap <Plug>ZenCodingBalanceTagInwardInsert :call zencoding#balanceTag(1)
inoremap <Plug>ZenCodingExpandWord u:call zencoding#expandAbbr(1,"")a
inoremap <Plug>ZenCodingExpandAbbr u:call zencoding#expandAbbr(0,"")a
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <Plug>delimitMateMRightMouse =delimitMate#Finish(1)<RightMouse>
inoremap <silent> <Plug>delimitMateMLeftMouse =delimitMate#Finish(1)<LeftMouse>
inoremap <silent> <Plug>delimitMateDel =delimitMate#Del()
inoremap <silent> <Plug>delimitMateS-Tab =delimitMate#JumpAny()
inoremap <silent> <Plug>delimitMateSpace =delimitMate#ExpandSpace()
inoremap <silent> <Plug>delimitMateCR =delimitMate#ExpandReturn()
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\=delimitMate#Del()\" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
inoremap <silent> <Plug>delimitMate` =delimitMate#QuoteDelim("\`")
inoremap <silent> <Plug>delimitMate' =delimitMate#QuoteDelim("\'")
inoremap <silent> <Plug>delimitMate" =delimitMate#QuoteDelim("\"")
inoremap <silent> <Plug>delimitMate] =delimitMate#JumpOut("\]")
inoremap <silent> <Plug>delimitMate} =delimitMate#JumpOut("\}")
inoremap <silent> <Plug>delimitMate) =delimitMate#JumpOut("\)")
inoremap <silent> <Plug>delimitMate[ [=delimitMate#ParenDelim("]")
inoremap <silent> <Plug>delimitMate{ {=delimitMate#ParenDelim("}")
inoremap <silent> <Plug>delimitMate( (=delimitMate#ParenDelim(")")
nmap v <Plug>SlimeConfig
nmap  <Plug>SlimeParagraphSend
xmap  <Plug>SlimeRegionSend
nmap <silent>  :wincmd h
vmap <NL> <Plug>IMAP_JumpForward
nmap <silent> <NL> :wincmd j
nmap <silent>  :wincmd k
nmap <silent>  :wincmd l
nnoremap  :call NumberToggle()
vmap c <Plug>ZenCodingCodePretty
vmap m <Plug>ZenCodingMergeLines
vmap D <Plug>ZenCodingBalanceTagOutwardVisual
vmap d <Plug>ZenCodingBalanceTagInwardVisual
vmap , <Plug>ZenCodingExpandVisual
nmap A <Plug>ZenCodingAnchorizeSummary
nmap a <Plug>ZenCodingAnchorizeURL
nmap k <Plug>ZenCodingRemoveTag
nmap j <Plug>ZenCodingSplitJoinTagNormal
nmap / <Plug>ZenCodingToggleComment
nmap i <Plug>ZenCodingImageSize
nmap N <Plug>ZenCodingPrev
nmap n <Plug>ZenCodingNext
nmap D <Plug>ZenCodingBalanceTagOutwardNormal
nmap d <Plug>ZenCodingBalanceTagInwardNormal
nmap , <Plug>ZenCodingExpandNormal
inoremap ï o
xmap S <Plug>VSurround
nmap \ca <Plug>NERDCommenterAltDelims
xmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
xmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
xmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
nmap \cA <Plug>NERDCommenterAppend
xmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
xmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
xmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
nmap \c$ <Plug>NERDCommenterToEOL
xmap \cn <Plug>NERDCommenterNested
nmap \cn <Plug>NERDCommenterNested
xmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
xmap \c  <Plug>NERDCommenterToggle
nmap \c  <Plug>NERDCommenterToggle
xmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
map \cx :call CoffeeLintFile()
map \n :call LoadSession()
map \m :call MakeSession()
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vnoremap <Plug>ZenCodingCodePretty :call zencoding#codePretty()
vnoremap <Plug>ZenCodingMergeLines :call zencoding#mergeLines()
vnoremap <Plug>ZenCodingBalanceTagOutwardVisual :call zencoding#balanceTag(-2)
vnoremap <Plug>ZenCodingBalanceTagInwardVisual :call zencoding#balanceTag(2)
vnoremap <Plug>ZenCodingExpandVisual :call zencoding#expandAbbr(2,"")
nnoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)
nnoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)
nnoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()
nnoremap <Plug>ZenCodingSplitJoinTagNormal :call zencoding#splitJoinTag()
nnoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()
nnoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()
nnoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
nnoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
nnoremap <Plug>ZenCodingBalanceTagOutwardNormal :call zencoding#balanceTag(-1)
nnoremap <Plug>ZenCodingBalanceTagInwardNormal :call zencoding#balanceTag(1)
nnoremap <Plug>ZenCodingExpandWord :call zencoding#expandAbbr(1,"")
nnoremap <Plug>ZenCodingExpandNormal :call zencoding#expandAbbr(3,"")
nnoremap <silent> <Plug>SurroundRepeat .
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <SNR>1_I_won’t_ever_type_this <Plug>IMAP_JumpForward
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
map <F4> :TlistToggle
map <F3> :NERDTreeToggle 
nmap <silent> <C-Up> +
nmap <silent> <C-Down> -
nmap <silent> <C-Left> <
nmap <silent> <C-Right> >
inoremap <expr>  neocomplcache#cancel_popup()
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr>  neocomplcache#undo_completion()
inoremap <expr>  neocomplcache#smart_close_popup()."\"
inoremap <expr> 	 pumvisible() ? "\" : "\	"
imap <NL> <Plug>IMAP_JumpForward
inoremap <expr>  neocomplcache#complete_common_string()
imap  <Plug>Isurround
imap A <Plug>ZenCodingAnchorizeSummary
imap a <Plug>ZenCodingAnchorizeURL
imap k <Plug>ZenCodingRemoveTag
imap j <Plug>ZenCodingSplitJoinTagInsert
imap / <Plug>ZenCodingToggleComment
imap i <Plug>ZenCodingImageSize
imap N <Plug>ZenCodingPrev
imap n <Plug>ZenCodingNext
imap D <Plug>ZenCodingBalanceTagOutwardInsert
imap d <Plug>ZenCodingBalanceTagInwardInsert
imap ; <Plug>ZenCodingExpandWord
imap , <Plug>ZenCodingExpandAbbr
inoremap <expr>  neocomplcache#close_popup()
imap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set balloonexpr=SyntasticBalloonsExprNotifier()
set completefunc=neocomplcache#complete#manual_complete
set completeopt=preview,menuone
set cryptmethod=blowfish
set expandtab
set exrc
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set ignorecase
set isident=@,48-57,_,192-255,$
set iskeyword=@,48-57,_,192-255,$
set pastetoggle=<F2>
set ruler
set runtimepath=~/.vim,~/.vim/bundle/2283673,~/.vim/bundle/Javascript-Indent,~/.vim/bundle/delimitMate,~/.vim/bundle/neocomplcache.vim,~/.vim/bundle/nerdcommenter,~/.vim/bundle/nerdtree,~/.vim/bundle/syntastic,~/.vim/bundle/taglist.vim,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-cucumber,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-latex,~/.vim/bundle/vim-less,~/.vim/bundle/vim-literate-coffeescript,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-slime,~/.vim/bundle/vim-surround,~/.vim/bundle/zencoding-vim,/usr/local/share/vim/vim73/vimfiles,/usr/local/share/vim/vim73,/usr/local/share/vim/vim73/vimfiles/after,~/.vim/bundle/vim-coffee-script/after,~/.vim/after
set secure
set shiftwidth=2
set showmatch
set smartindent
set smarttab
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Linguistic-Explorer
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 features/supported_data_entry.feature
badd +0 features/step_definitions/web_steps.rb
badd +20 app/views/lings/mass_assignment/_property.html.erb
badd +0 app/views/lings/supported_set_values.html.erb
badd +0 app/views/lings/mass_assignment/_category.html.erb
badd +0 app/controllers/lings_controller.rb
silent! argdel *
edit features/supported_data_entry.feature
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <RightMouse> <Plug>delimitMateMRightMouse
imap <buffer> <LeftMouse> <Plug>delimitMateMLeftMouse
imap <buffer> <S-Up> <Plug>delimitMateS-Up
imap <buffer> <S-Down> <Plug>delimitMateS-Down
imap <buffer> <PageDown> <Plug>delimitMatePageDown
imap <buffer> <PageUp> <Plug>delimitMatePageUp
imap <buffer> <Down> <Plug>delimitMateDown
imap <buffer> <Up> <Plug>delimitMateUp
imap <buffer> <C-Right> <Plug>delimitMateC-Right
imap <buffer> <C-Left> <Plug>delimitMateC-Left
imap <buffer> <End> <Plug>delimitMateEnd
imap <buffer> <Home> <Plug>delimitMateHome
imap <buffer> <Right> <Plug>delimitMateRight
imap <buffer> <Left> <Plug>delimitMateLeft
imap <buffer> <Del> <Plug>delimitMateDel
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =len(delimitMate#Get('buffer')) ? delimitMate#Finish(0) : delimitMate#JumpMany()
imap <buffer> <C-ScrollWheelRight> <Plug>delimitMateC-ScrollWheelRight
imap <buffer> <S-ScrollWheelRight> <Plug>delimitMateS-ScrollWheelRight
imap <buffer> <ScrollWheelRight> <Plug>delimitMateScrollWheelRight
imap <buffer> <C-ScrollWheelLeft> <Plug>delimitMateC-ScrollWheelLeft
imap <buffer> <S-ScrollWheelLeft> <Plug>delimitMateS-ScrollWheelLeft
imap <buffer> <ScrollWheelLeft> <Plug>delimitMateScrollWheelLeft
imap <buffer> <C-ScrollWheelDown> <Plug>delimitMateC-ScrollWheelDown
imap <buffer> <S-ScrollWheelDown> <Plug>delimitMateS-ScrollWheelDown
imap <buffer> <ScrollWheelDown> <Plug>delimitMateScrollWheelDown
imap <buffer> <C-ScrollWheelUp> <Plug>delimitMateC-ScrollWheelUp
imap <buffer> <S-ScrollWheelUp> <Plug>delimitMateS-ScrollWheelUp
imap <buffer> <ScrollWheelUp> <Plug>delimitMateScrollWheelUp
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cucumber'
setlocal filetype=cucumber
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetCucumberIndent()
setlocal indentkeys=o,O,*<Return>,<:>,0<Bar>,0#,=,!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=CucumberComplete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cucumber'
setlocal syntax=cucumber
endif
setlocal tabstop=2
setlocal tags=~/Documents/Linguistic-Explorer/tags,~/Documents/Linguistic-Explorer/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 113 - ((31 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
113
normal! 04l
tabedit app/controllers/lings_controller.rb
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <RightMouse> <Plug>delimitMateMRightMouse
imap <buffer> <LeftMouse> <Plug>delimitMateMLeftMouse
imap <buffer> <S-Up> <Plug>delimitMateS-Up
imap <buffer> <S-Down> <Plug>delimitMateS-Down
imap <buffer> <PageDown> <Plug>delimitMatePageDown
imap <buffer> <PageUp> <Plug>delimitMatePageUp
imap <buffer> <Down> <Plug>delimitMateDown
imap <buffer> <Up> <Plug>delimitMateUp
imap <buffer> <C-Right> <Plug>delimitMateC-Right
imap <buffer> <C-Left> <Plug>delimitMateC-Left
imap <buffer> <End> <Plug>delimitMateEnd
imap <buffer> <Home> <Plug>delimitMateHome
imap <buffer> <Right> <Plug>delimitMateRight
imap <buffer> <Left> <Plug>delimitMateLeft
imap <buffer> <Del> <Plug>delimitMateDel
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =len(delimitMate#Get('buffer')) ? delimitMate#Finish(0) : delimitMate#JumpMany()
imap <buffer> <C-ScrollWheelRight> <Plug>delimitMateC-ScrollWheelRight
imap <buffer> <S-ScrollWheelRight> <Plug>delimitMateS-ScrollWheelRight
imap <buffer> <ScrollWheelRight> <Plug>delimitMateScrollWheelRight
imap <buffer> <C-ScrollWheelLeft> <Plug>delimitMateC-ScrollWheelLeft
imap <buffer> <S-ScrollWheelLeft> <Plug>delimitMateS-ScrollWheelLeft
imap <buffer> <ScrollWheelLeft> <Plug>delimitMateScrollWheelLeft
imap <buffer> <C-ScrollWheelDown> <Plug>delimitMateC-ScrollWheelDown
imap <buffer> <S-ScrollWheelDown> <Plug>delimitMateS-ScrollWheelDown
imap <buffer> <ScrollWheelDown> <Plug>delimitMateScrollWheelDown
imap <buffer> <C-ScrollWheelUp> <Plug>delimitMateC-ScrollWheelUp
imap <buffer> <S-ScrollWheelUp> <Plug>delimitMateS-ScrollWheelUp
imap <buffer> <ScrollWheelUp> <Plug>delimitMateScrollWheelUp
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,app/views/lings,public,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/Selenium-1.1.14/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.3/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.1/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.3/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.1/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.3/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetic
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/Documents/Linguistic-Explorer/tags,~/Documents/Linguistic-Explorer/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 289 - ((46 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
289
normal! 0
tabedit app/views/lings/mass_assignment/_category.html.erb
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <RightMouse> <Plug>delimitMateMRightMouse
imap <buffer> <LeftMouse> <Plug>delimitMateMLeftMouse
imap <buffer> <S-Up> <Plug>delimitMateS-Up
imap <buffer> <S-Down> <Plug>delimitMateS-Down
imap <buffer> <PageDown> <Plug>delimitMatePageDown
imap <buffer> <PageUp> <Plug>delimitMatePageUp
imap <buffer> <Down> <Plug>delimitMateDown
imap <buffer> <Up> <Plug>delimitMateUp
imap <buffer> <C-Right> <Plug>delimitMateC-Right
imap <buffer> <C-Left> <Plug>delimitMateC-Left
imap <buffer> <End> <Plug>delimitMateEnd
imap <buffer> <Home> <Plug>delimitMateHome
imap <buffer> <Right> <Plug>delimitMateRight
imap <buffer> <Left> <Plug>delimitMateLeft
imap <buffer> <Del> <Plug>delimitMateDel
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =len(delimitMate#Get('buffer')) ? delimitMate#Finish(0) : delimitMate#JumpMany()
imap <buffer> <C-ScrollWheelRight> <Plug>delimitMateC-ScrollWheelRight
imap <buffer> <S-ScrollWheelRight> <Plug>delimitMateS-ScrollWheelRight
imap <buffer> <ScrollWheelRight> <Plug>delimitMateScrollWheelRight
imap <buffer> <C-ScrollWheelLeft> <Plug>delimitMateC-ScrollWheelLeft
imap <buffer> <S-ScrollWheelLeft> <Plug>delimitMateS-ScrollWheelLeft
imap <buffer> <ScrollWheelLeft> <Plug>delimitMateScrollWheelLeft
imap <buffer> <C-ScrollWheelDown> <Plug>delimitMateC-ScrollWheelDown
imap <buffer> <S-ScrollWheelDown> <Plug>delimitMateS-ScrollWheelDown
imap <buffer> <ScrollWheelDown> <Plug>delimitMateScrollWheelDown
imap <buffer> <C-ScrollWheelUp> <Plug>delimitMateC-ScrollWheelUp
imap <buffer> <S-ScrollWheelUp> <Plug>delimitMateS-ScrollWheelUp
imap <buffer> <ScrollWheelUp> <Plug>delimitMateScrollWheelUp
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> < <Plug>delimitMate<
imap <buffer> > <Plug>delimitMate>
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'eruby'
setlocal filetype=eruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,app/views/lings/mass_assignment,public,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/Selenium-1.1.14/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.3/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.1/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.3/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.1/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.3/lib,~/.rvm/gems/ruby-1.9.3-p392
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=~/Documents/Linguistic-Explorer/tags,~/Documents/Linguistic-Explorer/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit features/step_definitions/web_steps.rb
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <RightMouse> <Plug>delimitMateMRightMouse
imap <buffer> <LeftMouse> <Plug>delimitMateMLeftMouse
imap <buffer> <S-Up> <Plug>delimitMateS-Up
imap <buffer> <S-Down> <Plug>delimitMateS-Down
imap <buffer> <PageDown> <Plug>delimitMatePageDown
imap <buffer> <PageUp> <Plug>delimitMatePageUp
imap <buffer> <Down> <Plug>delimitMateDown
imap <buffer> <Up> <Plug>delimitMateUp
imap <buffer> <C-Right> <Plug>delimitMateC-Right
imap <buffer> <C-Left> <Plug>delimitMateC-Left
imap <buffer> <End> <Plug>delimitMateEnd
imap <buffer> <Home> <Plug>delimitMateHome
imap <buffer> <Right> <Plug>delimitMateRight
imap <buffer> <Left> <Plug>delimitMateLeft
imap <buffer> <Del> <Plug>delimitMateDel
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =len(delimitMate#Get('buffer')) ? delimitMate#Finish(0) : delimitMate#JumpMany()
imap <buffer> <C-ScrollWheelRight> <Plug>delimitMateC-ScrollWheelRight
imap <buffer> <S-ScrollWheelRight> <Plug>delimitMateS-ScrollWheelRight
imap <buffer> <ScrollWheelRight> <Plug>delimitMateScrollWheelRight
imap <buffer> <C-ScrollWheelLeft> <Plug>delimitMateC-ScrollWheelLeft
imap <buffer> <S-ScrollWheelLeft> <Plug>delimitMateS-ScrollWheelLeft
imap <buffer> <ScrollWheelLeft> <Plug>delimitMateScrollWheelLeft
imap <buffer> <C-ScrollWheelDown> <Plug>delimitMateC-ScrollWheelDown
imap <buffer> <S-ScrollWheelDown> <Plug>delimitMateS-ScrollWheelDown
imap <buffer> <ScrollWheelDown> <Plug>delimitMateScrollWheelDown
imap <buffer> <C-ScrollWheelUp> <Plug>delimitMateC-ScrollWheelUp
imap <buffer> <S-ScrollWheelUp> <Plug>delimitMateS-ScrollWheelUp
imap <buffer> <ScrollWheelUp> <Plug>delimitMateScrollWheelUp
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/Selenium-1.1.14/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.3/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.1.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.1/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.3/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-0.2.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.1/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.3/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/alphabetical_paginate-1.0.4/lib,~
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/Documents/Linguistic-Explorer/tags,~/Documents/Linguistic-Explorer/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 025l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
