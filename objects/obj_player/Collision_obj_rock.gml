if (other.mass <= 30) {
    instance_destroy(other);
    hp -= 1;

} else {
    instance_destroy(other);
    hp -= 2;
}
