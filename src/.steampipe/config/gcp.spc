connection "gcp" {
  plugin = "gcp"
}

connection "gcp_all" {
  type        = "aggregator"
  plugin      = "gcp"
  connections = ["gcp_project_*"]
}

connection "gcp_project_technetium_development" {
  plugin  = "gcp"
  project = "technetium-development"
}

connection "gcp_project_technetium_staging" {
  plugin  = "gcp"
  project = "technetium-staging"
}

connection "gcp_project_technetium_production" {
  plugin  = "gcp"
  project = "technetium-production"
}
