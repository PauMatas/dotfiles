return {
    "3rd/image.nvim",
    ft = { "markdown" },
    opts = {
        backend = "kitty",
        integrations = {
            markdown = {
                enabled = true,
                clear_in_insert_mode = true,
                only_render_image_at_cursor = false,
            },
        },
        max_width = 100,
        max_height = 40,
    },
}
