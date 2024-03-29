set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup      " no backup files
set nowritebackup  " no backup file while editing
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set hidden

" To load proper ruby
set shell=/bin/sh


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Declare bundles are handled via Vundle
filetype off " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Define bundles via Github repos
Plugin 'altercation/vim-colors-solarized'
Plugin 'croaky/vim-colors-github'
Plugin 'danro/rename.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'mileszs/ack.vim'
Plugin 'nanki/treetop.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache'
Plugin 'timcharper/textile.vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
" Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vividchalk'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/greplace.vim'
Plugin 'vim-scripts/tComment'
Plugin 'xenoterracide/html.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'shemerey/vim-peepopen'
Plugin 'jceb/vim-orgmode'

call vundle#end() 

filetype plugin indent on

augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Use Ag (https://github.com/ggreer/the_silver_searcher) instead of Grep when
" available
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Color scheme
if has("gui_running")
  syntax enable
  set background=light
  colorscheme solarized
endif



" Numbers
set number
set numberwidth=5

set wildmode=longest,list

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>

" Cucumber navigation commands
autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb
autocmd User Rails Rnavcommand config config -glob=**/* -suffix=.rb -default=routes

" Switch between the last two files
nnoremap <leader><leader> <c-^>


" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Git Gutter
let g:gitgutter_highlight_lines = 1
let g:gitgutter_eager = 0

" Markdown files end in .md
au BufRead,BufNewFile *.md set filetype=markdown

" Enable spellchecking for Markdown
au BufRead,BufNewFile *.md setlocal spell

" Automatically wrap at 80 characters for Markdown
au BufRead,BufNewFile *.md setlocal textwidth=80

" Auto save file when lost focus from the file
autocmd BufLeave,FocusLost * silent! wall

" NERDTree for projects
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin"
    highlight Normal ctermbg=black
  endif
endif
