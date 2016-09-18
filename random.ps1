$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition

$inputFile = "$PSScriptRoot\list_to_random.csv"
$outputFile = "$PSScriptRoot\random_results.csv"

Get-Content $inputFile -Encoding "UTF8" | Sort-Object {Get-Random} | Out-File -Encoding "UTF8" $outputFile
Get-Content $outputFile # display in the console