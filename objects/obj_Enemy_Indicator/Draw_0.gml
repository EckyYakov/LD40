var _x, _y, _an, _al, _sp;
while !ds_queue_empty(edge_indicator) {
    _x = ds_queue_dequeue(edge_indicator);
    _y = ds_queue_dequeue(edge_indicator);
    _an = ds_queue_dequeue(edge_indicator);
	_al = ds_queue_dequeue(edge_indicator);
	_sp = ds_queue_dequeue(edge_indicator);
    draw_sprite_ext(_sp, 0,_x,_y, .5 * _al, .5 * _al, _an,c_white,_al);
	
}