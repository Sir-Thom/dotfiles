--[
-- 	code permettant d'ajouter un button
--	qui launch rofi (alt + tab)
--]
local awesomebuttons = require("awesome-buttons.awesome-buttons")

local buttons_example = wibox {
    visible = true,
    bg = '#2E3440',
    max_widget_size = 500,
    ontop = true,
    height = 200,
    width = 500,
    shape = function(cr, width, height)
        gears.shape.rounded_rect(cr, width, height, 3)
    end
}

buttons_example:setup {
    {
        {
            {
                markup = '<span size="20000" color="white">Awesome Buttons Demo</span>',
                align = 'center',
                widget = wibox.widget.textbox
            },





{
                awesomebuttons.with_icon{ type = 'flat', icon = 'watch', color = '#788', shape = 'rounded_rect' },
                spacing = 8,
                layout = wibox.layout.fixed.horizontal
            },
            spacing = 16,
            layout = wibox.layout.fixed.vertical,
        },
        shape_border_width = 1,
        valigh = 'center',
        layout = wibox.container.place
    },
    margins = 16,
    widget = wibox.container.margin
}

awful.placement.top(buttons_example, { margins = {top = 40}, parent = awful.screen.focused()})

