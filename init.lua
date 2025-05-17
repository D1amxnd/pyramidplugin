local function send_pyramid(ctx, emote, size)
    size = size or 3  -- Default size is 3 if none is provided
    local pyramid = {}

    -- Build first half of the Pyramid
    for i = 1, size do
        table.insert(pyramid, i)
    end

    -- Build second half of the Pyramid
    for i = size - 1, 1, -1 do
        table.insert(pyramid, i)
    end

    local delay = 1
    local delay_increment = 800  -- Chat Delay in Milliseconds (Defaults at 800 | Recommended: 500-800 for Members or Subscribers / 110-150 for VIP's, Moderators or Streamers)

    for _, count in ipairs(pyramid) do
        local message = string.rep(emote .. " ", count):sub(1, -2)

        c2.later(function()
            ctx.channel:send_message(message)
        end, delay)

        delay = delay + delay_increment
    end
end

-- Default Emote used is "Kappa"
local function cmd_pyramid(ctx)
    local emote = ctx.words and ctx.words[2] or "Kappa"
    local size = tonumber(ctx.words and ctx.words[3])
    if not size then size = 3 end
						-- !!! IMPORTANT !!! ---
    -- Use a reasonable range to avoid being flagged by Twitch for spam or using automated messages and to also avoid chat pollution
    -- In actual severe cases (using a pyramid size above 15 to 20 or even higher), you can get banned for using a “Botted or Automated Account.”
    -- This ban is often indefinite but also unlikely if used normally. However, this suspension would probably make your account unrecoverable since such ban appeals are likely to be declined

    if size < 1 then size = 1 end
    if size > 10 then size = 10 end -- You can change the pyramid size right here on your own risk

    ctx.channel:add_system_message("Building pyramid at size " .. size .. " using emote: " .. emote)
    send_pyramid(ctx, emote, size)
end

-- Command: /pyramid <emote> <size>
c2.register_command("/pyramid", cmd_pyramid)
