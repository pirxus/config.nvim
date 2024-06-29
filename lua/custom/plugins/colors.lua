return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup {
        options = {
          transparent = true,
          inverse = {
            match_paren = false,
          },
        },
        palletes = {
          terafox = {
            bg = "#020005",
            fg = "#eaeaea",
          },
          duskfox = {
            --bg = "#020809"
            bg = "#020005",
            fg = "#eaeaea",
          },
        },

        spcecs = {
          duskfox = {
            syntax = {
              cIncluded = "#fa6181",
            },
          },
        },

        groups = { -- /home/pirx/.local/share/nvim/site/pack/packer/start/nightfox.nvim/lua/nightfox
          -- FIXME : function and type groups do not work properly -> setup somehow ignoring them
          terafox = {
            LineNr = { fg = "#faaf4e", style = "bold" },
            TelescopeLineNr = { fg = "#587b7b" },
            LineNrAbove = { fg = "#587b7b" },
            LineNrBelow = { fg = "#587b7b" },
            --LineNrAbove = { fg = "#a0b0d0" },
            --LineNrBelow = { fg = "#a0b0d0" },
            --    TSLiteral = { fg = "#6090a0" },
            --    TSParameter = { fg = "#a0f0e0" },
            --    TSProperty = { fg = "#e090b0" },
            --    TSInclude = { fg = "#fBa8d3" },
            --    TSPunctBracket = { fg = "#e0e0e0" },
            --    TSNumber = { fg = "#fa6181" },
            --    TSFloat = { fg = "#fa6181" },
            --    TSFuncBuiltin = { fg = "#3acaca"},
            ["@type.builtin"] = { fg = "#dba8c3" },
            ["@constructor"] = { style = "bold" },
            ["@keyword.operator"] = { fg = "#dd70aa", style = "bold" },
            ["@function.builtin"] = { style = "bold" },
            ["@keyword.function"] = { fg = "#fBa8d3", style = "bold" },
            ["@variable.builtin"] = { fg = "#aaaaaa", style = "bold" },
            PmenuSel = { fg = "#303030", bg = "#fbafba" },
            --    --TSKeyword = { style = "bold"},
            --    --TSString = { fg = "#a3be8c" },
            --    --cIncluded = { fg = "#fa6181" },
          },
        },
      }

      -- Set the colorscheme
      vim.cmd.colorscheme "terafox"
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
}
