return {
  {
    "gbprod/substitute.nvim",
    opts = {
      highlight_substituted_text = {
        enabled = true,
        timer = 500,
      },
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>p",
        function()
          require("substitute").operator()
        end,
      },
      {
        "<leader>pp",
        function()
          require("substitute").line()
        end,
      },
      {
        "<leader>P",
        function()
          require("substitute").eol()
        end,
      },
      {
        "<leader>p",
        function()
          require("substitute").visual()
        end,
        mode = "x",
      },
    },
  },
}
