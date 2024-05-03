-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Nvim Tools
  { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- Schemes
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },

  -- Languages
  { import = "astrocommunity.pack.lua" },
}
