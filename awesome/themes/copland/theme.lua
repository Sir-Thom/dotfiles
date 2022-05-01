--[[

     Copland Awesome WM theme 2.0
     github.com/lcpz

--]]
pcall(require, "luarocks.loader")
local logout_menu_widget = require("awesome-wm-widgets.logout-menu-widget.logout-menu")
local gears = require("gears")
local battery_widget = require("awesome-wm-widgets.battery-widget.battery")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi
local awesome, client, os = awesome, client, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility
local vicious = require("vicious")
local brightness_widget = require("awesome-wm-widgets.brightness-widget.brightness")
local bling = require("bling")

--local noobie_exmaple_1 = require("noobie")
local theme                                     = {}

theme.task_preview_widget_border_radius 		= 3
theme.task_preview_widget_margin 				= 10 
theme.task_preview_widget_border_width 			= 2  
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/copland"
theme.wallpaper                                 = "nitrogen --restore --set-scaled" --theme.dir .. "/wall.jpg"
theme.font                                      = "Cabin SemiBold 11"
theme.fg_normal                                 = "#909090"
theme.fg_focus                                  = "#C2C2C2"
theme.bg_normal                                 = "#121218"
theme.bg_focus                                  = "#121218"
theme.fg_urgent                                 = "#FAAA25"
theme.bg_urgent                                 = "#999499"
theme.border_width                              = dpi(3)
theme.border_normal                             = "#121218"
theme.border_focus                              = "#B5B1B5"
theme.border_focus                              = "#B5B1B5"
theme.taglist_fg_focus                          = "#C2C2C2"
theme.taglist_bg_focus                          = "##5D788E"
theme.taglist_bg_normal                         = "##5D788E"
theme.titlebar_bg_normal                        = "#121218"
theme.titlebar_bg_focus                         = "#121218"
theme.menu_height                               = dpi(20)
theme.menu_width                                = dpi(130)
theme.tasklist_disable_icon                     = true
theme.awesome_icon                              = theme.dir .."/icons/awesome.png"
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_unsel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.vol                                       = theme.dir .. "/icons/vol.png"
theme.vol_low                                   = theme.dir .. "/icons/vol_low.png"
theme.vol_no                                    = theme.dir .. "/icons/vol_no.png"
theme.vol_mute                                  = theme.dir .. "/icons/vol_mute.png"
theme.disk                                      = theme.dir .. "/icons/disk.png"
theme.ac                                        = theme.dir .. "/icons/ac.png"
theme.bat                                       = theme.dir .. "/icons/bat.png"
theme.bat_low                                   = theme.dir .. "/icons/bat_low.png"
theme.bat_no                                    = theme.dir .. "/icons/bat_no.png"
theme.play                                      = theme.dir .. "/icons/play.png"
theme.pause                                     = theme.dir .. "/icons/pause.png"
theme.stop                                      = theme.dir .. "/icons/stop.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.useless_gap                               = 2
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/x.svg"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/x.svg"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximize_normal.svg"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximize_normal.svg"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximize_normal.svg"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximize_normal.svg"
theme.titlebar_minimize_button_normal_inactive = theme.dir .. "/icons/titlebar/minus-square.svg"
theme.titlebar_minimize_button_normal_active = theme.dir .. "/icons/titlebar/minus-square.svg"
theme.titlebar_minimize_button_focus_inactive = theme.dir .. "/icons/titlebar/minus-square.svg"
theme.titlebar_minimize_button_focus_active = theme.dir .. "/icons/titlebar/minus-square.svg"
-- lain related
theme.layout_centerfair                         = theme.dir .. "/icons/centerfair.png"
theme.layout_termfair                           = theme.dir .. "/icons/termfair.png"
theme.layout_centerwork                         = theme.dir .. "/icons/centerwork.png"

local markup = lain.util.markup
local blue   = theme.fg_focus
local red    = "#F73131"
local green  = "##0404F7"
local volumec = "#C2C2C2"
local volume_widget = require('awesome-wm-widgets.volume-widget.volume')
local calendar_widget = require("awesome-wm-widgets.calendar-widget.calendar")
-- Textclock
os.setlocale(os.getenv("LANG")) -- to localize the clock
local mytextclock = wibox.widget.textclock("<span font='Gravity Bold 11'> </span>%H:%M ")
mytextclock.font = theme.font
local apt_widget = require("awesome-wm-widgets.apt-widget.apt-widget")
theme.cal = lain.widget.cal({

    attach_to = { mytextclock },
    notification_preset = {

        font = "Gravity Bold 10",
        fg   = theme.fg_focus ,--theme.fg_normal,
        bg   = theme.bg_normal
    }
})

-- Create a textclock widget
mytextclock = wibox.widget.textclock()
-- default

-- or customized
local cw = calendar_widget({
    theme = 'naughty',
    placement = 'bottom_right',
    start_sunday = true,
    radius = 0,
    

})
mytextclock:connect_signal("button::press",
    function(_, _, _, button)
        if button == 1 then cw.toggle() end
    end)

-- Mail IMAP check
--[[ to be set before use
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        mail  = ""
        count = ""

        if mailcount > 0 then
            mail = "<span font='Terminus 5'> </span>Mail "
            count = mailcount .. " "
        end

        widget:set_markup(markup(blue, mail) .. count)
    end
})
--]]

-- MPD
local mpdicon = wibox.widget.imagebox()
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            title = mpd_now.title
            artist  = " " .. mpd_now.artist  .. markup("#777777", " <span font='Hack Bold 2'> </span>|<span font='Cabin SemiBold 5'> </span>")
            mpdicon:set_image(theme.play)
        elseif mpd_now.state == "pause" then
            title = "mpd "
            artist  = "paused" .. markup("#777777", " |<span font=' 5'> </span>")
            mpdicon:set_image(theme.pause)
        else
            title  = ""
            artist = ""
            mpdicon._private.image = nil
            mpdicon:emit_signal("widget::redraw_needed")
            mpdicon:emit_signal("widget::layout_changed")
        end

        widget:set_markup(markup.font(theme.font, markup(blue, title) .. artist))
    end
})

-- Battery
local baticon = wibox.widget.imagebox(theme.bat)
local batbar = wibox.widget {
    forced_height    = dpi(0),
    forced_width     = dpi(50),
    color            = theme.fg_normal,
    background_color = theme.bg_normal,
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = dpi(5),
    widget           = wibox.widget.progressbar,
}
local batupd = lain.widget.bat({
    settings = function()
        if (not bat_now.status) or bat_now.status == "N/A" or type(bat_now.perc) ~= "number" then return end

        if bat_now.status == "En charge" then
            baticon:set_image(theme.ac)
            if bat_now.perc >= 98 then
                batbar:set_color(green)
            elseif bat_now.perc > 50 then
                batbar:set_color(volumec)
            elseif bat_now.perc > 20 then
                batbar:set_color(volumec)
            else
                batbar:set_color(red)
            end
        else
            if bat_now.perc >= 98 then
                batbar:set_color(green)
            elseif bat_now.perc > 50 then
                batbar:set_color(volumec)
                baticon:set_image(theme.bat)
            elseif bat_now.perc > 20 then
                batbar:set_color(volumec)
                baticon:set_image(theme.bat_low)
            else
                batbar:set_color(red)
                baticon:set_image(theme.bat_no)
            end
        end
        batbar:set_value(bat_now.perc / 100)
    end
})
local batbg = wibox.container.background(batbar, "#5D788E", gears.shape.rectangle)
local batwidget = wibox.container.margin(batbg, dpi(1), dpi(7), dpi(4), dpi(4))

-- /home fs
--[[ commented because it needs Gio/Glib >= 2.54
local fsicon = wibox.widget.imagebox(theme.disk)
local fsbar = wibox.widget {
    forced_height    = dpi(1),
    forced_width     = dpi(59),
    color            = theme.fg_normal,
    background_color = theme.bg_normal,
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = dpi(6),
    widget           = wibox.widget.progressbar,
}
theme.fs = lain.widget.fs {
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "Terminus 10.5" },
    settings  = function()
        if fs_now["/home"].percentage < 90 then
            fsbar:set_color(theme.fg_normal)
        else
            fsbar:set_color("#EB8F8F")
        end
        fsbar:set_value(fs_now["/home"].percentage / 100)
    end
}
local fsbg = wibox.container.background(fsbar, "#474747", gears.shape.rectangle)
local fswidget = wibox.container.margin(fsbg, dpi(2), dpi(7), dpi(4), dpi(4))
--]]

-- ALSA volume bar
local volicon = wibox.widget.imagebox(theme.vol)
theme.volume = lain.widget.alsabar {
    width = dpi(67), border_width = 0, ticks = true, ticks_size = dpi(5),
    notification_preset = { font = theme.font },
    --togglechannel = "IEC958,3",
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.vol_mute)
        elseif volume_now.level == 0 then
            volicon:set_image(theme.vol_no)
        elseif volume_now.level <= 50 then
            volicon:set_image(theme.vol_low)
        else
            volicon:set_image(theme.vol)
        end
    end,
    colors = {
        background   = theme.bg_normal,
        mute         = red,
        unmute       = volumec
    }
    
}
theme.volume.tooltip.wibox.fg = theme.fg_focus
theme.volume.bar:buttons(my_table.join (
          awful.button({}, 1, function()
            awful.spawn(string.format("%s -e alsamixer", awful.util.terminal))
          end),
          awful.button({}, 2, function()
            os.execute(string.format("%s set %s 100%%", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 3, function()
            os.execute(string.format("%s set %s toggle", theme.volume.cmd, theme.volume.togglechannel or theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 4, function()
            os.execute(string.format("%s set %s 1%%+", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 5, function()
            os.execute(string.format("%s set %s 1%%-", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end)
))
local volumebg = wibox.container.background(theme.volume.bar, "#C2C2C2", gears.shape.rectangle)
local volumewidget = wibox.container.margin(volumebg, dpi(7), dpi(7), dpi(8), dpi(8))

-- Weather
--[[ to be set before use
theme.weather = lain.widget.weather({
    --APPID =
    city_id = 2643743, -- placeholder (London)
})
--]]

-- Separators
local first     = wibox.widget.textbox(markup.font("Hack Bold 3", " "))
local spr       = wibox.widget.textbox(' ')
local small_spr = wibox.widget.textbox(markup.font("Hack Bold  4", " "))
local bar_spr   = wibox.widget.textbox(markup.font("Hack Bold 3", " ") .. markup.fontfg(theme.font, "#777777", " ") .. markup.font("Cabin SemiBold 5", " "))

-- Eminent-like task filtering
local orig_filter = awful.widget.taglist.filter.all

-- Taglist label functions
awful.widget.taglist.filter.all = function (t, args)
    if t.selected or #t:clients() > 0 then
        return orig_filter(t, args)
    end
end







function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
  -- s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)
s.mytasklist = awful.widget.tasklist {
    screen   = s,
    filter   = awful.widget.tasklist.filter.currenttags,
    buttons  = awful.util.tasklist_buttons,
    layout   = {
        spacing_widget = {
            {
                forced_width  = 5,
                forced_height = 24,
                thickness     = 0,
                color         = '#777777',
                widget        = wibox.widget.separator
            },
            valign = 'center',
            halign = 'center',
            widget = wibox.container.place,
        },
        spacing = 10,
        layout  = wibox.layout.fixed.horizontal
    },
    -- Notice that there is *NO* wibox.wibox prefix, it is a template,
    -- not a widget instance.
    widget_template = {
        {
            wibox.widget.base.make_widget(),
            forced_height = 1,
            id            = 'background_role',
            widget        = wibox.container.background,
        },
        {
            {
                id     = 'clienticon',
                widget = awful.widget.clienticon,
            },
            margins = 2,
            widget  = wibox.container.margin
        },
        nil,
        create_callback = function(self, c, index, objects) --luacheck: no unused args
            self:get_children_by_id('clienticon')[1].client = c

            -- BLING: Toggle the popup on hover and disable it off hover
            self:connect_signal('mouse::enter', function()
                    awesome.emit_signal("bling::task_preview::visibility", c,
                                        true, c)
                end)
                self:connect_signal('mouse::leave', function()
                    awesome.emit_signal("bling::task_preview::visibility", s,
                                        false, c)
                end)
        end,
        layout = wibox.layout.align.vertical,
    },
}
local button = wibox.widget{
    image  = theme.awesome_icon ,
    resize = false,
    widget = wibox.widget.imagebox
}
    -- Create the wibox
    s.mywibox = awful.wibar({ position = "bottom", screen = s, height = dpi(30), bg = theme.bg_normal, fg = theme.fg_normal })
--	local logout_menu_widget = require("awesome-wm-widgets.logout-menu")
    -- Add widgets to the wibox
	
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            small_spr,
            logout_menu_widget(),
            first,
            bar_spr,
            s.mytaglist,
            first,
            s.mypromptbox,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            
            small_spr,

            --theme.mail.widget,
            mpdicon,
            theme.mpd.widget,
            bar_spr,
			---button,
           
            bar_spr,
            --fsicon,
            --fswidget,
            bar_spr,   
			
            --volume_widget{
            --widget_type = 'vertical_bar', with_icon = true
            
       -- },
			 wibox.widget.systray(),
			bar_spr,
			brightness_widget(),
            bar_spr, 
			battery_widget(),
            bar_spr,
            mytextclock,
			

            bar_spr,
            s.mylayoutbox,
        },
    }
end


return theme
