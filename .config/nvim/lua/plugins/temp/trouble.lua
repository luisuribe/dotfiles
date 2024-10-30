return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  keys = {
    { "<leader>xx", ":TroubleToggle<CR>", desc = "Open/close trouble list" },
    { "<leader>xw", ":TroubleToggle workspace_diagnostics<CR>", desc = "Open trouble workspace diagnostics" },
    { "<leader>xd", ":TroubleToggle document_diagnostics<CR>", desc = "Open trouble document diagnostics" },
    { "<leader>xq", ":TroubleToggle quickfix<CR>", desc = "Open trouble quickfix list" },
    { "<leader>xl", ":TroubleToggle loclist<CR>", desc = "Open trouble location list" },
    { "<leader>xt", ":TodoTrouble<CR>", desc = "Open todos in trouble" },
  },
}
