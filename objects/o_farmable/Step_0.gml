var _ui_object = instance_find(o_UI, 0)
_date = _ui_object._date
var _length_planted = _date - _planted_date
switch (_length_planted){
	case 0:
	image_index = 0
	break;
	case 1:
	image_index = 1
	break;
	case 2:
	image_index = 2
	break;
}
