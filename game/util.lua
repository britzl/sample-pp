local M = {}


function M.zort(v3)
	v3.z = 1 - (v3.y / 10000)
	return v3
end


return M