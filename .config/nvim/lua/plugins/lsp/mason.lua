return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "bashls",
        "lua_ls",
        "taplo",
        "gopls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        -- lsp
        "harper-ls",
        -- formatters
        "gofumpt",
        "goimports",
        "prettier",
        "shfmt",
        "stylua",
        -- linters
        "golangci-lint",
        "jsonlint",
        "shellcheck",
        "vale",
        "yamllint",
        -- dap
        "delve",
      },
    })
  end,
}
