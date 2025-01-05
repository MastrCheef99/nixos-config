local M = {}

function M.ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
    -- Optionally, add a short delay using a timer if necessary
    vim.defer_fn(function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end, 50) -- 50ms delay
end

-- Automatically apply Gruvbox when this module is loaded
M.ColorMyPencils()

return M

