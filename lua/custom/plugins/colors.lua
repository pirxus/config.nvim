return {
   {
    "tjdevries/colorbuddy.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      --vim.cmd.colorscheme "gruvbuddy"


      --local colorbuddy = require('colorbuddy')

      ---- Set up your custom colorscheme if you want
      --colorbuddy.colorscheme("my-colorscheme-name")

      ---- And then modify as you like
      --local Color = colorbuddy.Color
      --local colors = colorbuddy.colors
      --local Group = colorbuddy.Group
      --local groups = colorbuddy.groups
      --local styles = colorbuddy.styles

      ---- Use Color.new(<name>, <#rrggbb>) to create new colors
      ---- They can be accessed through colors.<name>
      ----Color.new('background',  '#282c34')
      --Color.new('background',  '#020005')
      --Color.new('gray0',  '#020005')
      --Color.new('foreground',  '#282c34')
      --Color.new('red',         '#cc6666')
      --Color.new('green',       '#99cc99')
      --Color.new('yellow',      '#f0c674')

      ---- Define highlights in terms of `colors` and `groups`
      --Group.new('Function'        , colors.yellow      , colors.background , styles.bold)
      --Group.new('luaFunctionCall' , groups.Function    , groups.Function   , groups.Function)

      ---- Define highlights in relative terms of other colors
      --Group.new('Error'           , colors.red:light() , nil               , styles.bold)

      ---- If you want multiple styles, just add them!
      --Group.new('italicBoldFunction', colors.green, groups.Function, styles.bold + styles.italic)

      ---- If you want the same style as a different group, but without a style: just subtract it!
      --Group.new('boldFunction', colors.yellow, colors.background, groups.italicBoldFunction - styles.italic)



    end,
  },
  {
    "tinted-theming/tinted-nvim",
    priority = 1000, -- load colorscheme early
    lazy = false,    -- apply on startup
    --config = function()
    --  require("tinted-nvim").setup({
    --    default_scheme = "base16-ayu-dark",
    --  })
    --end,
  },
  {
    "vague-theme/vague.nvim",
    config = function()
      require("vague").setup {
        colors = {
          bg = "#020005",
          --fg = "#eaeaea",
          --string = "#61c398",
        },
      }
      --vim.cmd.colorscheme "vague"
    end,
  },
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
            --bg1 = "#020325",
            bg1 = "#020305",
            --bg0 = "#020305",
            --bg0 = "#020315",
            bg0 = "#020305",
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
            --LineNr = { fg = "#e0a03f", style = "bold" },
            LineNr = { fg = "#cce59e", style = "bold" },
            --TelescopeLineNr = { fg = "#587b7b" },
            TelescopeLineNr = { fg = "#284b5b" },
            --LineNrAbove = { fg = "#587b7b" },
            --LineNrBelow = { fg = "#587b7b" },
            LineNrAbove = { fg = "#385b6b" },
            LineNrBelow = { fg = "#385b6b" },
            WinSeparator = { fg = "#a0b0d0" },
            PmenuSel = { fg = "#303030", bg = "#fbafba" },
            Pmenu = { bg = "#070825" },
            NormalFloat = { fg = "#e6eaea", bg = "#070825"},--"#293e40" },
            Visual = { bg = "#2a3b58" },
            Search = { bg = "#2a3b58" },
            IncSearch = { bg = "#dba8c3"},-- fg = "#e6eaea" },

            ["@comment.note"] = { fg = "#000000" },
            ["@comment.warning"] = { fg = "#000000" },
            ["@comment.error"] = { fg = "#000000" },
            ["@comment.todo"] = { fg = "#000000" },
            DiagnosticUnnecessary = { fg = "#3f4c4e" },

            PreProc = { fg = "#8a8acf" },
            Number = { fg = "#dcf5ae"},-- style="italic" },
            --Number = { fg = "#a1d3b8" },
            --Number = { fg = "#dcf5ae" },
            --Constant = { fg = "#dcf5ae" },
            --Constant = { fg = "#fbafaa" },
            --Constant = { fg = '#fda47f' },-- '#fda47f' },
            Constant = { fg = "#fb91a0" },
            --Constant = { fg = '#aaaafa' },-- '#fda47f' },
            --Operator = { fg = "#dd70aa", style = "bold" },
            --["@keyword.return"] = {fg = "#fbafaa" },
            --["@comment.note"] = { fg = "#000000", bg = "#4bcca1" },
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
            ["@function.builtin"] = { fg = "#fbafaa", style="bold" },
            ["@keyword.function"] = { fg = "#fBa8d3", style = "bold" },
            ["@variable.builtin"] = { fg = "#aaaaaa", style = "bold" },
            --    --TSKeyword = { style = "bold"},
            --    --TSString = { fg = "#a3be8c" },
            --    --cIncluded = { fg = "#fa6181" },
            ["@function.macro.rust"] = { fg = "#fbafaa" },
            ["@constant.rust"] = { fg = "#fb91a0" },
            --["@type.rust"] = { fg = "#e3b752" },
            ["@lsp.type.property.rust"] = { fg = "#a1e3c8" },
            ["@lsp.type.parameter.rust"] = { link = "Variable" },
            ["@variable.member.rust"] = { link = "@lsp.type.property.rust" },
            ["@lsp.type.selfTypeKeyword.rust"] = { fg = "#aaaafa" },
            ["@lsp.type.enum.rust"] = { fg = "#dcf5ae" },
            ["@lsp.typemod.enum.defaultLibrary.rust"] = { fg = "#dcf5ae", style = "bold" },
            ["@lsp.typemod.macro.defaultLibrary.rust"] = { fg = "#fbafaa" },
            ["@lsp.typemod.method.defaultLibrary.rust"] = { fg = "#73a3b7" },
            --["@lsp.type.keyword.rust"] = { fg = "#e85c51" }, TODO: priority for rust needs to be changed

            --["@number.odin"] = { fg = "#a1d3b8" },
            --["@number.float.odin"] = { fg = "#a1d3b8" },
            --["@type.odin"] = { fg = "#dcf5ae" },
            --["@constant.odin"] = { fg = "#ff9664" },
            --["@function.call.odin"] = { fg = "#73a3b7" },
            --["@function.odin"] = { fg = "#73a3b7", style="bold" },
            --["@keyword.odin"] = { fg = "#aaaafa" },
            ["@keyword.odin"] = { fg = "#e85c51" },

            ["@function.builtin.python"] = { link = "@function.builtin" },
            --["@boolean.python"] = { fg = "#dcf5ae", style="bold" },
            ["@string.documentation.python"] = { fg = "#6d7f8b", style="italic" },
            --["@constant.python"] = { fg = "#dcf5ae" },

          },
        },
      }

      -- Set the colorscheme
      vim.cmd.colorscheme "terafox"
    end,
  },
}
