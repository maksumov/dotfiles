return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              cfgs = { "debug_assertions", "!miri" },
            },
          },
        },
      },
    },
  },
}
