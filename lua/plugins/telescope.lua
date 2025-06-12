-- Telescope is a tool that you navigate between your files, folders and projects depending on your path

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    -- set a vim motion to <space> + f + f to search for files by their names
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
    -- set a vim motion to <space> + f + g to search for files based on the text inside of them
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[f]ind by [g]rep" })
    -- set a vim motion to <space> + f + d to search for code diagnostics in the current project
    vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[f]ind [d]iagnostics" })
    -- set a vim motion to <space> + f + r to resume the previous search
    vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "[f]inder [r]esume" })
    -- set a vim motion to <space> + f + . to search for recent files
    vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = '[f]ind recent files ("." for repeat)' })
    -- set a vim motion to <space> + f + b to search open buffers
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[f]ind existing [b]uffers" })
  end
}
