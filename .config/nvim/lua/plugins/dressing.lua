return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
  config = function()
    local dressing = require("dressing")

    dressing.setup({
      relative = "editor",
    })
  end,
}
