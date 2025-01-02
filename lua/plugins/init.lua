return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "debugpy", "pyright", "ruff",
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css"
  		},
  	},
  },
  {
    "mfussenegger/nvim-dap",
  },
  { "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function ()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function ()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function ()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function ()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies ={
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      --require("core.utils").setup("dap_python")
    end,
  },
  --{
  --  "rcarriga/nvim-dap-ui",
  --  dependencies = "mfussenegger/nvim-dap",
  --  config = function ()
  --    local dap = require("dap")
  --    local dapui = require("dap-ui")
  --    dapui.setup()
  --    dap.listeners.after.event_initialized["dapui_config"] = function ()
  --      dapui.open()
  --    end
  --    dap.listeners.before.event_terminated["dapui_config"] = function ()
  --      dapui.close()
  --    end
  --    dap.listeners.before.event_exited["dapui_config"] = function ()
  --      dapui.close()
  --    end
  --  end
  --}
  --{ "folke/neodev.nvim", opts = {} }
}
