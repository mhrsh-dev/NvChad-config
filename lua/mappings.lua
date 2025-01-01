require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("i", "jk", "<ESC>")

-- nvim-dap
map("n", "<leader>b", "<Cmd> DapToggleBreakpoint <CR>") -- toggle breakpoint
map("n", "<leader>db", "<Cmd> DapToggleBreakpoint <CR>") -- toggle breakpoint
map("n", "<leader>dpr", function () require('dap-python').test_method() end) -- debug python run
map("n", "<leader>dc", function () require('dap').continue() end)
map("n", "<F5>", function () require('dap').continue() end)
map("n", "<F10>", function () require('dap').step_over() end)
map("n", "<F11>", function () require('dap').step_into() end)
map("n", "<F12>", function () require('dap').step_out() end)

map("n", "<leader>dl", function () require('dap').run_last() end)
map("n", "<leader>dl", function () require('dap').run_to_cursor() end)
