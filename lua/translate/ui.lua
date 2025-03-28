local M = {}

--- 在浮动窗口中显示翻译结果
---@param text string 翻译后的文本
function M.show_floating(text)
	local buf = vim.api.nvim_create_buf(false, true)
	local width = math.floor(vim.o.columns * 0.5)
	local height = math.floor(vim.o.lines * 0.3)

	local opts = {
		relative = "editor",
		width = width,
		height = height,
		row = math.floor((vim.o.lines - height) / 2),
		col = math.floor((vim.o.columns - width) / 2),
		style = "minimal",
		border = "rounded",
	}

	vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(text, "\n"))
	vim.api.nvim_open_win(buf, true, opts)
end

return M
