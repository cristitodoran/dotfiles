return {
  { "preservim/nerdcommenter" },
  { "sudormrfbin/cheatsheet.nvim" },
  { "kevinhwang91/nvim-bqf", ft = "qf" },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  { "utilyre/barbecue.nvim" },
  {
    "windwp/nvim-ts-autotag",
    ft = { "typescriptreact", "tsx" }, -- the plugin will load depend on file type (check lazy.nvim docs)
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "m4xshen/smartcolumn.nvim" },
  { "mattn/emmet-vim" },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        prompt_prefix = "🔍 ",
        wrap_results = true,
        layout_config = {
          horizontal = {
            height = 0.99,
            width = 0.99,
          },
        },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  { "iberianpig/tig-explorer.vim" },
}
