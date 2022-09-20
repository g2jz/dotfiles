-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  base46 = {
    after = { "ui" },
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0\17\0\0\0\23\0\0\0\0\0\0\3\t\0\0\0\5\0\0\0E@\0\0€\0\0\28À€\1\26\0\0\0\22@\0€†ÀÀ\0œ@€\0\30\0€\0\4\0\0\0\4\6\0\0\0\0\0\0\0pcall\0\4\b\0\0\0\0\0\0\0require\0\4\a\0\0\0\0\0\0\0base46\0\4\v\0\0\0\0\0\0\0load_theme\0\0\0\0\0\t\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\20\0\0\0\20\0\0\0\21\0\0\0\21\0\0\0\23\0\0\0\2\0\0\0\3\0\0\0\0\0\0\0ok\0\4\0\0\0\b\0\0\0\a\0\0\0\0\0\0\0base46\0\4\0\0\0\b\0\0\0\0\0\0\0" },
    loaded = true,
    only_config = true,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/start/base46",
    url = "https://github.com/NvChad/base46"
  },
  ["cmp-buffer"] = {
    after = { "cmp-path" },
    after_files = { "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lua" },
    after_files = { "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["cmp-nvim-lsp"] = {
    after = { "cmp-buffer" },
    after_files = { "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "cmp-nvim-lsp" },
    after_files = { "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["Comment.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0¤\0\0\0¦\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0\28@€\0\30\0€\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\23\0\0\0\0\0\0\0plugins.configs.others\0\4\b\0\0\0\0\0\0\0comment\0\0\0\0\0\6\0\0\0¥\0\0\0¥\0\0\0¥\0\0\0¥\0\0\0¥\0\0\0¦\0\0\0\0\0\0\0\0\0\0\0" },
    keys = { { "", "gc" }, { "", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  extensions = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/extensions",
    url = "https://github.com/NvChad/extensions"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0^\0\0\0`\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0\28@€\0\30\0€\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\23\0\0\0\0\0\0\0plugins.configs.others\0\4\t\0\0\0\0\0\0\0gitsigns\0\0\0\0\0\6\0\0\0_\0\0\0_\0\0\0_\0\0\0_\0\0\0_\0\0\0`\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0=\0\0\0?\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0\28@€\0\30\0€\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\23\0\0\0\0\0\0\0plugins.configs.others\0\4\n\0\0\0\0\0\0\0blankline\0\0\0\0\0\6\0\0\0>\0\0\0>\0\0\0>\0\0\0>\0\0\0>\0\0\0?\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  LuaSnip = {
    after = { "cmp_luasnip" },
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0†\0\0\0ˆ\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0\28@€\0\30\0€\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\23\0\0\0\0\0\0\0plugins.configs.others\0\4\b\0\0\0\0\0\0\0luasnip\0\0\0\0\0\6\0\0\0‡\0\0\0‡\0\0\0‡\0\0\0‡\0\0\0‡\0\0\0ˆ\0\0\0\0\0\0\0\0\0\0\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip",
    wants = { "friendly-snippets" }
  },
  ["mason.nvim"] = {
    commands = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0f\0\0\0h\0\0\0\0\0\0\2\4\0\0\0\5\0\0\0A@\0\0\28@\0\1\30\0€\0\2\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\22\0\0\0\0\0\0\0plugins.configs.mason\0\0\0\0\0\4\0\0\0g\0\0\0g\0\0\0g\0\0\0h\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0”\0\0\0–\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0\28@€\0\30\0€\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\23\0\0\0\0\0\0\0plugins.configs.others\0\4\n\0\0\0\0\0\0\0autopairs\0\0\0\0\0\6\0\0\0•\0\0\0•\0\0\0•\0\0\0•\0\0\0•\0\0\0–\0\0\0\0\0\0\0\0\0\0\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip", "nvim-autopairs" },
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0~\0\0\0€\0\0\0\0\0\0\2\4\0\0\0\5\0\0\0A@\0\0\28@\0\1\30\0€\0\2\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\20\0\0\0\0\0\0\0plugins.configs.cmp\0\0\0\0\0\4\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0\0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0G\0\0\0I\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0\28@€\0\30\0€\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\23\0\0\0\0\0\0\0plugins.configs.others\0\4\n\0\0\0\0\0\0\0colorizer\0\0\0\0\0\6\0\0\0H\0\0\0H\0\0\0H\0\0\0H\0\0\0H\0\0\0I\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0p\0\0\0r\0\0\0\0\0\0\2\4\0\0\0\5\0\0\0A@\0\0\28@\0\1\30\0€\0\2\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\26\0\0\0\0\0\0\0plugins.configs.lspconfig\0\0\0\0\0\4\0\0\0q\0\0\0q\0\0\0q\0\0\0r\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0°\0\0\0²\0\0\0\0\0\0\2\4\0\0\0\5\0\0\0A@\0\0\28@\0\1\30\0€\0\2\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\25\0\0\0\0\0\0\0plugins.configs.nvimtree\0\0\0\0\0\4\0\0\0±\0\0\0±\0\0\0±\0\0\0²\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    commands = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInfo" },
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0S\0\0\0U\0\0\0\0\0\0\2\4\0\0\0\5\0\0\0A@\0\0\28@\0\1\30\0€\0\2\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\27\0\0\0\0\0\0\0plugins.configs.treesitter\0\0\0\0\0\4\0\0\0T\0\0\0T\0\0\0T\0\0\0U\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0002\0\0\0004\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0\28@€\0\30\0€\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\23\0\0\0\0\0\0\0plugins.configs.others\0\4\t\0\0\0\0\0\0\0devicons\0\0\0\0\0\6\0\0\0003\0\0\0003\0\0\0003\0\0\0003\0\0\0003\0\0\0004\0\0\0\0\0\0\0\0\0\0\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  nvterm = {
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0'\0\0\0)\0\0\0\0\0\0\2\4\0\0\0\5\0\0\0A@\0\0\28@\0\1\30\0€\0\2\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\23\0\0\0\0\0\0\0plugins.configs.nvterm\0\0\0\0\0\4\0\0\0(\0\0\0(\0\0\0(\0\0\0)\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/nvterm",
    url = "https://github.com/NvChad/nvterm"
  },
  ["packer.nvim"] = {
    commands = { "PackerSnapshot", "PackerSnapshotRollback", "PackerSnapshotDelete", "PackerInstall", "PackerUpdate", "PackerSync", "PackerClean", "PackerCompile", "PackerStatus", "PackerProfile", "PackerLoad" },
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0\t\0\0\0\v\0\0\0\0\0\0\2\4\0\0\0\5\0\0\0A@\0\0\28@\0\1\30\0€\0\2\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\b\0\0\0\0\0\0\0plugins\0\0\0\0\0\4\0\0\0\n\0\0\0\n\0\0\0\n\0\0\0\v\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0º\0\0\0¼\0\0\0\0\0\0\2\4\0\0\0\5\0\0\0A@\0\0\28@\0\1\30\0€\0\2\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\26\0\0\0\0\0\0\0plugins.configs.telescope\0\0\0\0\0\4\0\0\0»\0\0\0»\0\0\0»\0\0\0¼\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ui = {
    after = { "nvim-web-devicons" },
    config = { '\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0\28\0\0\0"\0\0\0\0\0\0\3\t\0\0\0\5\0\0\0E@\0\0€\0\0\28À€\1\26\0\0\0\22@\0€†ÀÀ\0œ@€\0\30\0€\0\4\0\0\0\4\6\0\0\0\0\0\0\0pcall\0\4\b\0\0\0\0\0\0\0require\0\4\n\0\0\0\0\0\0\0nvchad_ui\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\t\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\31\0\0\0\31\0\0\0 \0\0\0 \0\0\0"\0\0\0\2\0\0\0\b\0\0\0\0\0\0\0present\0\4\0\0\0\b\0\0\0\n\0\0\0\0\0\0\0nvchad_ui\0\4\0\0\0\b\0\0\0\0\0\0\0' },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/g2jz/.local/share/nvim/site/pack/packer/opt/ui",
    url = "https://github.com/NvChad/ui"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmp"] = "friendly-snippets",
  ["^cmp_nvim_lsp"] = "friendly-snippets",
  ["^Comment"] = "Comment.nvim",
  ["^nvchad"] = "extensions",
  ["^nvim%-treesitter"] = "nvim-treesitter",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^nvterm"] = "nvterm",
  ["^plenary"] = "plenary.nvim",
  ["^telescope"] = "extensions"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0[\0\0\0]\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0\28@€\0\30\0€\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.lazy_load\0\4\t\0\0\0\0\0\0\0gitsigns\0\0\0\0\0\6\0\0\0\\\0\0\0\\\0\0\0\\\0\0\0\\\0\0\0\\\0\0\0]\0\0\0\0\0\0\0\0\0\0\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0N\0\0\0P\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0AÀ\0\0\28@\0\1\30\0€\0\4\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.lazy_load\0\4\r\0\0\0\0\0\0\0on_file_open\0\4\16\0\0\0\0\0\0\0nvim-treesitter\0\0\0\0\0\a\0\0\0O\0\0\0O\0\0\0O\0\0\0O\0\0\0O\0\0\0O\0\0\0P\0\0\0\0\0\0\0\0\0\0\0", "setup", "nvim-treesitter")
time([[Setup for nvim-treesitter]], false)
-- Setup for: nvim-lspconfig
time([[Setup for nvim-lspconfig]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0m\0\0\0o\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0AÀ\0\0\28@\0\1\30\0€\0\4\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.lazy_load\0\4\r\0\0\0\0\0\0\0on_file_open\0\4\15\0\0\0\0\0\0\0nvim-lspconfig\0\0\0\0\0\a\0\0\0n\0\0\0n\0\0\0n\0\0\0n\0\0\0n\0\0\0n\0\0\0o\0\0\0\0\0\0\0\0\0\0\0", "setup", "nvim-lspconfig")
time([[Setup for nvim-lspconfig]], false)
-- Setup for: nvim-colorizer.lua
time([[Setup for nvim-colorizer.lua]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0D\0\0\0F\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0AÀ\0\0\28@\0\1\30\0€\0\4\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.lazy_load\0\4\r\0\0\0\0\0\0\0on_file_open\0\4\19\0\0\0\0\0\0\0nvim-colorizer.lua\0\0\0\0\0\a\0\0\0E\0\0\0E\0\0\0E\0\0\0E\0\0\0E\0\0\0E\0\0\0F\0\0\0\0\0\0\0\0\0\0\0", "setup", "nvim-colorizer.lua")
time([[Setup for nvim-colorizer.lua]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0½\0\0\0¿\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0AÀ\0\0\28@\0\1\30\0€\0\4\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\v\0\0\0\0\0\0\0core.utils\0\4\14\0\0\0\0\0\0\0load_mappings\0\4\n\0\0\0\0\0\0\0telescope\0\0\0\0\0\a\0\0\0¾\0\0\0¾\0\0\0¾\0\0\0¾\0\0\0¾\0\0\0¾\0\0\0¿\0\0\0\0\0\0\0\0\0\0\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0³\0\0\0µ\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0AÀ\0\0\28@\0\1\30\0€\0\4\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\v\0\0\0\0\0\0\0core.utils\0\4\14\0\0\0\0\0\0\0load_mappings\0\4\t\0\0\0\0\0\0\0nvimtree\0\0\0\0\0\a\0\0\0´\0\0\0´\0\0\0´\0\0\0´\0\0\0´\0\0\0´\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
-- Setup for: nvterm
time([[Setup for nvterm]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0*\0\0\0,\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0AÀ\0\0\28@\0\1\30\0€\0\4\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\v\0\0\0\0\0\0\0core.utils\0\4\14\0\0\0\0\0\0\0load_mappings\0\4\a\0\0\0\0\0\0\0nvterm\0\0\0\0\0\a\0\0\0+\0\0\0+\0\0\0+\0\0\0+\0\0\0+\0\0\0+\0\0\0,\0\0\0\0\0\0\0\0\0\0\0", "setup", "nvterm")
time([[Setup for nvterm]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0009\0\0\0<\0\0\0\0\0\0\2\r\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0AÀ\0\0\28@\0\1\5\0\0\0A\0\1\0\28€\0\1\6@A\0A€\1\0\28@\0\1\30\0€\0\a\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0core.lazy_load\0\4\r\0\0\0\0\0\0\0on_file_open\0\4\22\0\0\0\0\0\0\0indent-blankline.nvim\0\4\v\0\0\0\0\0\0\0core.utils\0\4\14\0\0\0\0\0\0\0load_mappings\0\4\n\0\0\0\0\0\0\0blankline\0\0\0\0\0\r\0\0\0:\0\0\0:\0\0\0:\0\0\0:\0\0\0:\0\0\0:\0\0\0;\0\0\0;\0\0\0;\0\0\0;\0\0\0;\0\0\0;\0\0\0<\0\0\0\0\0\0\0\0\0\0\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Setup for: Comment.nvim
time([[Setup for Comment.nvim]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0§\0\0\0©\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28€\0\1\6€@\0AÀ\0\0\28@\0\1\30\0€\0\4\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\v\0\0\0\0\0\0\0core.utils\0\4\14\0\0\0\0\0\0\0load_mappings\0\4\b\0\0\0\0\0\0\0comment\0\0\0\0\0\a\0\0\0¨\0\0\0¨\0\0\0¨\0\0\0¨\0\0\0¨\0\0\0¨\0\0\0©\0\0\0\0\0\0\0\0\0\0\0", "setup", "Comment.nvim")
time([[Setup for Comment.nvim]], false)
-- Config for: base46
time([[Config for base46]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0\17\0\0\0\23\0\0\0\0\0\0\3\t\0\0\0\5\0\0\0E@\0\0€\0\0\28À€\1\26\0\0\0\22@\0€†ÀÀ\0œ@€\0\30\0€\0\4\0\0\0\4\6\0\0\0\0\0\0\0pcall\0\4\b\0\0\0\0\0\0\0require\0\4\a\0\0\0\0\0\0\0base46\0\4\v\0\0\0\0\0\0\0load_theme\0\0\0\0\0\t\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\20\0\0\0\20\0\0\0\21\0\0\0\21\0\0\0\23\0\0\0\2\0\0\0\3\0\0\0\0\0\0\0ok\0\4\0\0\0\b\0\0\0\a\0\0\0\0\0\0\0base46\0\4\0\0\0\b\0\0\0\0\0\0\0", "config", "base46")
time([[Config for base46]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd ui ]]

-- Config for: ui
try_loadstring('\27LuaQ\0\1\4\b\4\b\0.\0\0\0\0\0\0\0@/home/g2jz/.config/nvim/lua/plugins/init.lua\0\28\0\0\0"\0\0\0\0\0\0\3\t\0\0\0\5\0\0\0E@\0\0€\0\0\28À€\1\26\0\0\0\22@\0€†ÀÀ\0œ@€\0\30\0€\0\4\0\0\0\4\6\0\0\0\0\0\0\0pcall\0\4\b\0\0\0\0\0\0\0require\0\4\n\0\0\0\0\0\0\0nvchad_ui\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\t\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\29\0\0\0\31\0\0\0\31\0\0\0 \0\0\0 \0\0\0"\0\0\0\2\0\0\0\b\0\0\0\0\0\0\0present\0\4\0\0\0\b\0\0\0\n\0\0\0\0\0\0\0nvchad_ui\0\4\0\0\0\b\0\0\0\0\0\0\0', "config", "ui")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSModuleInfo lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSModuleInfo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerSnapshotRollback lua require("packer.load")({'packer.nvim'}, { cmd = "PackerSnapshotRollback", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MasonUninstallAll lua require("packer.load")({'mason.nvim'}, { cmd = "MasonUninstallAll", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Mason lua require("packer.load")({'mason.nvim'}, { cmd = "Mason", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSDisable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSDisable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerLoad lua require("packer.load")({'packer.nvim'}, { cmd = "PackerLoad", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerProfile lua require("packer.load")({'packer.nvim'}, { cmd = "PackerProfile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerStatus lua require("packer.load")({'packer.nvim'}, { cmd = "PackerStatus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSBufEnable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSBufEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerCompile lua require("packer.load")({'packer.nvim'}, { cmd = "PackerCompile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerClean lua require("packer.load")({'packer.nvim'}, { cmd = "PackerClean", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MasonInstallAll lua require("packer.load")({'mason.nvim'}, { cmd = "MasonInstallAll", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MasonInstall lua require("packer.load")({'mason.nvim'}, { cmd = "MasonInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerSnapshotDelete lua require("packer.load")({'packer.nvim'}, { cmd = "PackerSnapshotDelete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSBufDisable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSBufDisable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerUpdate lua require("packer.load")({'packer.nvim'}, { cmd = "PackerUpdate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerSnapshot lua require("packer.load")({'packer.nvim'}, { cmd = "PackerSnapshot", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerSync lua require("packer.load")({'packer.nvim'}, { cmd = "PackerSync", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PackerInstall lua require("packer.load")({'packer.nvim'}, { cmd = "PackerInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSInstall lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MasonLog lua require("packer.load")({'mason.nvim'}, { cmd = "MasonLog", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MasonUninstall lua require("packer.load")({'mason.nvim'}, { cmd = "MasonUninstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSEnable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType alpha ++once lua require("packer.load")({'nvim-tree.lua'}, { ft = "alpha" }, _G.packer_plugins)]]
vim.cmd [[au FileType gitcommit ++once lua require("packer.load")({'gitsigns.nvim'}, { ft = "gitcommit" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
