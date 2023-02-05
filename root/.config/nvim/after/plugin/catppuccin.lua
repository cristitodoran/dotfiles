require("catppuccin").setup({
  integrations = {
    indent_blankline = {
      enabled = true,
      colored_indent_levels = false,
    },
    fidget = true,
    barbecue = {
      dim_dirname = true,
    },
    dap = {
      enabled = true,
      enable_ui = true, -- enable nvim-dap-ui
    }
  }
})
