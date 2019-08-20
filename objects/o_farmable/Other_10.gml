// @ description User event 0 is called to advance the date forward by one

/*
switch statement needs to change to fit each plant
*/
var _ui_object = instance_find(o_UI, 0)
_date = _ui_object._date
var _length_planted = _date - _planted_date
if (image_index < image_number and _harvestable = false){
	image_index = floor(_length_planted / 2)
}
if (image_index = image_number - 1){
	_harvestable = true	
}

