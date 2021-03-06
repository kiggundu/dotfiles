set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'asmapsvpn="sshuttle --dns -r vpn 10.20.0.0/13"

" Install the search meister
" Plugin 'wincent/command-t'

Plugin 'git://github.com/let-def/vimbufsync.git'
Plugin 'whonore/coqtail'
"Plugin 'git://github.com/the-lambda-church/coquille.git'
"Plugin 'the-lambda-church/coquille.git'
Plugin 'perl-support.vim'
"Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/kiggundu/darcula'

"Plugin 'Syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'ternjs/tern_for_vim'
"Plugin 'https://github.com/nvie/vim-flake8'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
"Plugin 'sickill/vim-monokai'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'sheerun/vim-polyglot'
"Plugin 'moll/vim-node'
Plugin 'honza/vim-snippets'

Plugin 'jiangmiao/auto-pairs'
Plugin 'prettier/vim-prettier'
Plugin 'dense-analysis/ale'

Plugin 'JamshedVesuna/vim-markdown-preview'
"Plugin 'iamcco/markdown-preview.nvim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'tpope/vim-fugitive'                                         " git plugin
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder conf
Plugin 'junegunn/fzf.vim'                                           " fuzzy finder
Plugin 'scrooloose/nerdtree'                                        " folders tree
Plugin 'scrooloose/nerdcommenter'                                   " code commenter
Plugin 'kien/rainbow_parentheses.vim'                               " for nested parentheses
Plugin 'tpope/vim-surround'                                         " quickly edit surroundings (brackets, html tags, etc)
Plugin 'junegunn/vim-easy-align'                                    " alignment plugin
Plugin 'neomake/neomake'                                            " run programs asynchronously and highlight errors
Plugin 'Valloric/MatchTagAlways'                                    " highlights html enclosing tags
Plugin 'neoclide/coc.nvim', {'branch': 'release'}                   " LSP client + autocompletion plugin
Plugin 'itchyny/lightline.vim'                                      " configurable status line (can be used by coc)
Plugin 'derekwyatt/vim-scala'                                       " scala plugin
Plugin 'stefandtw/quickfix-reflector.vim'                           " make modifications right in the quickfix window
Plugin 'Xuyuanp/nerdtree-git-plugin'                                " shows files git status on the NerdTree
Plugin 'leanprover/lean.vim'                                        " Lean Theorem prover official plugin
Plugin 'mk12/vim-lean', { 'for': 'lean' }                           "amalgamate of official plugin above and some extras
Plugin 'chrisbra/unicode.vim'                                       "Digraphs and the like to help with unicode 
Plugin 'vim-ruby/vim-ruby'                                          " For Facts, Ruby functions, and custom providers
Plugin 'tpope/vim-rails'                                            " For Facts, Ruby functions, and custom providers
Plugin 'tpope/vim-unimpaired'                                       "lots of cool vim stuff
Plugin 'tpope/vim-repeat'                                           "complement surround and other plugins such that they owrk as expected
Plugin 'janko/vim-test'                                           "Test runner shortcuts
Plugin 'editorconfig/editorconfig-vim'                              "set dev env as per .editorconfig if available
Plugin 'neoclide/npm.nvim', {'do' : 'npm install'}                "npm support
Plugin 'vim-syntastic/syntastic'                                    "Support for eslint
Plugin 'KurtPreston/vim-autoformat-rails'                                    "Support rails autoformatting
Plugin 'aserebryakov/vim-todo-lists'                                "process *.todo files nicely to track 
Plugin 'benmills/vimux'                                             "Provide vim tmux integration

"C++ plugins
Plugin 'git@github.com:WolfgangMehner/vim-support.git'          "Support vimscript dev in vim
Plugin 'git@github.com:WolfgangMehner/c-support.git'          "Support vimscript dev in vim
Plugin 'git@github.com:WolfgangMehner/bash-support.git'
Plugin 'git@github.com:WolfgangMehner/awk-support.git'
Plugin 'andreshazard/vim-logreview'
Plugin 'git@github.com:tomtom/tinykeymap_vim.git'               "Introducing submodes/subcontexts within vim
Plugin 'git@github.com:xolox/vim-misc.git'                      "vim-session depends on this
Plugin 'git@github.com:xolox/vim-session.git'                   "Easier Vim session management
Plugin 'git@github.com:AndrewRadev/linediff.vim.git'                   "Easily diff line ranges
Plugin 'Yilin-Yang/vim-markbar'                                 "A sidebar to jump between marks <leader>m
Plugin 'git@github.com:jacquesbh/vim-showmarks.git'             "Show marks in the gutter

packadd! matchit                                                    "enable matching of tags and codeblocks using %

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


autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"

set splitbelow
set splitright

" Enable folding with the spacebar
"nnoremap <space> za
set foldmethod=indent
set foldlevel=99
set foldnestmax=10
set nofoldenable
set foldlevelstart=99

"ensure all folds are expanded
au * normal zR

"see docstrings for folded code
"let g:SimpylFold_docstring_preview=1

"set python indentation and file format
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" set indentations for web dev
au BufNewFile,BufRead *.js,*.json,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Mark extra whitespace as bad!!!
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.rb,*.js,*.json,*.sh,*.scala match SpellBad /\s\+$/

set encoding=utf-8

"let mapleader = '\'
set timeout timeoutlen=1500
set number
"autocmd FileType coq colorscheme peachpuff
colorscheme darcula

"Allow sending ex commands to a new tab
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  "else
    " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
    tabnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

"Allow a quick diff of the changed file with the one it was loaded from
command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis


" redirect javascript formatting to  prettier node module
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

"Set up linting and fixing
let g:ale_linters = {
\   'ruby': ['standardrb', 'rubocop'],
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
  \    'ruby': ['standardrb', 'rubocop'],
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'vue': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
  \    'reason': ['refmt']
\}
let g:ale_fix_on_save = 1
nnoremap ]r :ALENextWrap<CR>     " move to the next ALE warning / error
nnoremap [r :ALEPreviousWrap<CR> " move to the previous ALE warning / error

"enable json syntax highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

" S C A L A 
" -----------------------
" ~/.vimrc
" Configuration for coc.nvim

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
"enter to select entr
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"                           
"shift-tab to move down
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"                                
"shift-tab to move up
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"                            
"Enter selects and confirms current top 
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"      
"close window when completion done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif                           

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)

" Remap for do action format
nnoremap <silent> F :call CocAction('format')<CR>

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

let g:coc_global_extensions = ['coc-solargraph']                " Coc extensions to install if not already installed

"===========================================================================
" Abraham Additions
"===========================================================================
nnoremap <Esc>[1;10B :t.<CR>                " duplicate the current line with <shift><alt><↑>
nnoremap <Esc><Esc>[B :m .+1<CR>              " move the current line down <alt><↓>
nnoremap <Esc><Esc>[A :m .-2<CR>              " move the current line up <alt><↑>

"Ruby dev stuff
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

"Markdown
let vim_markdown_preview_github=1               "use githb look and feel provided by 'grip'

"Easily navigate between buffers
:nnoremap <Tab> :bnext<CR>:redraw<CR>:ls<CR>
:nnoremap <S-Tab> :bprevious<CR>:redraw<CR>:ls<CR>

:set autowriteall                   "Save files when I switch buffers

" CTRL-A CTRL-Q to select all and build quickfix list

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

"Fix to ensure TMUX/byobu terminal syntax highlighting works when available
if &term =~# '256color' && ( &term =~# '^screen'  || &term =~# '^tmux' )
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
"##############################################################
" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.
"
" exclusive (bool): true: Motion is exclusive
" false: Motion is inclusive
" fwd (bool): true: Go to next line
" false: Go to previous line
" lowerlevel (bool): true: Go to line with lower indentation level
" false: Go to line with the same indentation level
" skipblanks (bool): true: Skip blank lines
" false: Don't skip blank lines
function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
  let line = line('.')
  let column = col('.')
  let lastline = line('$')
  let indent = indent(line)
  let stepvalue = a:fwd ? 1 : -1
  while (line > 0 && line <= lastline)
    let line = line + stepvalue
    if ( ! a:lowerlevel && indent(line) == indent ||
          \ a:lowerlevel && indent(line) < indent)
      if (! a:skipblanks || strlen(getline(line)) > 0)
        if (a:exclusive)
          let line = line - stepvalue
        endif
        exe line
        exe "normal " column . "|"
        return
      endif
    endif
  endwhile
endfunction

" Moving back and forth between lines of same or lower indentation.
nnoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
nnoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
nnoremap <silent> [L :call NextIndent(0, 0, 1, 1)<CR>
nnoremap <silent> ]L :call NextIndent(0, 1, 1, 1)<CR>
vnoremap <silent> [l <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ]l <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [L <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> ]L <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<CR>
onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<CR>
"#############################################################################
