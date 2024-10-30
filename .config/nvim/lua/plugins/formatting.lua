return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        bash = { "shfmt" },
        go = { "gofumpt", "goimports" },
        json = { "prettier" },
        jsonc = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        sh = { "shfmt" },
        toml = { "taplo" },
        yaml = { "prettier" },
		hcl = { "hclfmt" },
		tf = { "terraform_fmt" }
      },
      formatters = {
         hclfmt = {
          -- Specify the command and its arguments for formatting
          command = "terragrunt",
          args = { "hclfmt" },
          stdin = true,
        },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    conform.formatters.stylua = {
      prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
    }

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
