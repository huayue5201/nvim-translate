local M = {}

--- 发送异步 HTTP 请求到 Google 翻译 API
---@param text string 需要翻译的文本
---@param target_lang string 目标语言（如 "zh"）
---@param callback function 翻译完成后的回调函数，参数为翻译后的文本
function M.translate_request(text, target_lang, callback)
	local api_key = "YOUR_API_KEY" -- 替换为你的 API 密钥
	local url = string.format(
		"https://translate.googleapis.com/language/translate/v2?q=%s&target=%s&key=%s",
		vim.fn.escape(text, " "),
		target_lang,
		api_key
	)

	-- 异步请求
	vim.system({ "curl", "-s", url }, { text = true }, function(result)
		if result.code == 0 then
			local response = vim.fn.json_decode(result.stdout)
			if response and response.data and response.data.translations then
				local translated = response.data.translations[1].translatedText
				callback(translated)
			else
				callback("翻译失败")
			end
		else
			callback("请求失败")
		end
	end)
end

return M
