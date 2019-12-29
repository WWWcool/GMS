/// @btn_enable
/// @function btn_enable
/// @param btn_type

var _type = argument0;

with(obj_button){
	if(btn_type == _type){
		btn_state = en_btn_states.idle;	
	}
}
