-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Turn off paster mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    command = "set nopaste",
  })
  
  -- Fix conceallevel for json files
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "json", "jsonc" },
    callback = function()
      vim.wo.spell = false
      vim.wo.conceallevel = 0
    end,
  })
  
  -- Black formatter
  local group = vim.api.nvim_create_augroup("Black", { clear = true })
  vim.api.nvim_create_autocmd("bufWritePost", {
    pattern = "*.py",
    command = "silent !black % -l 160",
    group = group,
  })
  