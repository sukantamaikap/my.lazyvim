return {
  "David-Kunz/gen.nvim",
  opts = {
    model = "codellama", -- The default model to use.
    display_mode = "split", -- The display mode. Can be "float" or "split".
    show_prompt = false, -- Shows the Prompt submitted to Ollama.
    show_model = true, -- Displays which model you are using at the beginning of your chat session.
    no_auto_close = false, -- Never closes the window automatically.
    init = function(options)
      pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
    end,
    -- Function to initialize Ollama
    command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
    -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
    -- This can also be a lua function returning a command string, with options as the input parameter.
    -- The executed command must return a JSON object with { response, context }
    -- (context property is optional).
    list_models = "<omitted lua function>", -- Retrieves a list of model names
    debug = false, -- Prints errors and the command which is run.
  },
  Generate = { prompt = "$input", replace = true },
  Chat = { prompt = "$input" },
  Summarize = { prompt = "Summarize the following text:\n$text" },
  Ask = { prompt = "Regarding the following text, $input:\n$text" },
  Change = {
    prompt = "Change the following text, $input, just output the final text without additional quotes around it:\n$text",
    replace = true,
  },
  Enhance_Grammar_Spelling = {
    prompt = "You are an expert copywriter. Please modify the following text to improve grammar and spelling, just output the final text without additional quotes around it:\n$text",
    replace = true,
  },
  Enhance_Wording = {
    prompt = "You are an expert copywriter. Modify the following text to use better wording, just output the final text without additional quotes around it:\n$text",
    replace = true,
  },
  Make_Concise = {
    prompt = "You are an expert copywriter. Modify the following text to make it as simple and concise as possible, just output the final text without additional quotes around it:\n$text",
    replace = true,
  },
  Make_List = {
    prompt = "Render the following text as a markdown list:\n$text",
    replace = true,
  },
  Make_Table = {
    prompt = "Render the following text as a markdown table:\n$text",
    replace = true,
  },
  Review_Code = {
    prompt = "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
  },
  Enhance_Code = {
    prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
    replace = true,
    extract = "```$filetype\n(.-)```",
  },
  Change_Code = {
    prompt = "Regarding the following code, $input, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
    replace = true,
    extract = "```$filetype\n(.-)```",
  },
  DevOpsEngineer = {
    prompt = "You are a seasoned DevOps engineer. Your job is to assist me with DevOps technologies like Ansible, Terraform, shell script, AWS, Google Cloud Platform, VMWare, Python and JavaScript. Regarding the following prompt, $input, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
    replace = true,
    extract = "```$filetype\n(.-)```",
  },
}
