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
        file_ignore_patterns = {
          --"%.test.ts",
          --"%.test.tsx",
          "%.stories.js",
          "^node_modules/",
        },
      },
    },
    dependencies = {
      "polarmutex/git-worktree.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("git_worktree")
      end,
    },
    keys = {
      {
        "<leader>gw",
        function()
          require("telescope").extensions.git_worktree.git_worktrees()
        end,
        desc = "Change git worktree",
      },
      {
        "<leader>ga",
        function()
          require("telescope").extensions.git_worktree.create_git_worktree()
        end,
        desc = "Add git worktree",
      },
    },
  },
  { "iberianpig/tig-explorer.vim" },
  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh 1",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require("sniprun").setup({
        -- your options
        display = { "Classic" },
      })
    end,
  },
}
