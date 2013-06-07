let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
nmap <silent>  :wincmd h
nmap <silent> <NL> :wincmd j
nmap <silent>  :wincmd k
nmap <silent>  :wincmd l
nnoremap <silent>  :call repeat#wrap("\<C-R>",v:count)
nnoremap <silent> . :call repeat#run(v:count)
inoremap ï o
xmap S <Plug>VSurround
nnoremap <silent> U :call repeat#wrap('U',v:count)
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
map \m :call MakeSession()
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
map j gj
map k gk
nnoremap <silent> u :call repeat#wrap('u',v:count)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>SurroundRepeat .
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
nmap <silent> <C-Up> +
nmap <silent> <C-Down> -
nmap <silent> <C-Left> <
nmap <silent> <C-Right> >
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>DiscretionaryEnd
imap  <Plug>Isurround
imap  <Plug>AlwaysEnd
imap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set balloonexpr=SyntasticBalloonsExprNotifier()
set cryptmethod=blowfish
set expandtab
set exrc
set fileencodings=ucs-bom,utf-8,default,latin1
set formatprg=par
set helplang=en
set hidden
set ignorecase
set iskeyword=@,48-57,_,192-255,$
set pastetoggle=<F2>
set ruler
set runtimepath=~/.vim,~/.vim/bundle/nerdcommenter,~/.vim/bundle/nerdtree,~/.vim/bundle/syntastic,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-cucumber,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-surround,/usr/local/share/vim/vim73/vimfiles,/usr/local/share/vim/vim73,/usr/local/share/vim/vim73/vimfiles/after,~/.vim/after
set secure
set shiftwidth=2
set showmatch
set smartindent
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
badd +22 features/supported_data_entry.feature
badd +44 app/controllers/lings_controller.rb
badd +23 features/step_definitions/example_steps.rb
badd +14 app/views/examples/show.html.erb
badd +27 features/step_definitions/web_steps.rb
badd +14 app/views/lings/mass_assignment/_category.html.erb
badd +29 features/step_definitions/prop_steps.rb
badd +66 app/models/ling.rb
badd +12 app/views/lings/mass_assignment/_value.html.erb
badd +0 app/models/property.rb
badd +0 app/views/lings/supported_set_values.html.erb
args features/supported_data_entry.feature
edit features/supported_data_entry.feature
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 83 + 84) / 168)
exe '2resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 83 + 84) / 168)
exe '3resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 84 + 84) / 168)
exe '4resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 84 + 84) / 168)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
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
setlocal completefunc=
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
setlocal noexpandtab
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
setlocal formatoptions=t1
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
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=CucumberComplete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
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
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cucumber'
setlocal syntax=cucumber
endif
setlocal tabstop=2
setlocal tags=~/Documents/Linguistic-Explorer/tags,~/Documents/Linguistic-Explorer/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 25 - ((14 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 047l
wincmd w
argglobal
edit features/supported_data_entry.feature
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
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
setlocal completefunc=
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
setlocal noexpandtab
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
setlocal formatoptions=t1
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
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=CucumberComplete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cucumber'
setlocal syntax=cucumber
endif
setlocal tabstop=2
setlocal tags=~/Documents/Linguistic-Explorer/tags,~/Documents/Linguistic-Explorer/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 42 - ((18 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 044l
wincmd w
argglobal
edit features/step_definitions/prop_steps.rb
let s:cpo_save=&cpo
set cpo&vim
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
setlocal completefunc=syntaxcomplete#Complete
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
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/archive-tar-minitar-0.5.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/autoparse-0.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-0.9.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bcrypt-ruby-2.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/brakeman-1.9.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-3.0.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cancan-1.6.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.14.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.15.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capybara-0.4.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/celerity-0.9.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/childprocess-0.3.9/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.6.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/columnize-0.3.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/commonjs-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/configatron-2.10.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cover_me-1.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-rails-0.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/culerity-0.2.15/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/database_cleaner-0.6.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/devise-1.1.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/diff-lcs-1.1.3/lib,~/.rvm/gems/ruby-1.9.3
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
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
let s:l = 25 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 061l
wincmd w
argglobal
edit features/step_definitions/web_steps.rb
let s:cpo_save=&cpo
set cpo&vim
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
setlocal completefunc=syntaxcomplete#Complete
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
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/archive-tar-minitar-0.5.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/autoparse-0.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-0.9.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bcrypt-ruby-2.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/brakeman-1.9.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-3.0.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cancan-1.6.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.14.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.15.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capybara-0.4.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/celerity-0.9.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/childprocess-0.3.9/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.6.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/columnize-0.3.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/commonjs-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/configatron-2.10.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cover_me-1.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-rails-0.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/culerity-0.2.15/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/database_cleaner-0.6.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/devise-1.1.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/diff-lcs-1.1.3/lib,~/.rvm/gems/ruby-1.9.3
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
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
let s:l = 149 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
149
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 83 + 84) / 168)
exe '2resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 83 + 84) / 168)
exe '3resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 84 + 84) / 168)
exe '4resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 84 + 84) / 168)
tabedit app/models/property.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 83 + 84) / 168)
exe '2resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 83 + 84) / 168)
exe '3resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 84 + 84) / 168)
exe '4resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 84 + 84) / 168)
argglobal
let s:cpo_save=&cpo
set cpo&vim
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
setlocal completefunc=syntaxcomplete#Complete
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
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/archive-tar-minitar-0.5.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/autoparse-0.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-0.9.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bcrypt-ruby-2.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/brakeman-1.9.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-3.0.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cancan-1.6.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.14.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.15.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capybara-0.4.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/celerity-0.9.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/childprocess-0.3.9/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.6.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/columnize-0.3.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/commonjs-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/configatron-2.10.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cover_me-1.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-rails-0.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/culerity-0.2.15/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/database_cleaner-0.6.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/devise-1.1.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/diff-lcs-1.1.3/lib,~/.rvm/gems/ruby-1.9.3
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
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
let s:l = 31 - ((14 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 04l
wincmd w
argglobal
edit app/views/lings/supported_set_values.html.erb
let s:cpo_save=&cpo
set cpo&vim
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
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
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
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,app/views/lings,public,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/archive-tar-minitar-0.5.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/autoparse-0.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-0.9.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bcrypt-ruby-2.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/brakeman-1.9.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-3.0.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cancan-1.6.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.14.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.15.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capybara-0.4.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/celerity-0.9.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/childprocess-0.3.9/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.6.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/columnize-0.3.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/commonjs-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/configatron-2.10.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cover_me-1.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-rails-0.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/culerity-0.2.15/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/database_cleaner-0.6.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/devise-1.1.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/diff-lcs-1.1.3/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
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
let s:l = 10 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 011l
wincmd w
argglobal
edit app/models/ling.rb
let s:cpo_save=&cpo
set cpo&vim
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
setlocal completefunc=syntaxcomplete#Complete
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
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/archive-tar-minitar-0.5.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/autoparse-0.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-0.9.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bcrypt-ruby-2.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/brakeman-1.9.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-3.0.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cancan-1.6.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.14.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.15.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capybara-0.4.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/celerity-0.9.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/childprocess-0.3.9/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.6.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/columnize-0.3.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/commonjs-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/configatron-2.10.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cover_me-1.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-rails-0.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/culerity-0.2.15/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/database_cleaner-0.6.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/devise-1.1.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/diff-lcs-1.1.3/lib,~/.rvm/gems/ruby-1.9.3
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
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
let s:l = 67 - ((12 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 06l
wincmd w
argglobal
edit app/controllers/lings_controller.rb
let s:cpo_save=&cpo
set cpo&vim
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
setlocal completefunc=syntaxcomplete#Complete
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
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,app/views/lings,public,spec,spec/controllers,spec/helpers,spec/mailers,spec/models,spec/views,spec/lib,spec/features,spec/requests,spec/integration,features,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Documents/Linguistic-Explorer,NOTE:\\\ Gem.all_load_paths\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_load_paths\\\ called\\\ from\\\ -e:1.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
NOTE:\\\ Gem.all_partials\\\ is\\\ deprecated\\\ with\\\ no\\\ replacement.\\\ It\\\ will\\\ be\\\ removed\\\ on\\\ or\\\ after\\\ 2011-10-01.\
Gem.all_partials\\\ called\\\ from\\\ ~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/rubygems.rb:261.\
/home/ling/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux,~/.rvm/gems/ruby-1.9.3-p392/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionmailer-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/actionpack-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activemodel-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activerecord-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activeresource-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.0.17/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/activesupport-3.2.11/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/addressable-2.3.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/archive-tar-minitar-0.5.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/arel-3.0.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/autoparse-0.3.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-0.9.8/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bb-ruby-1.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/bcrypt-ruby-2.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/brakeman-1.9.5/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/builder-3.0.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cancan-1.6.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.14.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-2.15.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/capybara-0.4.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/celerity-0.9.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/childprocess-0.3.9/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-rails-3.2.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-2.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/coffee-script-source-1.6.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/columnize-0.3.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/commonjs-0.2.6/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/configatron-2.10.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cover_me-1.2.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-1.0.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/cucumber-rails-0.4.0/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/culerity-0.2.15/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.2/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemon_controller-1.1.4/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/database_cleaner-0.6.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/devise-1.1.7/lib,~/.rvm/gems/ruby-1.9.3-p392/gems/diff-lcs-1.1.3/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
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
let s:l = 78 - ((18 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
78
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 83 + 84) / 168)
exe '2resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 83 + 84) / 168)
exe '3resize ' . ((&lines * 18 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 84 + 84) / 168)
exe '4resize ' . ((&lines * 19 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 84 + 84) / 168)
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
