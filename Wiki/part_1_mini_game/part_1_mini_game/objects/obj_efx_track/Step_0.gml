/// @description Insert description here
// You can write your code in this editor

image_alpha -= delta_time/1000000;
if(image_alpha <= 0)
{
	instance_destroy();	
}
