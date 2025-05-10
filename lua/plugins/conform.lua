return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
        formatters_by_ft = {
            cs = { "csharpier" },
            lua = { "stylua" },
            ["python"] = { "black" },
        },
        formatters = {
            csharpier = {
                command = "dotnet-csharpier",
                args = { "--write-stdout" },
            },
            stylua = {
                prepend_args = {
                    "--indent-type",
                    "Spaces",
                    "--indent-width",
                    "4",
                },
            },
        },
    },
}
