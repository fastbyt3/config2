local wezterm = require 'wezterm'

function font_with_fallback(name, params)
  local names = {name, 'Hack Nerd Font'}

  return wezterm.font_with_fallback(names, params)
end

wezterm.on('plumb', function(window, pane)
  local sel = window:get_selection_text_for_pane(pane)
  local cwd = pane:get_current_working_dir()

  if cwd == nil or sel == nil then
    return
  end

  -- Extract current working directory from the file URI and make sure it
  -- actually contains an directory.
  cwd = cwd:gsub("^file://[^/]*", "")
  if #cwd == 0 then
    return
  end

  -- Trim whitespace from the selected text and make sure it's not empty.
  sel = sel:gsub("^%s*(.-)%s*$", "%1")
  if #sel == 0 then
    return
  end

  local success, stdout, stderr = wezterm.run_child_process({
    '/bin/sh',
    wezterm.config_dir .. '/bin/plumb',
    cwd,
    sel
  })

  if not success and #stderr > 0 then
    wezterm.log_error(stderr)
  end
end)

return {
  color_scheme = 'Gogh (Gogh)',
  font = font_with_fallback('JetBrainsMono Nerd Font'),
  font_dirs = {'fonts'},
  font_rules = {
    {
      intensity = 'Bold',
      font = font_with_fallback('JetBrainsMono Nerd Font'),
    },
  },
  font_size = 10.5,
  line_height = 1.1,
}
