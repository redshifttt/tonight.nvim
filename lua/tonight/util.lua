util = {}

local function linker(from_group, to_group)
	vim.cmd("highlight! " .. "link " .. from_group .. " " .. to_group)
end

function util.highlight(group, styles)
    local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
    local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
    local link = styles.link or nil

    if link then
        linker(group, link)
    else
        vim.cmd('highlight ' .. group .. ' ' .. gui .. ' ' .. ' ' .. fg .. ' ' .. bg)
    end
end

-- I can't into math so thanks for the code folke!
-- https://github.com/folke/tokyonight.nvim/blob/8223c970677e4d88c9b6b6d81bda23daf11062bb/lua/tokyonight/util.lua#L12
local function hex_to_rgb(hex_code)
  local hex = "[abcdef0-9][abcdef0-9]"
  local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
  hex_code = string.lower(hex_code)

  assert(string.find(hex_code, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_code))

  local r, g, b = string.match(hex_code, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

function util.blend(fg, bg, alpha)
  bg = hex_to_rgb(bg)
  fg = hex_to_rgb(fg)

  local blend_channel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02X%02X%02X", blend_channel(1), blend_channel(2), blend_channel(3))
end

function util.darken(hex, amount, bg)
  return util.blend(hex, bg or util.bg, math.abs(amount))
end
function util.lighten(hex, amount, fg)
  return util.blend(hex, fg or util.fg, math.abs(amount))
end

return util
