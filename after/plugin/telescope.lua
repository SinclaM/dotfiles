local utils = require('telescope.utils')
local builtin = require("telescope.builtin")

local project_files = function()
    local _, ret, _ = utils.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
    if ret == 0 then
        builtin.git_files()
    else
        builtin.find_files()
    end
end

vim.keymap.set("n", "<leader>pa", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", project_files, {})
vim.keymap.set("n", "<C-g>", function ()
    builtin.grep_string({
        path_display = { 'smart' },
        only_sort_text = true,
        word_match = "-w",
        search = '',
    })
end, {})


