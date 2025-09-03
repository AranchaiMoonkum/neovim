return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "moon",
        styles = {
          bold = true,
          italic = false,
          transparency = true,
        },
        highlight_groups = {
          -- built-in
          TabLine = { fg = "subtle", bg = "surface" },
          TabLineFill = { bg = "surface" },
          TabLineSel = { fg = "text", bg = "overlay" },

          Pmenu = { fg = "subtle", bg = "surface" },
          PmenuExtra = { fg = "muted", bg = "surface" },
          PmenuExtraSel = { fg = "subtle", bg = "overlay" },
          PmenuKind = { fg = "foam", bg = "surface" },
          PmenuKindSel = { fg = "subtle", bg = "overlay" },
          PmenuSbar = { bg = "surface" },
          PmenuSel = { fg = "text", bg = "overlay" },

          -- status line
          StatusLine = { fg = "muted", bg = "surface" },
          StatusLineNC = { fg = "muted", bg = "surface", blend = 60 },

          -- search
          CurSearch = { fg = "base", bg = "leaf", inherit = false },
          Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

          -- blink
          BlinkCmpDoc = { bg = "highlight_low" },
          BlinkCmpDocSeparator = { bg = "highlight_low" },
          BlinkCmpDocBorder = { fg = "highlight_high", bg = "surface" },
          BlinkCmpGhostText = { fg = "muted" },

          BlinkCmpLabel = { fg = "muted" },
          BlinkCmpLabelDeprecated = { fg = "muted", strikethrough = true },
          BlinkCmpLabelMatch = { fg = "text" },

          BlinkCmpDefault = { fg = "highlight_med" },
          BlinkCmpKindText = { fg = "pine" },
          BlinkCmpKindMethod = { fg = "foam" },
          BlinkCmpKindFunction = { fg = "foam" },
          BlinkCmpKindConstructor = { fg = "foam" },
          BlinkCmpKindField = { fg = "pine" },
          BlinkCmpKindVariable = { fg = "rose" },
          BlinkCmpKindClass = { fg = "gold" },
          BlinkCmpKindInterface = { fg = "gold" },
          BlinkCmpKindModule = { fg = "foam" },
          BlinkCmpKindProperty = { fg = "foam" },
          BlinkCmpKindUnit = { fg = "pine" },
          BlinkCmpKindValue = { fg = "love" },
          BlinkCmpKindKeyword = { fg = "iris" },
          BlinkCmpKindSnippet = { fg = "rose" },
          BlinkCmpKindColor = { fg = "love" },
          BlinkCmpKindFile = { fg = "foam" },
          BlinkCmpKindReference = { fg = "love" },
          BlinkCmpKindFolder = { fg = "foam" },
          BlinkCmpKindEnum = { fg = "foam" },
          BlinkCmpKindEnumMember = { fg = "foam" },
          BlinkCmpKindConstant = { fg = "gold" },
          BlinkCmpKindStruct = { fg = "foam" },
          BlinkCmpKindEvent = { fg = "foam" },
          BlinkCmpKindOperator = { fg = "foam" },
          BlinkCmpKindTypeParameter = { fg = "iris" },
          BlinkCmpKindCodeium = { fg = "foam" },
          BlinkCmpKindCopilot = { fg = "foam" },
          BlinkCmpKindSupermaven = { fg = "foam" },
          BlinkCmpKindTabNine = { fg = "foam" },

          -- cmp
          CmpItemAbbr = { fg = "subtle" },
          CmpItemAbbrDeprecated = { fg = "subtle", strikethrough = true },
          CmpItemAbbrMatch = { fg = "text" },
          CmpItemAbbrMatchFuzzy = { fg = "text" },
          CmpItemKind = { fg = "text" },
          CmpItemKindClass = { link = "StorageClass" },
          CmpItemKindFunction = { link = "Function" },
          CmpItemKindInterface = { link = "Type" },
          CmpItemKindMethod = { link = "PreProc" },
          CmpItemKindSnippet = { link = "String" },
          CmpItemKindVariable = { link = "Identifier" },
        },
      })

      vim.cmd.colorscheme("rose-pine")
    end,
  },
  -- {
  --   "vague2k/vague.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   config = function()
  --     require("vague").setup({
  --       transparent = true,
  --       bold = false,
  --       italic = false,
  --       on_highlights = function(highlights, colors)
  --         highlights.StatusLine = { bg = "NONE" }
  --       end,
  --     })
  --     vim.cmd("colorscheme vague")
  --   end,
  -- },
  -- {
  --   "sainnhe/gruvbox-material",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.gruvbox_material_background = "soft"
  --     vim.g.gruvbox_material_disable_italic_comment = 1
  --     vim.g.gruvbox_material_transparent_background = 1
  --
  --     vim.cmd.colorscheme("gruvbox-material")
  --   end
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("tokyonight").setup({
  --       on_highlights = function(hl, c)
  --         local prompt = "#2d3149"
  --         hl.TelescopeNormal = {
  --           bg = c.bg_dark,
  --           fg = c.fg_dark,
  --         }
  --         hl.TelescopeBorder = {
  --           bg = c.bg_dark,
  --           fg = c.bg_dark,
  --         }
  --         hl.TelescopePromptNormal = {
  --           bg = prompt,
  --         }
  --         hl.TelescopePromptBorder = {
  --           bg = prompt,
  --           fg = prompt,
  --         }
  --         hl.TelescopePromptTitle = {
  --           bg = prompt,
  --           fg = prompt,
  --         }
  --         hl.TelescopePreviewTitle = {
  --           bg = c.bg_dark,
  --           fg = c.bg_dark,
  --         }
  --         hl.TelescopeResultsTitle = {
  --           bg = c.bg_dark,
  --           fg = c.bg_dark,
  --         }
  --       end,
  --     })
  --
  --     vim.cmd.colorscheme("tokyonight-night")
  --   end,
  -- },
}
