let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
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
inoremap <Plug>(EmmetAnchorizeSummary) =emmet#anchorizeURL(1)
inoremap <Plug>(EmmetAnchorizeURL) =emmet#anchorizeURL(0)
inoremap <Plug>(EmmetRemoveTag) =emmet#removeTag()
inoremap <Plug>(EmmetSplitJoinTag) :call emmet#splitJoinTag()
inoremap <Plug>(EmmetToggleComment) =emmet#toggleComment()
inoremap <Plug>(EmmetImageSize) =emmet#imageSize()
inoremap <Plug>(EmmetMovePrev) :call emmet#moveNextPrev(1)
inoremap <Plug>(EmmetMoveNext) :call emmet#moveNextPrev(0)
inoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-1)
inoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(1)
inoremap <Plug>(EmmetExpandWord) =emmet#expandAbbr(1,"")
inoremap <Plug>(EmmetExpandAbbr) =emmet#expandAbbr(0,"")<Right>
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
vmap c <Plug>(EmmetCodePretty)
vmap m <Plug>(EmmetMergeLines)
nmap A <Plug>(EmmetAnchorizeSummary)
nmap a <Plug>(EmmetAnchorizeURL)
nmap k <Plug>(EmmetRemoveTag)
nmap j <Plug>(EmmetSplitJoinTag)
nmap / <Plug>(EmmetToggleComment)
nmap i <Plug>(EmmetImageSize)
nmap N <Plug>(EmmetMovePrev)
nmap n <Plug>(EmmetMoveNext)
vmap D <Plug>(EmmetBalanceTagOutward)
nmap D <Plug>(EmmetBalanceTagOutward)
vmap d <Plug>(EmmetBalanceTagInward)
nmap d <Plug>(EmmetBalanceTagInward)
nmap ; <Plug>(EmmetExpandWord)
vmap , <Plug>(EmmetExpandAbbr)
nmap , <Plug>(EmmetExpandAbbr)
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
nnoremap <silent> \b :CommandTBuffer
nnoremap <silent> \t :CommandT
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
vnoremap <Plug>(EmmetCodePretty) :call emmet#codePretty()
vnoremap <Plug>(EmmetMergeLines) :call emmet#mergeLines()
nnoremap <Plug>(EmmetAnchorizeSummary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(EmmetAnchorizeURL) :call emmet#anchorizeURL(0)
nnoremap <Plug>(EmmetRemoveTag) :call emmet#removeTag()
nnoremap <Plug>(EmmetSplitJoinTag) :call emmet#splitJoinTag()
nnoremap <Plug>(EmmetToggleComment) :call emmet#toggleComment()
nnoremap <Plug>(EmmetImageSize) :call emmet#imageSize()
nnoremap <Plug>(EmmetMovePrev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(EmmetMoveNext) :call emmet#moveNextPrev(0)
vnoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-2)
nnoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-1)
vnoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(2)
nnoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(1)
nnoremap <Plug>(EmmetExpandWord) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(EmmetExpandAbbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(EmmetExpandAbbr) :call emmet#expandAbbr(3,"")
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
imap A <Plug>(EmmetAnchorizeSummary)
imap a <Plug>(EmmetAnchorizeURL)
imap k <Plug>(EmmetRemoveTag)
imap j <Plug>(EmmetSplitJoinTag)
imap / <Plug>(EmmetToggleComment)
imap i <Plug>(EmmetImageSize)
imap N <Plug>(EmmetMovePrev)
imap n <Plug>(EmmetMoveNext)
imap D <Plug>(EmmetBalanceTagOutward)
imap d <Plug>(EmmetBalanceTagInward)
imap ; <Plug>(EmmetExpandWord)
imap , <Plug>(EmmetExpandAbbr)
inoremap <expr>  neocomplcache#close_popup()
imap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
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
set pastetoggle=<F2>
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Javascript-Indent,~/.vim/bundle/command-t,~/.vim/bundle/delimitMate,~/.vim/bundle/emmet-vim,~/.vim/bundle/neocomplcache.vim,~/.vim/bundle/nerdcommenter,~/.vim/bundle/nerdtree,~/.vim/bundle/syntastic,~/.vim/bundle/taglist.vim,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-cucumber,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-latex,~/.vim/bundle/vim-less,~/.vim/bundle/vim-literate-coffeescript,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-slime,~/.vim/bundle/vim-stylus,~/.vim/bundle/vim-surround,~/.vim/bundle/zencoding-vim,/usr/local/share/vim/vim73/vimfiles,/usr/local/share/vim/vim73,/usr/local/share/vim/vim73/vimfiles/after,~/.vim/bundle/vim-coffee-script/after,~/.vim/after
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
cd ~/Documents/yallame
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +31 client/subscriptions.litcoffee
silent! argdel *
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
file NERD_tree_1
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
nnoremap <buffer> <silent> <NL> :call nerdtree#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent>  :call nerdtree#invokeKeyMap('o')
nnoremap <buffer> <silent> ? :call nerdtree#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#invokeKeyMap("B")
nnoremap <buffer> <silent> CD :call nerdtree#invokeKeyMap("CD")
nnoremap <buffer> <silent> C :call nerdtree#invokeKeyMap("C")
nnoremap <buffer> <silent> D :call nerdtree#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#invokeKeyMap("f")
nnoremap <buffer> <silent> gi :call nerdtree#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#invokeKeyMap("gs")
nnoremap <buffer> <silent> go :call nerdtree#invokeKeyMap("go")
nnoremap <buffer> <silent> i :call nerdtree#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#invokeKeyMap("x")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#invokeKeyMap("<LeftRelease>")
nnoremap <buffer> <silent> <MiddleRelease> :call nerdtree#invokeKeyMap("<MiddleRelease>")
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
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal norelativenumber
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
setlocal statusline=%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal winfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
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
