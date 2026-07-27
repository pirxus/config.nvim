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
          styles = {
            comments = "italic",
          },
        },
        palettes = {
          terafox = {
            bg = "#020005",
            bg1 = "#020325",
            --bg0 = "#020305",
            bg0 = "#020325",
            fg = "#eaeaea",
          },
          carbonfox = {
            bg = "#020005",
            fg = "#eaeaea",
          },
          duskfox = {
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
            LineNr = { fg = "#e0a03f", style = "bold" },
            TelescopeLineNr = { fg = "#587b7b" },
            LineNrAbove = { fg = "#587b7b" },
            LineNrBelow = { fg = "#587b7b" },
            WinSeparator = { fg = "#a0b0d0" },
            --PreProc = { fg = "#aaaafa" },
            Keyword = { fg = "#aaaafa" },
            DiagnosticUnnecessary = { fg = "#3f4c4e" },
            --["@keyword.return"] = {fg = "#fbafaa" },
            --Operator = { fg = "#dd70aa", style = "bold" },
            --["@comment.note"] = { fg = "#000000", bg = "#4bcca1" },
            ["@comment.note"] = { fg = "#000000" },
            ["@comment.warning"] = { fg = "#000000" },
            ["@comment.error"] = { fg = "#000000" },
            ["@comment.todo"] = { fg = "#000000" },
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
            ["@module"] = { fg = "#eaeaea" },
            ["@constructor"] = { style = "bold" },
            ["@keyword.operator"] = { fg = "#dd70aa", style = "bold" },
            ["@function.builtin"] = { style = "bold" },
            ["@keyword.function"] = { fg = "#fBa8d3", style = "bold" },
            ["@variable.builtin"] = { fg = "#aaaaaa", style = "bold" },
            PmenuSel = { fg = "#303030", bg = "#fbafba" },
            --NormalFloat = { fg = "#e6eaea", bg = "#1f2c2e"},--"#293e40" },
            --    --TSKeyword = { style = "bold"},
            --    --TSString = { fg = "#a3be8c" },
            --    --cIncluded = { fg = "#fa6181" },
            ["@function.macro.rust"] = { fg = "#fbafaa" },
            ["@constant.rust"] = { fg = "#fb91a0" },
            --["@type.rust"] = { fg = "#e3b752" },
            ["@lsp.type.property.rust"] = { fg = "#a1e3c8" },
            ["@lsp.type.parameter.rust"] = { link = "Variable" },
            ["@variable.member.rust"] = { link = "@lsp.type.property.rust" },
            ["@lsp.type.enum.rust"] = { fg = "#dcf5ae" },
            ["@lsp.typemod.enum.defaultLibrary.rust"] = { fg = "#dcf5ae", style = "bold" },
            ["@lsp.type.selfTypeKeyword.rust"] = { fg = "#aaaafa" },
            ["@lsp.typemod.macro.defaultLibrary.rust"] = { fg = "#fbafaa" },
            ["@lsp.typemod.method.defaultLibrary.rust"] = { fg = "#73a3b7" },

            ["@number.odin"] = { fg = "#a1d3b8" },
            ["@number.float.odin"] = { fg = "#a1d3b8" },
            ["@type.odin"] = { fg = "#dcf5ae" },
            ["@constant.odin"] = { fg = "#ff9664" },
            ["@function.call.odin"] = { fg = "#73a3b7" },
            ["@function.odin"] = { fg = "#73a3b7", style="bold" },
          },
        },
      }
 
      -- Set the colorscheme
      vim.cmd.colorscheme "terafox"
    end,
  },
}
