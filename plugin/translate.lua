local translate = require("translate")

vim.api.nvim_create_user_command("TranslateWord", translate.translate_word, {})
vim.api.nvim_create_user_command("TranslateSelection", translate.translate_selection, {})
vim.api.nvim_create_user_command("TranslateFile", translate.translate_file, {})

-- 快捷键绑定
vim.keymap.set("n", "<leader>tw", ":TranslateWord<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>ts", ":TranslateSelection<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tf", ":TranslateFile<CR>", { noremap = true, silent = true })
