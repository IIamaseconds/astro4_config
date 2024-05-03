---@diagnostic disable, 2: 2
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        i = {
          ["<C-s>"] = { "<esc>:w!<cr>", desc = "Save File" },
        },
        v = {
          -- Move selection up or down
          ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
          ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line up" },
        },
        n = {
          -- Override J behavior
          -- ["J"] = { "mzJ`z", desc = "Join lines" },
          -- Move selection up or down
          -- ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
          -- ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line up" },
          --
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>b"] = { name = "Buffers" },

          -- Close current buffer
          ["<Leader>q"] = {
            function() require("astrocore.buffer").close() end,
            desc = "Close buffer",
          },

          -- Switch active buffer
          -- ["<S-l>"] = {
          --   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
          --   desc = "Next buffer",
          -- },
          -- ["<S-h>"] = {
          --   function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
          --   desc = "Previous buffer",
          -- },
          -- RUST Debug
          -- ["<C-Space>"] = {
          --   require("rust-tools").hover_actions.hover_actions,
          --   desc = "Rust Hover actions",
          -- },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
