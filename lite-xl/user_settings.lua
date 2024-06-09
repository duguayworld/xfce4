return {
  ["config"] = {
    ["always_show_tabs"] = true,
    ["borderless"] = true,
    ["code_font"] = {
      ["fonts"] = {
        [1] = {
          ["name"] = "Agave Nerd Font Regular",
          ["path"] = "/usr/share/fonts/Agave/AgaveNerdFont-Regular.ttf"
        }
      },
      ["options"] = {
        ["antialiasing"] = "subpixel",
        ["bold"] = false,
        ["hinting"] = "slight",
        ["italic"] = false,
        ["size"] = 15,
        ["smoothing"] = true,
        ["strikethrough"] = false,
        ["underline"] = false
      }
    },
    ["custom_keybindings"] = {
      ["doc:delete-to-previous-word-start"] = {
        [1] = "ctrl+shift+backspace",
        [2] = "ctrl+left"
      },
      ["root:move-tab-right"] = {
        [1] = "ctrl+pagedown",
        [2] = "ctrl+right"
      },
      ["root:switch-to-previous-tab"] = {
        [1] = "ctrl+shift+tab",
        [2] = "ctrl+left"
      },
      ["treeview:search-in-directory"] = {
        [1] = "ctrl+home"
      }
    },
    ["disabled_plugins"] = {
      ["autocomplete"] = true,
      ["autoreload"] = true,
      ["lintplus"] = true,
      ["lsp"] = true,
      ["lsp_json"] = true
    },
    ["disabled_transitions"] = {
      ["contextmenu"] = true
    },
    ["font"] = {
      ["fonts"] = {
        [1] = {
          ["name"] = "Agave Nerd Font Regular",
          ["path"] = "/usr/share/fonts/Agave/AgaveNerdFont-Regular.ttf"
        }
      },
      ["options"] = {
        ["antialiasing"] = "subpixel",
        ["bold"] = false,
        ["hinting"] = "full",
        ["italic"] = false,
        ["size"] = 15,
        ["smoothing"] = true,
        ["strikethrough"] = false,
        ["underline"] = false
      }
    },
    ["fps"] = 60,
    ["indent_size"] = 1,
    ["keep_newline_whitespace"] = true,
    ["line_height"] = 1.0,
    ["line_limit"] = 120,
    ["max_tabs"] = 10,
    ["plugins"] = {
      ["autoreload"] = {
        ["always_show_nagview"] = true
      },
      ["code_plus"] = {
        ["enabled"] = false,
        ["fixme"] = {
          [1] = 239,
          [2] = 99,
          [3] = 133,
          [4] = 255
        },
        ["todo"] = {
          [1] = 85,
          [2] = 146,
          [3] = 207,
          [4] = 255
        }
      },
      ["devicons"] = {
        ["use_default_dir_icons"] = false
      },
      ["lineguide"] = {
        ["enabled"] = true,
        ["rulers"] = {
          [1] = 120
        },
        ["width"] = 2
      },
      ["linewrapping"] = {
        ["enable_by_default"] = true,
        ["mode"] = "word"
      },
      ["lsp"] = {
        ["prettify_json"] = true
      },
      ["nerdicons"] = {
        ["draw_tab_icons"] = true,
        ["draw_treeview_icons"] = false,
        ["use_default_chevrons"] = true,
        ["use_default_dir_icons"] = true
      },
      ["scale"] = {
        ["mode"] = "code",
        ["use_mousewheel"] = false
      },
      ["search_ui"] = {
        ["position"] = "top"
      },
      ["treeview"] = {
        ["visible"] = false
      }
    },
    ["statusbar"] = {
      ["enabled"] = true
    },
    ["tab_close_button"] = true,
    ["tab_type"] = "soft",
    ["theme"] = "winter"
  }
}
