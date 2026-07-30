resource "local_file" "mario_local_file" {
    content  = "It's a me, Mario!"
    filename = "${path.cwd}/who_is_it.txt"
}