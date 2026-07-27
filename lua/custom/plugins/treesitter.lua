return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local languages = {
        "core",
        "stable",
        "vimdoc",
        "python",
        "odin",
        "c",
        "cpp",
        "markdown",
        "lua",
        "rust",
        "bash",
        "latex",
        "json",
        "yaml",
      }
      require("nvim-treesitter").setup {
        require("nvim-treesitter").install(languages)
      }

      vim.api.nvim_create_autocmd('FileType', {
        pattern = languages,
        callback = function() vim.treesitter.start() end,
      })
    end,
  },
}
