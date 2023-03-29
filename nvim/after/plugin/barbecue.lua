local colors = {
    Gray = '#000000',
    Violet = '#000080',
    Blue = '#0000FF',
    DarkBlue = '#007ACC',
    LightBlue = '#0451A5',
    Green = '#008000',
    BlueGreen = '#16825D',
    LightGreen = '#098658',
    Red = '#FF0000',
    Orange = '#C72E0F',
    LightRed = '#A31515',
    YellowOrange = '#800000',
    Yellow = '#795E26',
    Pink = '#AF00DB',
}

require("barbecue").setup({
    show_dirname = false,
    show_basename = false,

    symbols = {
        ---Modification indicator.
        ---
        ---@type string
        modified = "●",

        ---Truncation indicator.
        ---
        ---@type string
        ellipsis = "…",

        ---Entry separator.
        ---
        ---@type string
        separator = ">",
    },

    kinds = {
        File          = "",
        Module        = "",
        Namespace     = "",
        Package       = "",
        Class         = "",
        Method        = "",
        Property      = "",
        Field         = "",
        Constructor   = "",
        Enum          = "練",
        Interface     = "練",
        Function      = "",
        Variable      = "",
        Constant      = "",
        String        = "",
        Number        = "",
        Boolean       = "◩",
        Array         = "",
        Object        = "",
        Key           = "",
        Null          = "ﳠ",
        EnumMember    = "",
        Struct        = "",
        Event         = "",
        Operator      = "",
        TypeParameter = "",
    },
})

