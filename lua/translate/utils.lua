local M = {}

--- 获取光标下的单词
---@return string 返回光标下的单词
function M.get_cursor_word()
	return vim.fn.expand("<cword>")
end

--- 获取选中的文本
---@return string 选中文本
function M.get_visual_selection()
	vim.cmd('noau normal! "vy"')
	return vim.fn.getreg("v")
end

--- 获取整个缓冲区的文本
---@return string 返回当前文件的所有文本
function M.get_buffer_text()
	return table.concat(vim.api.nvim_buf_get_lines(0, 0, -1, false), "\n")
end

return M
