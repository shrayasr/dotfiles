local kuttyHyper = {"cmd", "alt", "ctrl"}

-- Shortcuts

hs.hotkey.bind(kuttyHyper, "z", function()
	hs.application.launchOrFocus("Zed")
end)

hs.hotkey.bind(kuttyHyper, "d", function()
	hs.application.launchOrFocus("DBeaver")
end)

hs.hotkey.bind(kuttyHyper, "k", function()
	hs.application.launchOrFocus("Bitwarden")
end)

hs.hotkey.bind(kuttyHyper, "0", function()
	hs.application.launchOrFocus("Calendar")
end)

hs.hotkey.bind(kuttyHyper, "w", function()
	hs.application.launchOrFocus("WhatsApp")
end)

hs.hotkey.bind(kuttyHyper, "g", function()
	hs.application.launchOrFocus("Telegram")
end)

hs.hotkey.bind(kuttyHyper, "f", function()
	hs.application.launchOrFocus("Firefox")
end)

hs.hotkey.bind(kuttyHyper, "c", function()
	hs.application.launchOrFocus("Brave Browser")
end)

hs.hotkey.bind(kuttyHyper, "v", function()
	hs.application.launchOrFocus("MacVim")
end)

hs.hotkey.bind(kuttyHyper, "`", function()
	hs.application.launchOrFocus("Ghostty")
end)


-- Window

hs.hotkey.bind(kuttyHyper, "-", function()
  local win = hs.window.focusedWindow()
  if win then win:minimize() end
end)

hs.hotkey.bind(kuttyHyper, "=", function()
  local win = hs.window.focusedWindow()
  if win then win:maximize() end
end)


-- Rebind harder keys

hs.hotkey.bind(kuttyHyper, ";", function()
  hs.eventtap.keyStroke({"ctrl", "cmd"}, "space")
end)


-- Hammerspoon meta

hs.hotkey.bind(kuttyHyper, "/", function()
  hs.alert.show("It works")
end)

hs.hotkey.bind(kuttyHyper, "F5", function()
  hs.reload()
  hs.alert.show("Reloaded!")
end)
