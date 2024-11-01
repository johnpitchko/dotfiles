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
          -- keep-blank-lines: default is 0 which eliminates _all_ blank lines in ERB files, which IMHO makes it visually less appealing when coding.
          args = { "--keep-blank-lines", "1" },
        },
      },
    },
  },
}
