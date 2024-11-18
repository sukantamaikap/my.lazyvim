return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  opts = {
    provider = "ollama",
    vendors = {
      ---@type AvanteProvider
      ollama = {
        ["local"] = true,
        endpoint = "http://127.0.0.1:11434",
        model = "qwen2.5:7b-instruct-q6_K",
        parse_curl_args = function(opts, code_opts)
          local messages = {}
          if code_opts.system then
            table.insert(messages, { role = "system", content = code_opts.system })
          end
          if code_opts.context then
            table.insert(messages, { role = "user", content = code_opts.context })
          end
          table.insert(messages, { role = "user", content = code_opts.prompt })

          return {
            url = opts.endpoint .. "/api/chat",
            headers = {
              ["Accept"] = "application/json",
              ["Content-Type"] = "application/json",
            },
            body = {
              model = opts.model,
              messages = messages,
              stream = true,
              options = {
                temperature = 0.7,
                top_p = 0.9,
                max_tokens = 2048,
              },
            },
          }
        end,
        parse_response_data = function(data_stream, event_state)
          if data_stream and data_stream.message then
            return {
              content = data_stream.message.content,
              done = data_stream.done or false,
            }
          end
          return {
            content = "",
            done = true,
          }
        end,
      },
    },
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true,
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
