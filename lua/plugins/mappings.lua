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
          ["<Leader>b"] = { name = "Buffers" },
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status.heirline").buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },

          -- Close current buffer
          ["<Leader>q"] = {
            function() require("astrocore.buffer").close() end,
            desc = "Close buffer",
          },

          -- Switch active buffer
          ["<S-l>"] = {
            function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
            desc = "Next buffer",
          },
          ["<S-h>"] = {
            function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
            desc = "Previous buffer",
          },
        },
        t = {},
      },
    },
  },
}
