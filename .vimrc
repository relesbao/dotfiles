set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"sintax ativada
syntax on

"ignora whitespace no vimdiff
"set diffopt+=iwhite

"background preto
set background=dark

"tema escolhido
colorscheme wombat256

autocmd vimenter * NERDTree

"linhas
set number
"régua
set ruler
"tab com 4 espaços
set tabstop=4
set shiftwidth=4
"opções de backup
set backup
set backupdir=/tmp/

" Ativa salvamento dos undos
set undodir=/tmp/
set undofile

set dir=/tmp/
set updatecount=1

"quebra a linha xD
set wrap

"opções de busca
set is hls ic scs magic

"define o split para a direta
set splitright

"showmach -> mostra par de parênteses
set sm

"AutoWrite -> gravação automática
set autowrite

"esconde o mouse :S
set mousehide

"AutoIndent
set ai
""set noci
""set si
" Expandir tabs para espaços
"set expandtab
set noexpandtab
" Voltar indentações corretamente com indentações por espaço
set smarttab
set foldmethod=manual

"encurta mensagens de rodapé
set shm=filmnrwxt

"converte tabs por espaços
""set et
""retab

"comportamento do backspace
set backspace=indent,eol,start

"pisca a tela ao invés de apitar
set novisualbell

"coloca 3 espaços após o . quando usando o gq
set nojoinspaces

"compeltação do TAB igual ao bash
set wildmode=longest,list:full

"linhas de histórico
set history=300

"Configurações do VIM não do VI
set nocompatible

"Funções do mouse no teclado
set mouse=a

"Configurações para python
""au FileType python set ts=8 tw=80 noet
""au FileType python syn match pythonTAB '\t\+'
""au FileType python hi pythonTAB ctermbg=blue
""au FileType python set list listchars=tab:··
""au FileType python hi pythonString ctermfg=lightgrey
"au FileType python hi pythonRawString ctermfg=lightgrey

au BufNewFile,BufRead *.phps   set ft=php
au BufNewFile,BufRead *.ctp   set ft=php
au BufNewFile,BufRead *.tex   set textwidth=80

set list listchars=tab:»·,trail:·,eol:$,nbsp:·
""set nolist
"hi list guifg=lightgreen
"hi listchars guifg=lightgreen

"Espaço como page down
noremap <Space> <PageDown>

"Usa padrão iso
"set fileencoding=ISO-8859-1
"set enc=ISO-8859-1
set fileformat=unix
set colorcolumn=120
"set textwidth=120
highlight ColorColumn ctermbg=8

"Configurações pro php
let php_sql_query = 1
let php_parent_error_close = 1
let php_parent_error_open = 1
let php_htmlInStrings = 1

"Abreviações úteis
cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq
cab Bw bw
cab BW bw
"
"Esconder/Mostrar comentários
"noremap <F2> :hi Comment guifg=SkyBlue<cr>
"noremap <F3> :hi Comment term=bold guifg=#333333<cr>

"Mostra tab no início do texto e espaços no final
map ,mt /^\t\+\\|\s\+$<cr>

"Copia uma linha inteira para baixo
map ,cp <esc>yyp

" script que fecha caracteres '(', '{' e '['
"inoremap ( ()<esc>:call _AddChar(")")<cr>i
"inoremap { {}<esc>:call _AddChar("}")<cr>i
"inoremap [ []<esc>:call _AddChar("]")<cr>i
"inoremap \" \"\"<esc>:call _AddChar("\"")<cr>i
"inoremap ' ''<esc>:call _AddChar("'")<cr>i
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>

function! CloseChar(schar)
	if (getline('.')[col('.')] != a:schar)
		exec "normal a" . a:schar
	else
		normal l
	endif
endfunction

"inoremap ( (<ESC>:<C-U>call CloseChar(")")<CR>i
"inoremap [ [<ESC>:<C-U>call CloseChar("]")<CR>i
"inoremap < <<ESC>:<C-U>call CloseChar(">")<CR>i
"inoremap { {<ESC>:<C-U>call CloseChar("}")<CR>i

"coloca a data tipo Ter 26/Out/2004 hs 10:53 na linha atual
iab ,d <C-R>=strftime("%d/%b/%Y")<CR>

" volta pra última linha que estava sendo editado
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

" Abre o arquivo embaixo do mouse
nmap gf :new %:p:h/<cfile><CR>
"
" Trabalhando com buffers
map <A-1> :b1<cr>
map <A-2> :b2<cr>
map <A-3> :b3<cr>
map <A-4> :b4<cr>
map <A-5> :b5<cr>
map <A-6> :b6<cr>
map <A-7> :b7<cr>
map <A-8> :b8<cr>
map <A-9> :b9<cr>
map <A-0> :b10<cr>
map <S-F1> :b11<cr>
map <S-F2> :b12<cr>
map <S-F3> :b13<cr>
map <S-F4> :b14<cr>
map <S-F5> :b15<cr>
map <S-F6> :b16<cr>
map <S-F7> :b17<cr>
map <S-F8> :b18<cr>
map <S-F9> :b19<cr>
map <S-F10> :b20<cr>
map <S-F11> :b21<cr>
map <S-F12> :b22<cr>
map <C-Q> :bwipeout<cr>
map <F6> :buffers<cr>


" Matchs
"set matchpairs +=<:>

map ,s <ESC>:w<cr>
map ,q <ESC>:x<cr>
nmap n nzz
map ,iso <ESC>:set fileencoding=iso-8859-1<cr>:w<cr>
map ,utf <ESC>:set fileencoding=utf-8<cr>:w<cr>


"Highlight current
"set cursorline
"hi cursorline guibg=#333333
""hi CursorColumn guibg=#333333
""hi Cursor guibg=#FFFFFF guifg=#333333

"inoremap <C-S-D> <ESC>:call PhpDocSingle()<CR>i
"nnoremap <C-S-D> :call PhpDocSingle()<CR>
"vnoremap <C-S-D> :call PhpDocRange()<CR>

vnoremap ,o zo<CR>
nnoremap ,c zf<CR>
vnoremap ,ao zO<CR>
vnoremap ,ac zM<CR>
vnoremap ,gg [z<CR>
vnoremap ,G ]z<CR>
vnoremap ,n zj<CR>
vnoremap ,p zk<CR>

map <F2> :TlistToggle<CR>

fun! LastChange()
	mark z
	if getline(1) =~ ".*Last Change:" ||
	\ getline(2) =~ ".*Last Change:"  ||
	\ getline(3) =~ ".*Last Change:"  ||
	\ getline(4) =~ ".*Last Change:"  ||
	\ getline(5) =~ ".*Last Change:"
	exec "1,5s/\s*Last Change: .*$/Last Change: " . strftime("%c") . "/"
	endif
	exec "'z"
endfun

function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-X>\<C-O>"
endfunction

"inoremap <Tab> <C-R>=CleverTab()<CR>

vnoremap < <gv
vnoremap > >gv
vmap <TAB> >
vmap <S-TAB> <

"" Move bloco de texto selecionado pra cima
function! MoveUp()
	let end=line("'>")
	let start=line("'<")
	if (start > 1)
		let dif=end - start
		exec "'<,'>d"
		exec "normal kP"
		exec "normal " . (start-1) . "GV" . (end-1) . "G"
	else
		exec "normal " . (start) . "GV" . (end) . "G"
	endif
endfunction

" Move bloco de texto selecionado para baixo
function! MoveDown()
	let end=line("'>")
	let start=line("'<")
	if (end < line("$")-1)
		let dif=end - start
		exec "'<,'>d"
		exec "normal p"
		exec "normal " . (start+1) . "GV" . (end+1) . "G"
	else
		exec "normal " . (start) . "GV" . (end) . "G"
	endif
endfunction
" Duplica um bloco de texto
function! Duplicate()
	let end=line("'>")
	let start=line("'<")
	let dif=end - start
	exec "'<,'>y"
	exec "normal " . end . "G"
	exec "normal $p"
	exec "normal " . (start+dif+1) . "GV" . (end+dif+1) . "G"
endfunction


 " Move bloco de texto selecionado pra cima
vnoremap <C-S-UP> :<C-U>call MoveUp()<CR>
" Move bloco de texto selecionado pra baixo
vnoremap <C-S-DOWN> :<C-U>call MoveDown()<CR>
vnoremap <C-D> :<C-U>call Duplicate()<CR>


"autocmd! bufwritepost .vimrc source %
autocmd BufRead,BufNewFile *.php compiler php
"autocmd! bufwritepost .gvimrc source %


autocmd BufNewFile model.*.php 0r!cat ~/.vim/templates/model.php.tpl
autocmd BufNewFile *.otl 0r!cat ~/.vim/templates/tela.otl.tpl

set guioptions-=T
set guioptions-=m
set guioptions-=r

command Fput :normal i @file_put_contents('/home/relesbao/htdocs/log', var_export(<args>, true), FILE_APPEND);<ESC>


"winpos 1 1
"set guiheadroom=0
"set lines=84

let potwiki_home="$HOME/Documentos/Wiki/HomePage"
let potwiki_sufix=".pwiki"

map <F3> :NERDTreeToggle<CR>
map <C-TAB> :bnext<CR>
map <C-S-TAB> :bprevious<CR>

au FileType php match Type /@\(sub\)\?package\|@version\|@author\|@modifiedby\|@param||@return\|@var\|@access\|@see\|@uses\|@copyright\|@modified/
au FileType php set keywordprg=pman

" Statusline
set laststatus=2
set statusline=%f%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

map <C-j> :bnext<CR>
map <C-k> :bprev<CR>
map <C-h> :bfirst<CR>
map <C-l> :blast<CR>

""set spell spelllang=pt
set nospell

map <BS> :noh<cr>

set t_Co=256

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType tpl set omnifunc=phpcomplete#CompletePHP
autocmd FileType phtml set omnifunc=phpcomplete#CompletePHP
set completeopt=menu,longest,preview
" Numero maximo de itens no autocomplete
set pumheight=10

if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
	    \	if &omnifunc == "" |
	    \		setlocal omnifunc=syntaxcomplete#Complete |
	    \	endif
endif

"set tags=~/.vim/mytags/zendframework,~/.vim/mytags/f1commerce,~/.vim/mytags/f1p
"set tags=~/.vim/mytags/zendframework,~/.vim/mytags/f1s-mazer

"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
"autocmd BufWrite *.php,*.css,*.js,*.py,*.ctp,*.phtml :call DeleteTrailingWS()
