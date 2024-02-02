return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()

    -- keybindings
    vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
  end,
}
