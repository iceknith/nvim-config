return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup({
      extra_groups = { "SnacksPicker", "SnacksTerminal" }, -- and this was super important as well
      exclude_groups = {}, -- table: groups you don't want to clear
    })
  end,
}
