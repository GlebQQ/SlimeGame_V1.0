var _xmove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ymove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += _xmove * spd;
y += _ymove * spd;
 cd--;

//выстрелы
if (cd <= 0 && mouse_check_button(mb_left)) {
	cd = cdvalue;
	with (instance_create_layer(x, y, "bullets", Object12)) {
		direction = Object13.image_angle;
		speed = 10;
		}
}

if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

//анимации ходьбы
if keyboard_check(ord("S")) {
	sprite_index = Spr_player_downmove;
}

if keyboard_check(ord("W")) {
	sprite_index = Spr_player_upmove;
}

if keyboard_check(ord("A")) {
	sprite_index = Spr_player_leftmove;
}

if keyboard_check(ord("D")) {
	sprite_index = Spr_player_rightmove;
}

//разварот в конце анимации
else if keyboard_check(ord("")) {
	sprite_index = Spr_player;
}


if (keyboard_check(ord("D")) || keyboard_check(ord("A")) || keyboard_check(ord("W")) || keyboard_check(ord("S"))) && keyboard_check(vk_shift) 
	spd = 3.5;
else 
	spd = 2;