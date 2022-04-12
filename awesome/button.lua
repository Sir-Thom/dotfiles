
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
                wibox.widget.textbox('Only text:'),
                awesomebuttons.with_text{ text = 'Hello', color = '#ff8' },
                awesomebuttons.with_text{ type = 'outline', text = 'Bonjour', color = '#8ff', text_size = 8 },
                awesomebuttons.with_text{ type = 'flat', text = 'Ola', color = '#f8f', text_size = 12 },
                spacing = 8,
                layout = wibox.layout.fixed.horizontal
            },
            {
                wibox.widget.textbox('Only icon:'),
                awesomebuttons.with_icon{ icon = 'moon', color = '#f88' },
                awesomebuttons.with_icon{ icon = 'meh', color = '#a38', shape = 'circle' },
                awesomebuttons.with_icon{ icon = 'map', color = '#f8c', shape = 'rounded_rect' },
                awesomebuttons.with_icon{ type = 'outline', icon = 'sun', color = '#218' },
                awesomebuttons.with_icon{ type = 'outline', icon = 'shield', color = '#188', shape = 'circle' },
                awesomebuttons.with_icon{ type = 'outline', icon = 'zoom-in', color = '#f8f', shape = 'rounded_rect' },
                awesomebuttons.with_icon{ type = 'flat', icon = 'truck', color = '#fc8' },
                awesomebuttons.with_icon{ type = 'flat', icon = 'wifi', color = '#488', shape = 'circle' },
                awesomebuttons.with_icon{ type = 'flat', icon = 'watch', color = '#788', shape = 'rounded_rect' },
                spacing = 8,
                layout = wibox.layout.fixed.horizontal
            },
            {
                wibox.widget.textbox('Icon and text:'),
                awesomebuttons.with_icon_and_text{ icon = 'check-circle', text = 'With Icon!', color = '#f48' },
                awesomebuttons.with_icon_and_text{ type = 'outline', icon = 'battery-charging', text = 'Charging', color = '#8d1' },
                awesomebuttons.with_icon_and_text{ type = 'flat', icon = 'star', text = 'Awesome!!!', color = '#EBCB8B' },
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
