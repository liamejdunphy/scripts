choco install vscode

$vsExtensions = 
"eamodio.gitlens", 
"eriklynd.json-tools", 
"esbenp.prettier-vscode", 
"ms-azure-devops.azure-pipelines", 
"ms-azuretools.vscode-azureappservice", 
"ms-azuretools.vscode-azurefunctions", 
"ms-azuretools.vscode-azureresourcegroups", 
"ms-azuretools.vscode-azurestorage", 
"ms-azuretools.vscode-azurevirtualmachines", 
"ms-azuretools.vscode-cosmosdb", 
"ms-azuretools.vscode-docker", 
"ms-dotnettools.csharp", 
"ms-dotnettools.vscode-dotnet-runtime", 
"ms-mssql.mssql", 
"ms-vscode-remote.remote-containers", 
"ms-vscode-remote.remote-ssh", 
"ms-vscode-remote.remote-ssh-edit", 
"ms-vscode-remote.remote-wsl", 
"ms-vscode-remote.vscode-remote-extensionpack", 
"ms-vscode.azure-account", 
"ms-vscode.azurecli", 
"ms-vscode.powershell", 
"ms-vscode.vscode-node-azure-pack", 
"ms-vsts.team", 
"msazurermtools.azurerm-vscode-tools", 
"richie5um2.vscode-sort-json", 
"tsqllint.tsqllint", 
"vscode-icons-team.vscode-icons", 
"zhuangtongfa.material-theme"

$vsExtensions |ForEach-Object { code --install-extension $_ --force }