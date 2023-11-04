local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup{
  option = {
    icons_enabled = true,
    theme = 'solarized_dark',
    setion_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetype = {}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'brance' },
    lualine_c = { { 
      'filename',
      file_status = true, -- Display file status
      path = 0 -- 0 = Just filename
    } },
   lualine_x = { 
     { 'diagnostics', source = { 'nvim_diagnostic' }, symbols = { error = '', warn = '', info = '', hint = '' } },
     'encoding',
     'filetype',
   },
   lualine_y = { 'progress' },
   lualine_z = { 'loacation' }
  },
  inactive_setion = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true,
      path = 1 -- 1 = relative path
    }},
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' } 
}
