return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- lua formatter
        null_ls.builtins.formatting.stylua,
        -- start prettier for no lua languages
        null_ls.builtins.formatting.prettier,
        -- start eslint for javascript
        require("none-ls.diagnostics.eslint_d"),
      },
    })
    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "[C]ode [F]ormat" })
  end,
}
