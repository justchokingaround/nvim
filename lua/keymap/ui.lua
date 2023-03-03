local bind = require("keymap.bind")
local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
-- local map_callback = bind.map_callback

local plug_map = {
    -- Plugin: bufferline
    ["n|<A-j>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent()
        :with_desc("buffer: Switch to next"),
    ["n|<Tab>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent()
        :with_desc("buffer: Switch to next"),
    ["n|<A-k>"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent()
        :with_desc("buffer: Switch to prev"),
    ["n|<S-Tab>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent()
        :with_desc("buffer: Switch to next"),
    ["n|<A-S-j>"] = map_cr("BufferLineMoveNext"):with_noremap():with_silent()
        :with_desc("buffer: Move current to next"),
    ["n|<A-S-k>"] = map_cr("BufferLineMovePrev"):with_noremap():with_silent()
        :with_desc("buffer: Move current to prev"),
    ["n|<leader>be"] = map_cr("BufferLineSortByExtension"):with_noremap()
        :with_desc("buffer: Sort by extension"),
    ["n|<leader>bd"] = map_cr("BufferLineSortByDirectory"):with_noremap()
        :with_desc("buffer: Sort by direrctory"),
    ["n|<A-1>"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 1"),
    ["n|<A-2>"] = map_cr("BufferLineGoToBuffer 2"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 2"),
    ["n|<A-3>"] = map_cr("BufferLineGoToBuffer 3"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 3"),
    ["n|<A-4>"] = map_cr("BufferLineGoToBuffer 4"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 4"),
    ["n|<A-5>"] = map_cr("BufferLineGoToBuffer 5"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 5"),
    ["n|<A-6>"] = map_cr("BufferLineGoToBuffer 6"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 6"),
    ["n|<A-7>"] = map_cr("BufferLineGoToBuffer 7"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 7"),
    ["n|<A-8>"] = map_cr("BufferLineGoToBuffer 8"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 8"),
    ["n|<A-9>"] = map_cr("BufferLineGoToBuffer 9"):with_noremap():with_silent()
        :with_desc("buffer: Goto buffer 9"),

    -- Buffer stuff
    ["n|<leader>x"] = map_cr("<Cmd>bd<CR>"):with_noremap():with_silent()
        :with_desc("Delete Buffer"),

    -- Toggle NvimTree
    ["n|<leader>e"] = map_cr("NvimTreeToggle"):with_noremap():with_silent()
        :with_desc("Toggle NvimTree"),

    -- Plugin: true-zen
    ["n|<leader>zn"] = map_cr("<Cmd>TZNarrow<CR><Cmd>set wrap<CR>"):with_noremap()
        :with_silent():with_desc("TZNarrow"),
    ["v|<leader>zn"] = map_cr("<Cmd>'<,'>TZNarrow<CR><Cmd>set wrap<CR>"):with_noremap()
        :with_silent():with_desc("TZNarrow Visual"),
    ["n|<leader>zf"] = map_cr("<Cmd>TZFocus<CR><Cmd>set wrap<CR>"):with_noremap()
        :with_silent():with_desc("TZFocus"),
    ["n|<leader>zm"] = map_cr("<Cmd>TZMinimalist<CR><Cmd>set wrap<CR>"):with_noremap()
        :with_silent():with_desc("TZMinimalist"),
    ["n|<leader>za"] = map_cr("<Cmd>TZAtaraxis<CR><Cmd>set wrap<CR>"):with_noremap()
        :with_silent():with_desc("TZAtaraxis")

}

bind.nvim_load_mapping(plug_map)