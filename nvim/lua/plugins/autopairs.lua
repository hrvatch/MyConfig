return {
	"windwp/nvim-autopairs",
	config = function()
		local npairs = require("nvim-autopairs")

    npairs.setup({
      -- Don't add pairs if it already has a close pair in the same line
      enable_check_bracket_line = false,
      -- Use treesitter to check for a pair
			check_ts = true,
			ts_config = {
				lua = { "string" }, -- it will not add a pair on that treesitter node
				javascript = { "template_string" },
				java = false, -- don't check treesitter on java
        text = false, -- don't check treesitter on text
			},
		})
    -- Disable autopairing single quotes in systemverilog
    local sv_rule = npairs.get_rules("'")[1]
    sv_rule.not_filetypes = {"systemverilog"}
	end,
}
