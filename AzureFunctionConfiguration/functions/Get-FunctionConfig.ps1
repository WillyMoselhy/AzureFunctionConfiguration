function Get-FunctionConfig {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [string]
        $Name
    )
    $Script:FunctionConfig[$Name]
}