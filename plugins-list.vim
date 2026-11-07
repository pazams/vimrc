" Supply-chain policy:
" - Every plugin is pinned to a full 40-char commit SHA (tags and branches are mutable
"   upstream; SHAs are not). The trailing comment records the tag the SHA corresponds to.
" - Do NOT run a bare :PlugUpdate or :PlugUpgrade. To bump a plugin:
"     git -C ~/.vim/plugged/<name> fetch --tags
"     git -C ~/.vim/plugged/<name> log -p <old-sha>..<new-sha>   " review the diff
"     edit the SHA below, then  :PlugUpdate <name>
" - Avoid plugins with build hooks ('do': npm/go/pip installs) - they pull in unpinned deps.

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim', { 'commit': 'b9ceb0f9eec504e18b67f43ab9c6ba2bd5b80c2d' } " 1.0.9
Plug 'jasoncodes/ctrlp-modified.vim', { 'commit': '96506691d974744c6c46e0a2617f02e1b4746525' } " v0.1.0
Plug 'kien/ctrlp.vim', { 'commit': 'c1646e3c28d75bcc834af4836f4c6e12296ba891' } " 1.79
Plug 'scrooloose/nerdtree', { 'commit': '4dada8c04fba25e788ea1836c82f9c18c1166b44' } " 5.0.0
Plug 'jistr/vim-nerdtree-tabs', { 'commit': '0decec122e9bb3e9328b01fa20a9650e79cc6ca7' } " v1.4.6
"Plug 'Xuyuanp/nerdtree-git-plugin', { 'commit': 'e71e62f' }  removed since https://github.com/scrooloose/syntastic/issues/1391
Plug 'junegunn/goyo.vim', { 'commit': '9e04ccdb9d79333d718c13e2e9ede76cd5af73a7' } " 1.6.0

Plug 'majutsushi/tagbar', { 'commit': 'e872e67641e602fb197c00f3dc5236753d5ba1fc' } " v2.6.1
Plug 'tomtom/tcomment_vim', { 'commit': '0c97deb0287f889fb362ee55721b6c8fc43dd752' } " v201
Plug 'tpope/vim-abolish', { 'commit': 'e6a170cda8ee542ec5f1384c9643d4330ee6b181' } " v1.1
Plug 'vim-airline/vim-airline', { 'commit': '410429a95c67eed8eeb26681838d3766a2437806' } " v0.8
Plug 'vim-airline/vim-airline-themes', { 'commit': '020b843077f6b2b3b85070b08203babbffbfeaca' }
Plug 'tpope/vim-fugitive', { 'commit': '34719016ec934609387e90804ad49b3d221f0b19' } " v2.2
Plug 'airblade/vim-gitgutter', { 'commit': '7b81a8a22607f073b76b106e2d5e63cc936b0d25' }
Plug 'tpope/vim-obsession', { 'commit': 'ad1ef9a0db9a03463b005b488fd27cb735317394' }
Plug 'tpope/vim-repeat', { 'commit': 'a81bef76031ca1c71766b516417480caeb01c932' } " v1.1
Plug 'airblade/vim-rooter', { 'commit': '70c105cbcf3ce19b92ddec8fa498e49ada79744b' }
Plug 'tpope/vim-surround', { 'commit': 'fd75eb2cb2ffe85a457445cb152d5a6c7acda140' } " v2.1
Plug 'amix/vim-zenroom2', { 'commit': '948734e280ed90db446dfc2cae7d5d8828d1e051' }
Plug 'MeanderingProgrammer/render-markdown.nvim', { 'commit': '640a3ec6d538bad17c328be373c7cad0293d9589' } " v8.14.0
Plug 'nvim-tree/nvim-web-devicons', { 'commit': '5b9067899ee6a2538891573500e8fd6ff008440f' } " v0.100
Plug 'ervandew/supertab', { 'commit': 'cdaa5c27c5a7f8b08a43d0b2e65929512299e33a' }

" https://editorconfig.org/
Plug 'editorconfig/editorconfig-vim', { 'commit': '0a3c1d8082e38a5ebadcba7bb3a608d88a9ff044' } " v1.1.1

" languages plugins
Plug 'neovim/nvim-lspconfig', { 'commit': '428f785c55996ac336534d299daac9209dd96e79' } " v0.1.0
Plug 'hrsh7th/cmp-nvim-lsp', { 'commit': 'ebdfc204afb87f15ce3d3d3f5df0b8181443b5ba' }
Plug 'hrsh7th/nvim-cmp', { 'commit': '8c82d0bd31299dbff7f8e780f5e06d2283de9678' } " v0.0.2

" Plug 'moll/vim-node', { 'tag': 'v0.8.1'}
" Plug 'pangloss/vim-javascript', { 'tag': 'v1.1.3'}
" Plug 'othree/yajs.vim', { 'tag': '1.6'}
" Plug 'mattn/emmet-vim', { 'commit': 'f4b097a' }
" Plug 'groenewege/vim-less', { 'commit': '6e818d5'}
" Plug 'nvie/vim-flake8', { 'tag': '1.6' }
" Plug 'chase/vim-ansible-yaml', { 'tag': 'v1.0' }
" Plug 'mxw/vim-jsx', { 'commit': 'eb656ed'}

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip', { 'commit': '0abfa1860f5e095a07c477da940cfcb0d273b700' }
Plug 'hrsh7th/vim-vsnip', { 'commit': '7fde9c0b6878a62bcc6d2d29f9a85a6616032f02' }
Plug 'rafamadriz/friendly-snippets', { 'commit': 'a8efb538f4be58b4f4586bc964f9f10496c05e31' }
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets', { 'tag': '1.0.0' }

" color scheme
Plug 'chriskempson/vim-tomorrow-theme', { 'commit': 'f45a2ca260d825b6aee72621f8f6158d815ac472' }

call plug#end()
