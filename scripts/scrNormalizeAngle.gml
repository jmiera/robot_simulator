///scrNormalizeAngle(angle)
// Returns an angle between 0 and 360
var angle = argument0;
while (angle < 0) {
    angle += 360;
}

return angle % 360;

