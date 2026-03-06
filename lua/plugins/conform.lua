return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "php_cs_fixer" },
      },
      formatters = {
        php_cs_fixer = {
          command = "php-cs-fixer",
          args = {
            "fix",
            "--rules=@PSR12,blank_line_after_opening_tag:false",
            "$FILENAME",
          },
          stdin = false,
        },
      },
    },
  },
  {
    "mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "php-cs-fixer" })
    end,
  },
}