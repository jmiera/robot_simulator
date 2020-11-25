///scrGetDistance(start_x, start_y, max_dist, direction)
// Returns the distance, and end coordinates from the starting position in the given direction to the nearest solid object
var inst, start_x, start_y, max_dist, dir, end_x, end_y, actual_dist;
start_x = argument0;
start_y = argument1;
max_dist = argument2;
dir = argument3;
inst = instance_create(start_x, start_y, objLaserParticle);
inst.direction = dir;
with (inst) {
    move_contact_solid(direction, max_dist);
    actual_dist = distance_to_point(start_x, start_y);
    end_x = x;
    end_y = y;
    instance_destroy();
}
retval[2] = end_y;
retval[1] = end_x;
retval[0] = actual_dist;
return retval;

