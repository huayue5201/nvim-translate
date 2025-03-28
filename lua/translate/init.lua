local api = require("translate.api")
local utils = require("translate.utils")
local ui = require("translate.ui")

local M = {}

--- 翻译光标处的单词
function M.translate_word()
	local word = utils.get_cursor_word()
	api.translate_request(word, "zh", function(result)
		ui.show_floating(result)
	end)
end

--- 翻译选中的文本
function M.translate_selection()
	local text = utils.get_visual_selection()
	api.translate_request(text, "zh", function(result)
		ui.show_floating(result)
	end)
end

--- 翻译整个文件
function M.translate_file()
	local text = utils.get_buffer_text()
	api.translate_request(text, "zh", function(result)
		ui.show_floating(result)
	end)
end

return M
