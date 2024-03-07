return {
  {
    "echasnovski/mini.pairs",
    opts = {
      mappings = {
        -- Do not auto close quote character - it is fucking annoying!
        ['"'] = { action = "close", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
        ["'"] = { action = "close", pair = "''", neigh_pattern = "[^%a\\].", register = { cr = false } },
      },
    },
  },
}
