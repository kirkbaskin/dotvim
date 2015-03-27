filetype plugin indent on

set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch		" Highlight all search matches
set autowrite		" Automatically save before commands like :next and :make
set hidden			" Hide buffers when they are abandoned
set mouse=a			" Enable mouse usage (all modes)
set number          " Enable line numbers
set relativenumber  " Enable relative line numbers
" set lbr             " Enable word-wrapping

set cm=blowfish

set backupdir=~/.cache,/tmp
set directory=~/.cache,/tmp

imap jk <Esc>
imap kj <Esc>

nnoremap j gj
nnoremap k gk

nnoremap <Space> za

set omnifunc=syntaxcomplete#Complete

set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

autocmd BufNewFile,BufReadPost *.md set filetype=markdown


" Matchit:
source $VIMRUNTIME/macros/matchit.vim


" Pathogen:
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" after adding a plugin, run :Helptags to bring in the documentation
	execute pathogen#infect()


" The following plugins are installed as git submodules


" Airline:
" Additional install steps:
" * Get a patched font from https://github.com/Lokaltog/powerline-fonts
" * Place fonts in ~/.fonts
" * fc-cache -vf ~/.fonts
" * Update terminal configuration to use the patched font (ie. Inconsolata for
" Powerline, pixel size: 19)
	set laststatus=2
	let g:airline#extensions#whitespace#enabled = 0
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline#extensions#tabline#buffer_min_count = 2
	let g:airline#extensions#tabline#buffer_nr_show = 1
	let g:airline_powerline_fonts=1
	set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 14


" CtrlP:


" Emmet:
	imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


" Fugitive:


" Goyo:


" Html5 Omnicomplete And Syntax:


" Hybrid Color Scheme:
" note: shows incorrectly when set bg=dark
	set t_Co=256
	colorscheme hybrid


" Mustache Handlebars Mode:


" Surround:


" Syntastic:
" Additional install steps:
" sudo apt-get install tidy
" npm install -g jshint recess PrettyCSS csslint
	let g:syntastic_html_checkers = ['w3']
	let g:syntastic_xhtml_checkers = ['tidy']
	let g:syntastic_css_checkers = ['csslint']
    let g:syntastic_mode_map = { "mode": "passive" }

" Vimoutliner:
