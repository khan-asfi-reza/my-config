-- lua/plugins/python.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {
         analysis = {
          moveSymbol = true,
        }
      },
      ruff = {
        cmd_env = { RUFF_TRACE = "messages" },
        init_options = {
          settings = {
            logLevel = "error",
          },
        },
        keys = {
          { "<leader>co", LazyVim.lsp.action["source.organizeImports"], desc = "Organize Imports" },
          {
            "<leader>cf",
            function()
              vim.lsp.buf.format({ name = "ruff", async = true })
            end,
            desc = "Format Buffer (ruff)",
            ft = "python",
          },
        },
      },
    },
  },
}
