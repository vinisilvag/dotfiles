return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ensure_installed = {
          "stylua",
          "clang-format",
          "mypy", -- Optional static typing for Python
          "ruff",
          "black",
          "isort",
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd", -- C and C++
          "rust_analyzer",
          "pylsp",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local util = require("lspconfig/util")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        filetypes = { "rust" },
        root_dir = util.root_pattern("Cargo.toml"),
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
            },
          },
        },
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities,
        filetypes = { "python" },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
