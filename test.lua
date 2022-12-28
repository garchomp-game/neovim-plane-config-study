function showTable(table)
	for k, v in pairs(table) do
    print(k, v)
	end
end
showTable(vim.fn.stdpath('config_dirs'))
print('---')
showTable(vim.fn.stdpath('data_dirs'))
