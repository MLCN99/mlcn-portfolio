output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "static_web_app_name" {
  description = "Name of the Static Web App"
  value       = azurerm_static_web_app.portfolio.name
}

output "static_web_app_url" {
  description = "Live URL of the portfolio"
  value       = azurerm_static_web_app.portfolio.default_host_name
}

output "deployment_token" {
  description = "Deployment token for GitHub Actions"
  value       = azurerm_static_web_app.portfolio.api_key
  sensitive   = true
}