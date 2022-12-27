connection "gcp" {
  plugin = "gcp"
}

connection "gcp_all" {
  type        = "aggregator"
  plugin      = "gcp"
  connections = ["gcp_project_*"]
}

connection "gcp_project_technetium_mirror" {
  plugin  = "gcp"
  project = "technetium-mirror"
}

connection "gcp_project_technetium_stage" {
  plugin  = "gcp"
  project = "technetium-stage"
}

connection "gcp_project_technetium_production" {
  plugin  = "gcp"
  project = "technetium-production"
}
