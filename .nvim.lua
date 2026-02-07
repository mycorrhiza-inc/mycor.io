-- Project-local Neovim configuration for ecosocdem.github.io
-- Requires: vim.opt.exrc = true in your main config

local M = {}

-- Path to the new-post script
local script_dir = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h")
local new_post_script = script_dir .. "/scripts/new-post.py"

-- Create a new blog post
function M.new_post()
  -- Prompt for title
  vim.ui.input({ prompt = "Post title: " }, function(title)
    if not title or title == "" then
      vim.notify("Cancelled: no title provided", vim.log.levels.WARN)
      return
    end

    -- Run the script and capture output
    local cmd = string.format('python3 "%s" "%s"', new_post_script, title)
    local handle = io.popen(cmd .. " 2>&1")
    if not handle then
      vim.notify("Failed to run new-post script", vim.log.levels.ERROR)
      return
    end

    local result = handle:read("*a")
    local success, _, code = handle:close()

    -- Trim whitespace
    result = result:gsub("^%s+", ""):gsub("%s+$", "")

    if success and code == 0 then
      -- Open the new file
      vim.cmd("edit " .. result)
      vim.notify("Created: " .. result, vim.log.levels.INFO)
    else
      vim.notify("Error: " .. result, vim.log.levels.ERROR)
    end
  end)
end

-- Keybinding: <leader>np for "new post"
vim.keymap.set("n", "<leader>np", M.new_post, { desc = "New blog post" })

return M
