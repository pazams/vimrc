" Go: format on save through gopls (replaces vim-go's gofmt-on-save).
" Syntax highlighting comes from Neovim's built-in Go syntax.
if has('nvim')
lua <<EOF
vim.api.nvim_create_autocmd('BufWritePre', {
  group = vim.api.nvim_create_augroup('go_format_on_save', { clear = true }),
  pattern = '*.go',
  callback = function(args) vim.lsp.buf.format({ bufnr = args.buf, async = false, timeout_ms = 3000 }) end,
})
EOF
endif
