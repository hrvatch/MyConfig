-- Cattpuccin theme/colorscheme for Neovim
return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
    -- Set Neovim colorscheme to catppuccin
    vim.cmd.colorscheme "catppuccin"
  end
}
