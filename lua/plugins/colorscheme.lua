return {
  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    config = function()
      vim.keymap.set('n', '<leader>tt', '<cmd>TransparentToggle<CR>', { desc = 'Toggle Transparency' })
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = vim.g.transparent_enabled,
        auto_integrations = true,
      }

      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}

--[[
{
    -- If you want to see what colorschemes are already installed, you can use `:elescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  }
--]]
