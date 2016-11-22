--[[

    Based on location.lua, Copyright 2016 topkecleon <drew@otou.to>
    This code is licensed under the GNU AGPLv3.

]]--

local location = {}
local mattata = require('mattata')
local HTTP = require('socket.http')
local URL = require('socket.url')
local JSON = require('dkjson')

function location:init(configuration)
	location.arguments = 'location <query>'
	location.commands = mattata.commands(self.info.username, configuration.commandPrefix):c('location').table
	location.help = configuration.commandPrefix .. 'location <query> - Sends a location from Google Maps.'
end

function location:onChannelPost(channel_post, configuration)
	local input = mattata.input(channel_post.text_lower)
	if not input then
		mattata.sendMessage(channel_post.chat.id, location.help, nil, true, false, channel_post.message_id)
		return
	end
	local jstr, res = HTTP.request('http://maps.googleapis.com/maps/api/geocode/json?address=' .. URL.escape(input))
	if res ~= 200 then
		mattata.sendMessage(channel_post.chat.id, configuration.errors.connection, nil, true, false, channel_post.message_id)
		return
	end
	local jdat = JSON.decode(jstr)
	if jdat.status == 'ZERO_RESULTS' then
		mattata.sendMessage(channel_post.chat.id, configuration.errors.results, nil, true, false, channel_post.message_id)
		return
	end
	mattata.sendLocation(channel_post.chat.id, jdat.results[1].geometry.location.lat, jdat.results[1].geometry.location.lng)
end

function location:onMessage(message, language)
	local input = mattata.input(message.text_lower)
	if not input then
		mattata.sendMessage(message.chat.id, location.help, nil, true, false, message.message_id)
		return
	end
	local jstr, res = HTTP.request('http://maps.googleapis.com/maps/api/geocode/json?address=' .. URL.escape(input))
	if res ~= 200 then
		mattata.sendMessage(message.chat.id, language.errors.connection, nil, true, false, message.message_id)
		return
	end
	local jdat = JSON.decode(jstr)
	if jdat.status == 'ZERO_RESULTS' then
		mattata.sendMessage(message.chat.id, language.errors.results, nil, true, false, message.message_id)
		return
	end
	mattata.sendLocation(message.chat.id, jdat.results[1].geometry.location.lat, jdat.results[1].geometry.location.lng)
end

return location