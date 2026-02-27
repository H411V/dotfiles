return {
  'neovim/nvim-lspconfig',
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    vim.lsp.config('csharp-ls', {
      cmd = { 'csharp-ls' },
      filetypes = { 'cs' },
      root_markers = { '.sln', '.csproj' },

      on_attach = function(client, bufnr)
        vim.keymap.set('n', 'W', vim.lsp.buf.hover, { buffer = bufnr })
      end,

      capabilities = capabilities
    })

    vim.lsp.config('astro', {
      cmd = { 'astro-ls', '--stdio' },
      filetypes = { 'astro' },
      root_markers = { 'package.json', 'tsconfig.json', '.git' },

      on_attach = function(client, bufnr)
        vim.keymap.set('n', 'W', vim.lsp.buf.hover, { buffer = bufnr })
      end,

      capabilities = capabilities
    })

    vim.lsp.enable('csharp-ls')
    vim.lsp.enable('astro')
  end
}
