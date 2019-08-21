var _plant_name = "bluecot"
var _water_consumption = "10 gallons"
var _harvest_type = "fruit"
var _nutrition = "sugar"
var _yield = "1 bushel"

var _water_consumption_message = string(string("Water: ") + (_water_consumption))
var _harvest_type_message = string(string("Output: ") + (_harvest_type))
var _nutrition_message = string(string("Nutrition: ") + (_nutrition))
var _yield_message = string(string("Yield: ") + (_yield))




var _x = x + 120
var _y = y + 60
draw_text_color(_x, _y, _plant_name, c_white, c_black, c_black, c_black, 1)
draw_text_color(_x, _y + 20, _water_consumption_message, c_black, c_black, c_black, c_black, 1) 
draw_text_color(_x, _y + 40, _harvest_type_message, c_black, c_black, c_black, c_black, 1)
draw_text_color(_x + 160, _y + 20, _nutrition_message, c_black, c_black, c_black, c_black, 1)
draw_text_color(_x + 160, _y + 40, _yield_message, c_black, c_black, c_black, c_black, 1)

