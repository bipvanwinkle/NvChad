local M = {}

M.setup_lsp = function(attach, capabilities)
  local lsp_config = require"lspconfig"

  lsp_config.tsserver.setup {
    on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>")
    end
  }
end

return M
