local hyper = { "cmd", "alt" }
local otherHyper = { "cmd", "alt", "ctrl" }
units = {
    top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
    bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },
    maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 }
  }
hs.window.animationDuration = 0
hs.hotkey.bind(hyper, "right", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.right50)
end)
hs.hotkey.bind(hyper, "left", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.left50)
end)
hs.hotkey.bind(hyper, "up", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(units.top50)
end)
hs.hotkey.bind(hyper, "down", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(units.bot50)
end)
hs.hotkey.bind(otherHyper, "down", function()
  local win = hs.window.focusedWindow();
  if not win then return end
  win:moveToUnit(hs.layout.maximized)
end)
hs.hotkey.bind(otherHyper, "right", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToScreen(win:screen():next())
end)
hs.hotkey.bind(otherHyper, "left", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToScreen(win:screen():next())
end)
