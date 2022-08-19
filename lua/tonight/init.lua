-- tonight.nvim: lua colour scheme inspired by tomorrow and spacegray
local config = require('tonight.config')
local g = require("tonight.groups")
local util = require("tonight.util")

for group, styles in pairs(g) do
    util.highlight(group, styles)
end
