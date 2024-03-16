return {
  {
    "huggingface/llm.nvim",
    opts = {
      backend = "tgi",
      model = "bigcode/starcoder2-15b",
      url = "http://192.168.50.113:8080/generate",
      request_body = {
        parameters = {
          max_new_tokens = 60,
          temperature = 0.2,
          top_p = 0.95,
        },
      },
      tokens_to_clear = { "<|endoftext|>" },
      fim = {
        enabled = true,
        prefix = "<fim_prefix>",
        middle = "<fim_middle>",
        suffix = "<fim_suffix>",
      },
      debounce_ms = 150,
      accept_keymap = "<S-Right>",
      dismiss_keymap = "<S-Tab>",
      tls_skip_verify_insecure = false,
      context_window = 4096,
      enable_suggestions_on_startup = true,
    },
  },
}
