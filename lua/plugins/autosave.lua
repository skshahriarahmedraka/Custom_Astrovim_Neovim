return {
  {
    "Pocco81/auto-save.nvim",
    event = { "InsertEnter", "TextChanged", "TextChangedI" },
    opts = {
      execution_message = {
        message = function() return ("AutoSave: saved at " .. vim.fn.strftime "%H:%M:%S") end,
        dim = 0.18,
        cleaning_interval = 1250, -- milliseconds
      },
      -- The key change is in the trigger_events below
      trigger_events = {
        "InsertLeave",
        "TextChanged", -- When text is changed in normal mode
        "TextChangedI", -- When text is changed in insert mode
        "CursorHoldI", -- Save after cursor hasn't moved in insert mode for a bit
      },
      -- Set a shorter debounce delay so it saves more frequently
      debounce_delay = 300, -- milliseconds (adjust to your preference)
      write_all_buffers = false,
    },
  },
}
