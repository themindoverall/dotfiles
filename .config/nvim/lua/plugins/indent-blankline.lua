vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = function()
      require("indent_blankline").setup({
        show_end_of_line = true,
        show_char_blankline = " ",
      })
    end,
  },
}
