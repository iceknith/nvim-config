return {
  "uga-rosa/ccc.nvim",
  cmd = "CccPick",
  config = function()
    local ccc = require("ccc")
    ccc.setup({
      inputs = {
        ccc.input.hsl,
        ccc.input.rgb,
        ccc.input.cmyk,
      },
    })
  end,
  keys = { { "<leader>p", "<cmd>CccPick<cr>", desc = "Color Picker" } },
}
