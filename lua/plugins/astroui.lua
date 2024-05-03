-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "astrodark",
    highlights = {
      init = {
        Normal = {
          guibg = nil,
          bgui = nil,
          fgui = nil,
          ctermbg = nil,
          ctermfb = nil,
          gui = nil,
        },
        NormalNC = {
          guibg = nil,
        },
        NeoTreeNormal = {
          guibg = nil,
        },
        NeoTreeNormalNC = {
          guibg = nil,
        },
      },
    },
  },
  astrotheme = {
    icons = {
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
