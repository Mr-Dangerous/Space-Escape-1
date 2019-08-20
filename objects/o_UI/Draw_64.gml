var _gui_height = view_hport[0]
var _gui_width = view_wport[0]


draw_set_halign(fa_right);
var _date_x = _gui_width - 16
var _date_y = 16

draw_text(_date_x - 16, _date_y, _date)
draw_set_halign(fa_left)