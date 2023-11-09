local status, live_server = pcall(require, "live_server")
if (not status) then return end

live_server.setup({
  port = 8080,
  browser_command = "", -- Empty string starts up with default browser
  quiet = false,
  no_css_inject = false, -- Disables css injection if true, might be useful when testing out tailwindcss
  install_path = vim.fn.stdpath "config" .. "/live-server/",
})
