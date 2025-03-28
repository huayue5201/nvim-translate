# nvim-translate

🚀 **nvim-translate** 是一个适用于 Neovim 的翻译插件，支持多种翻译 API，可以翻译**光标处单词**、**选中文本**和**整个文件**，并以**浮动窗口**或**通知消息**展示翻译结果。

## ✨ 特性
- 📌 **翻译光标处单词**
- 📌 **翻译选中的文本**
- 📌 **翻译整个文件**
- 📌 **支持 Google Translate / DeepL / 百度翻译等 API**
- 📌 **翻译结果显示在浮动窗口或通知栏**
- 📌 **可自定义快捷键**
- 📌 **缓存翻译结果，减少 API 请求**
- 📌 **轻量级，无外部依赖**

---

## 📦 安装

### 使用 `lazy.nvim`
```lua
require("lazy").setup({
    { "yourname/nvim-translate", config = true },
})
```

### 使用 `packer.nvim`
```lua
use {
    "yourname/nvim-translate",
    config = function()
        require("nvim-translate").setup()
    end
}
```

### 手动安装
```bash
git clone https://github.com/yourname/nvim-translate ~/.config/nvim/lua/nvim-translate
```
然后在 `init.lua` 中添加：
```lua
require("nvim-translate").setup()
```

---

## ⚙️ 配置
默认配置：
```lua
require("nvim-translate").setup({
    default_lang = "zh", -- 目标语言
    backend = "google",  -- 选择翻译 API: google / deepl / baidu
    float_border = "rounded", -- 浮动窗口样式
    cache_enabled = true, -- 是否开启缓存
})
```

---

## ⌨️ 快捷键

| 快捷键 | 作用 |
|---------|------------------|
| `<leader>tw` | 翻译光标下的单词 |
| `<leader>ts` | 翻译选中的文本 |
| `<leader>tf` | 翻译整个文件 |

**手动映射快捷键**（可在 `init.lua` 中添加）：
```lua
vim.keymap.set("n", "<leader>tw", ":TranslateWord<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>ts", ":TranslateSelection<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tf", ":TranslateFile<CR>", { noremap = true, silent = true })
```

---

## 🛠️ 命令
| 命令 | 作用 |
|-------------------|------------------|
| `:TranslateWord` | 翻译光标下的单词 |
| `:TranslateSelection` | 翻译选中的文本 |
| `:TranslateFile` | 翻译整个文件 |

---

## 🖼️ 使用示例

1. **翻译光标处单词**：
   ```lua
   :TranslateWord
   ```
   结果会以浮动窗口展示。

2. **翻译选中的文本**：
   - 选中一段文本
   - 执行 `:TranslateSelection`
   - 翻译结果会显示在浮动窗口

3. **翻译整个文件**：
   ```lua
   :TranslateFile
   ```
   结果会在浮动窗口展示。

---

## 📜 API 支持

### **Google 翻译 API**
无需额外密钥，可直接使用。

### **DeepL API**
需要密钥，在 `setup()` 里配置：
```lua
require("nvim-translate").setup({
    backend = "deepl",
    api_key = "your-deepl-api-key",
})
```

### **百度翻译 API**
需要 `APP_ID` 和 `SECRET_KEY`，在 `setup()` 里配置：
```lua
require("nvim-translate").setup({
    backend = "baidu",
    app_id = "your-app-id",
    secret_key = "your-secret-key",
})
```

---

## 📝 贡献
欢迎提交 Issue 或 PR 来改进插件！

---

## 📃 许可证
MIT License

---

## 🌟 感谢
感谢所有开源贡献者和 Neovim 社区提供的支持！


