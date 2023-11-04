local status, git = pcall(require, 'git')
if (not status) then return end

git.setup {
  keymaps = {
    -- open blame window
    blame = "<Leader>gb",
    -- open file/folder in git repo
    browse = "<Leader>go"
  }
}
