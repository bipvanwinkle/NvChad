local ok, formatter = pcall(require, "formatter")

if not ok then
   return
end

local formatters = {
    filetype = {
        javascript = {
            function ()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
                    stdin = true
                }
            end
        }
    }
}

local M = {}

M.setup = function()
    print("farts")
    formatter.setup(formatters)
end

return M
