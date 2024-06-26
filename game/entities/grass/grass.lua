local M = {}

function M.created(entity, message)
	go.set_scale(0.1, entity.id)
end

function M.update(entity, message)
	local pos = vmath.vector3(message.x, message.y, 0)
	go.set_position(pos, entity.id)
end

function M.deleted(entity)
end

return M