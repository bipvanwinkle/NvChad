local ok, focus = pcall(require, "focus")

if not ok then
  return
end

local M = {}

M.setup = function()
  focus.setup()
end

return M
