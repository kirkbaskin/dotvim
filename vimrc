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

source $VIMRUNTIME/macros/matchit.vim


" Pathogen:
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" after adding a plugin, run :Helptags to bring in the documentation
	execute pathogen#infect()


" Airline:
" git submodule add https://github.com/bling/vim-airline.git ~/.vim/bundle/airline
" * Get UbuntuMono fonts from https://github.com/Lokaltog/powerline-fonts
" * Place fonts in ~/.fonts
" fc-cache -vf ~/.fonts
" * Update terminal configuration to use the patched font (ie. Inconsolata for
" Powerline, pixel size: 19)
	set laststatus=2
	let g:airline#extensions#whitespace#enabled = 0
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#buffer_min_count = 2
	let g:airline#extensions#tabline#buffer_nr_show = 1
	let g:airline_powerline_fonts=1
	set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 14


" CtrlP:
" git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp


" Emmet:
" git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet
	imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


" Fugitive:
" git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/fugitive

" Goyo:
" git clone https://github.com/junegunn/goyo.vim.git ~/.vim/bundle/goyo


" Html5 Omnicomplete And Syntax:
" git clone https://github.com/othree/html5.vim.git ~/.vim/bundle/html5


" Hybrid Color Scheme:
" git clone https://github.com/w0ng/vim-hybrid.git ~/.vim/bundle/hybrid
" note: shows incorrectly when set bg=dark
	set t_Co=256
	colorscheme hybrid


" Limelight:
" git clone https://github.com/junegunn/limelight.vim.git ~/.vim/bundle/limelight
	autocmd User GoyoEnter Limelight
	autocmd User GoyoLeave Limelight!


" Markdown Folding:
" git clone https://github.com/nelstrom/vim-markdown-folding.git ~/.vim/bundle/markdown-folding


" Mustache Handlebars Mode:
" git clone git://github.com/mustache/vim-mustache-handlebars.git ~/.vim/bundle/mustache


" Solarized:
" git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/solarized
	let g:solarized_termcolors=256
"	colorscheme solarized


" Surround:
" git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/surround


" Syntastic:
" git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
" sudo apt-get install tidy
" npm install -g jshint recess PrettyCSS csslint
	let g:syntastic_html_checkers = ['w3']
	let g:syntastic_xhtml_checkers = ['tidy']
	let g:syntastic_css_checkers = ['csslint']
    let g:syntastic_mode_map = { "mode": "passive" }

" Vimoutliner
"  git clone https://github.com/vimoutliner/vimoutliner.git ~/.vim/bundle/vimoutliner
