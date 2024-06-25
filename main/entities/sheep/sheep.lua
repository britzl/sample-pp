local util = require("main.util")

local M = {}

function M.created(entity, message)
	entity.time = socket.gettime()
end

function M.update(entity, message)
	local pos = util.zort(vmath.vector3(message.x, message.y, 0))
	local direction = pos - go.get_position(entity.id)
	local now = socket.gettime()
	local duration = now - entity.time
	entity.time = now
	go.animate(entity.id, "position", go.PLAYBACK_ONCE_FORWARD, pos, go.EASING_LINEAR, duration)

	local url = msg.url(nil, entity.id, "sprite")
	sprite.set_hflip(url, direction.x < 0)
end

function M.deleted(entity)
end

return M