/// @description Change state and perform action

if(btn_state == en_btn_states.disable)
	return;

btn_state = en_btn_states.pressed;

if(script_exists(btn_action)){
	script_execute(btn_action, btn_type);
}