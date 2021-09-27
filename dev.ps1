param([Parameter(Mandatory=$true)]$ResourceGroup, [Parameter(Mandatory=$true)]$Location)

$account = az ad signed-in-user show --query objectId -o json | ConvertFrom-Json

$template = Join-Path $PSScriptRoot .\infrastructure\ResourceGroup.bicep
$output = az deployment sub create --name $ResourceGroup --template-file $template --location $Location -o json -p identity=$account | ConvertFrom-Json

dotnet user-secrets init -p src
foreach ($o in $output.properties.outputs.psobject.properties)
{
    dotnet user-secrets set -p src $o.name.Replace("__", ":") $o.value.value
}

