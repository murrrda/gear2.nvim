return {
    "nvim-java/nvim-java",
    event = "VeryLazy",
    dependencies = {
        "nvim-java/lua-async-await",
        "nvim-java/nvim-java-refactor",
        "nvim-java/nvim-java-core",
        "nvim-java/nvim-java-test",
        "nvim-java/nvim-java-dap",
        "MunifTanjim/nui.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
        {
            "williamboman/mason.nvim",
        },
        {
            "williamboman/mason-lspconfig.nvim",
        },
    },
}
