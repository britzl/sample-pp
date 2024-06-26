local util = require("game.util")

local M = {}

function M.created(entity, message)
end

function M.update(entity, message)
	local pos = util.zort(vmath.vector3(message.x, message.y, 0))
	go.set_position(pos, entity.id)
end

function M.deleted(entity)
end

return M