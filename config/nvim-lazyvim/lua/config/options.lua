local opt = vim.opt

-- User Interface
-- opt.nu = tree -- enable line numbers
opt.relativenumber = true -- relative line numbers
opt.fillchars:append("eob: ")
opt.termguicolors = true -- enable true color support

-- User Experience
opt.mouse = "a" -- Enable mouse support
opt.swapfile = false -- Don't use swapfile
opt.completeopt = "menuone,noinsert,noselect" -- Autocomplete options

--
-- Formatting Related
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- Autoindent new lines

-- Search Related
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- unless capital letter in search

-- Formatting
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.py",
	callback = function()
		opt.textwidth = 160
		opt.colorcolumn = "160"
	end,
}) -- Python formatting

-- Editing
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
	callback = function()
		if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
			vim.cmd('normal! g`"')
		end
	end,
}) -- return to last edit position when opening files

-- clipboard
vim.opt.clipboard = "unnamedplus"
if vim.fn.has("wsl") == 1 then
	vim.g.clipboard = {
		name = "WslClipboard",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = function()
				return vim.fn.systemlist("powershell.exe -NoProfile -Command Get-Clipboard | tr -d '\r'")
			end,
			["*"] = function()
				return vim.fn.systemlist("powershell.exe -NoProfile -Command Get-Clipboard | tr -d '\r'")
			end,
		},
		cache_enabled = 0,
	}
end

-- color
vim.opt.termguicolors = true
