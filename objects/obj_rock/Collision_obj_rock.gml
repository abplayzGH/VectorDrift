// Direction from other rock to this one
var nx = x - other.x;
var ny = y - other.y;

// Normalize collision normal
var dist = point_distance(x, y, other.x, other.y);
if (dist == 0) exit;

nx /= dist;
ny /= dist;

// Relative velocity
var rvx = hsp - other.hsp;
var rvy = vsp - other.vsp;

// Relative velocity along normal
var vel_along_normal = rvx * nx + rvy * ny;

// If separating, do nothing
if (vel_along_normal > 0) exit;

// Restitution (bounciness)
var restitution = 2; // 1 = perfect bounce

// Impulse scalar
var j = -(1 + restitution) * vel_along_normal;
j /= (1 / mass) + (1 / other.mass);

// Apply impulse
var impulse_x = j * nx;
var impulse_y = j * ny;

hsp += impulse_x / mass;
vsp += impulse_y / mass;

other.hsp -= impulse_x / other.mass;
other.vsp -= impulse_y / other.mass;
