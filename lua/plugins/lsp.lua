return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ltex = {
        cmd_env = {
          JAVA_OPTS = "-Djdk.xml.totalEntitySizeLimit=0",
        },
        settings = {
          ltex = {
            language = "auto",
            dictionary = {
              ["en-US"] = {},
              ["fr"] = {},
            },
          },
        },
      },
    },
  },
}
