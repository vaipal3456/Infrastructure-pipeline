variable "devrgapp" {
  type = map(object({
    name     = string
    location = string
  }))
}