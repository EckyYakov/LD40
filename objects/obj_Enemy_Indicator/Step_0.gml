var _l = 0;
var _t = 0;
var _r = 0 + window_get_width();
var _b = 0 + window_get_height();
var _edge_x = window_get_width() / 2 - 32;  //change constant "32" to change arrow dist from edge of view (in room pixels)
var _edge_y = window_get_height() / 2 - 32;  //change constant "32" to change arrow dist from edge of view (in room pixels)
var _view_center_x = (_l + _r)/2;
var _view_center_y = (_t + _b)/2;
var _x1, _y1, _x2, _y2;
with (obj_Enemy) {
    if (!collision_rectangle(_l,_t,_r,_b,id,0,0)) {
        _x1 = (x - _view_center_x);
        _y1 = (y - _view_center_y);
        if abs(_x1 / _edge_x) > abs(_y1 / _edge_y) { _x2 = sign(_x1) * _edge_x; _y2 = _x2 / _x1 * _y1; } 
        else { _y2 = sign(_y1) * _edge_y; _x2 = _y2 / _y1 * _x1; }
        ds_queue_enqueue(other.edge_indicator,_view_center_x + _x2);
        ds_queue_enqueue(other.edge_indicator,_view_center_y + _y2);
        ds_queue_enqueue(other.edge_indicator,point_direction(0,0,_x1,_y1));
		ds_queue_enqueue(other.edge_indicator, max(0, (distance_to_point(_view_center_x + _x2, _view_center_y + _y2)/100)));
		ds_queue_enqueue(other.edge_indicator, spriteIndex);
		
    }
}