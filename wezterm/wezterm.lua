local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- カラースキーマ
config.color_scheme = 'Gruvbox Dark'

config.colors = {
    foreground = 'silver'
}

-- 背景透過
config.window_background_opacity = 0.85

-- フォント
config.font = wezterm.font("JetBrains Mono", {weight="Regular", stretch="Normal", italic=false})
config.font_size = 16

-- タブを下に表示
config.tab_bar_at_bottom = true

-- マウス操作の挙動
config.mouse_bindings = {
    -- 右クリックでクリップボードから貼り付け
    {
        event = { Down = { streak = 2, button = 'Right' } },
        mods = 'NONE',
        action = wezterm.action.PasteFrom 'Clipboard',
    },
}

-- キーバインド
config.keys = {}

return config
