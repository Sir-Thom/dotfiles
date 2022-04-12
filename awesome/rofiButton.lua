local wibox = require("wibox")

local widget = {}

local ICON_DIR = os.getenv("HOME") .. '/.config/awesome/RofiButton/Icons/'

function widget.get_widget(widgets_args)
    local args = widgets_args or {}

    local icon_dir = args.icon_dir or ICON_DIR

    return wibox.widget {
        {
            id = "icon",
            resize = false,
            widget = wibox.widget.imagebox,
        },
        valign = 'center',
        layout = wibox.container.place,
        
            local icon_name
            if self.is_muted then
                icon_name = 'search'
            
            self:get_children_by_id('icon')[1]:set_image(icon_dir .. icon_name .. '.svg')
        end,
    }
end

return widget
