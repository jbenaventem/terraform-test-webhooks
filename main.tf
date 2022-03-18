terraform {
  cloud {
    organization = "jbenaventem"

    workspaces {
      name = "terraform-test-workflows"
    }
  }
}
resource "random_pet" "generate_id" {
  length    = 1
  prefix    = "Fone Bone"
  separator = "."
}

resource "local_file" "comic" {
  filename = "./mis-comic.txt"
  content  = "01 - Lejos de Boneville \n 02 - La gran carrera de Vacas"
}
