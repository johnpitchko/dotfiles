return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        eruby = { "htmlbeautifier" },
      },
      formatters = {
        htmlbeautifier = {
          -- Details about CLI args in https://github.com/threedaymonk/htmlbeautifier/blob/master/bin/htmlbeautifier
          args = { "--keep-blank-lines", "1" },
        },
      },
    },
  },
}
