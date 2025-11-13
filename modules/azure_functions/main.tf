module "function" {
  source           = "./modules/azure_function"
  function_name    = "hello-func"
  resource_group   = azurerm_resource_group.main.name
  storage_account  = azurerm_storage_account.main.name
  app_service_plan = azurerm_app_service_plan.main.id
  code_path        = "../app"
}