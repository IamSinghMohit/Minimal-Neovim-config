local setup, devicons = pcall(require, "nvim-web-devicons")
if not setup then
  return
end

-- enable comment
devicons.setup(
  {
    override_by_extension = {
      ["js"] = {
        icon = "󰌞",
        color = "#cbcb41",
        cterm_color = "185",
        name = "Js",
      },
      ["ts"] = {
        icon = "󰛦",
        color = "#110af2",
        cterm_color = "74",
        name = "Ts",
      },
    },
  }
)
