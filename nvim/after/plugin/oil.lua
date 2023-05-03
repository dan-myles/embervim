require("oil").setup({
    default_file_explorer = true,
    float = {
        padding = 3,
        max_width = 60,
        max_height = 20,
    },
    keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-s>"] = "actions.select_vsplit",
        ["<C-h>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["<esc>"] = "actions.close",
        ["<C-l>"] = "actions.refresh",
        ["<tab>"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = "actions.tcd",
        ["g."] = "actions.toggle_hidden",
    },
    view_options = {
        show_hidden = true,
    },
})
