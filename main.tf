terraform {
  cloud {
    organization = "jbenaventem"

    workspaces {
      name = "terraform-test-github-actions"
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
  content  = "fone Bone-test02"
}
