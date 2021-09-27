param([Parameter(Mandatory=$true)]$ResourceGroup, [Parameter(Mandatory=$true)]$Location, $Configuration="Release")

$template = Join-Path $PSScriptRoot .\infrastructure\ResourceGroup.bicep
$output = az deployment sub create --name $ResourceGroup --template-file $template --location $Location -o json | ConvertFrom-Json

$outputPath = Join-Path $PSScriptRoot "src" "bin" $Configuration $TargetFramework "publish"
dotnet publish src -c $Configuration -o $outputPath

$archiveFile = "$outputPath.zip"
Compress-Archive -Path "$outputPath\*" -DestinationPath $archiveFile -Force

$output

az webapp deployment source config-zip --resource-group $ResourceGroup --name ($output.properties.outputs.WebSiteName.value) --src $archiveFile