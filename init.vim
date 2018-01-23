if !exists("g:syntax_on")
    syntax enable
endif
colorscheme darkblue

:set list lcs=tab:\|\ "thin vertical lines for tab indents

" plugin - load the plugin file
" indent - load the indent file
" on - try to detect the type of file
filetype plugin indent on

set tabstop=4 " existing tabs have 4 space widths.
set shiftwidth=4 " shift indents using '>' use 4 spaces width
set expandtab " pressing tab now inserts 4 spaces

" Toggle NERDTree display
nmap <C-n> :NERDTreeToggle<CR> 

"Closes neovim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    
"   START filetype binding for using tabs (NOT SPACES) in certain file types.
autocmd FileType make setlocal noexpandtab
"   END filetype bindings
    
"   START This is for plugin installation with vim-plug
call plug#begin('~/.local/share/nvim/plugged') " install location for plugins
Plug 'roxma/nvim-completion-manager' "For autocompletion
Plug 'https://github.com/ervandew/supertab'
Plug 'SirVer/ultisnips'   "snippets
Plug 'honza/vim-snippets' "snippets
Plug 'Yggdroot/indentLine' " adds indent highlighting to space indents
Plug 'https://github.com/Raimondi/delimitMate' " automatic closing of quotes, brackets, etc.
Plug 'https://github.com/scrooloose/nerdtree' "Navigate file directory
Plug 'https://github.com/ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'https://github.com/neomake/neomake' "syntax checking
call plug#end()
"   END plugin installation
