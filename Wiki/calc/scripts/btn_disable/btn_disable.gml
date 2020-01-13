/// @btn_disable
/// @function btn_disable
/// @param btn_type

var _type = argument0;

with(obj_button){
	if(btn_type == _type){
		btn_state = en_btn_states.disable;	
	}
}
