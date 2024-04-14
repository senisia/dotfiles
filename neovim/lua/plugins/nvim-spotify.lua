return {
  "KadoBOT/nvim-spotify",

  config = function()
    local spotify = require("nvim-spotify")

    spotify.setup({
      status = {
        update_interval = 10000,
        format = "%s %t by %a",
      },
    })

    vim.api.nvim_set_keymap("n", "<leader>sn", "<Plug>(SpotifySkip)", { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>sp", "<Plug>(SpotifyPause)", { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>ss", "<Plug>(SpotifySave)", { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>so", ":Spotify<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>sd", ":SpotifyDevices<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>sb", "<Plug>(SpotifyPrev)", { silent = true })
    vim.api.nvim_set_keymap("n", "<leader>sh", "<Plug>(SpotifyShuffle)", { silent = true })
  end,

  build = "make",
}
