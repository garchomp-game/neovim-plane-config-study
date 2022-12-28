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
local package_path_str = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

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
  ["artify.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/artify.vim",
    url = "https://github.com/sainnhe/artify.vim"
  },
  ["capture.vim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/capture.vim",
    url = "https://github.com/tyru/capture.vim"
  },
  ["git-messenger.vim"] = {
    commands = { "GitMessenger" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  ["glow.nvim"] = {
    commands = { "Glow", "GlowInstall" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/glow.nvim",
    url = "https://github.com/npxbr/glow.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugin/configs/neodev\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-code-action-menu"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["translate.vim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/translate.vim",
    url = "https://github.com/skanehira/translate.vim"
  },
  ["vim-fold-cycle"] = {
    keys = { { "", "<CR>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-fold-cycle",
    url = "https://github.com/arecarn/vim-fold-cycle"
  },
  ["vim-fontzoom"] = {
    cond = { 'return vim.fn.has"gui" == 1' },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-fontzoom",
    url = "https://github.com/thinca/vim-fontzoom"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-prettyprint"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-prettyprint",
    url = "https://github.com/thinca/vim-prettyprint"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-unimpaired"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vimdoc-ja"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vimdoc-ja",
    url = "https://github.com/vim-jp/vimdoc-ja"
  }
}

time([[Defining packer_plugins]], false)
-- Conditional loads
time([[Conditional loading of vim-fontzoom]], true)
  require("packer.load")({"vim-fontzoom"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-fontzoom]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd neodev.nvim ]]

-- Config for: neodev.nvim
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugin/configs/neodev\frequire\0", "config", "neodev.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Glow', function(cmdargs)
          require('packer.load')({'glow.nvim'}, { cmd = 'Glow', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'glow.nvim'}, { cmd = 'Glow' }, _G.packer_plugins)
          return vim.fn.getcompletion('Glow ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'GlowInstall', function(cmdargs)
          require('packer.load')({'glow.nvim'}, { cmd = 'GlowInstall', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'glow.nvim'}, { cmd = 'GlowInstall' }, _G.packer_plugins)
          return vim.fn.getcompletion('GlowInstall ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'GitMessenger', function(cmdargs)
          require('packer.load')({'git-messenger.vim'}, { cmd = 'GitMessenger', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'git-messenger.vim'}, { cmd = 'GitMessenger' }, _G.packer_plugins)
          return vim.fn.getcompletion('GitMessenger ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <CR> <cmd>lua require("packer.load")({'vim-fold-cycle'}, { keys = "<lt>CR>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au FocusLost * ++once lua require("packer.load")({'vim-unimpaired'}, { event = "FocusLost *" }, _G.packer_plugins)]]
vim.cmd [[au CursorHold * ++once lua require("packer.load")({'vim-unimpaired'}, { event = "CursorHold *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
  -- Function lazy-loads
time([[Defining lazy-load function autocommands]], true)
vim.cmd[[au FuncUndefined Artify ++once lua require("packer.load")({'artify.vim'}, {}, _G.packer_plugins)]]
time([[Defining lazy-load function autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /root/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /root/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /root/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
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
