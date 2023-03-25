# Azure Function Configuration
This is a PowerShell module for use with PowerShell based Azure Function Apps.
It manages loading parameters for your function by loading defaults from a file, check if an environment variable overrides defaults, and validate that parameters are supplied properly.

## Usage example
In the profile.ps1 file, you can use `Import-FunctionConfig` and `Get-FunctionConfig` similar to the example below,
```PowerShell
    try{
    Import-FunctionConfig -FunctionParametersFilePath '.\FunctionParameters.psd1' -ErrorAction Stop
    }
    catch{
        Write-PSFMessage -Level Error -Message "Failed to import Function Parameters. Error: {0}" -StringValues $_.Exception.Message
        throw $_
    }
    Get-FunctionConfig SampleStringParameter
```
Here we tried to import the parameters using a `.psd1` file, this can be a `.json` file as well. If loading fails for any reason, we catch the error and throw an error so the function does not start with badly configured parameters.

If all parameters are supplied properly, the `Get-FunctionConfig` command will return the supplied value of the parameter `SampleStringParameter`
### Sample parameters file (psd1)
```PowerShell
@{
    SampleStringParameter    = @{Required = $false; Type = 'string'   ; Default = 'IncludeInAutoReplace'; Description = '' }
    SampleIntParameter       = @{Required = $false; Type = 'int   '   ; Default = 45                    ; Description = '' }
    SampleBoolParameter      = @{Required = $false; Type = 'bool  '   ; Default = $true                 ; Description = '' }
    SampleHashtableParameter = @{Required = $true ; Type = 'hashtable'                                  ; Description = '' }
    SampleRequiredParameter  = @{Required = $true ; Type = 'string'                                     ; Description = '' }
}
```
The file defines parameters with and without default values. Any environment variable with the same name will override the default value. A required parameter must be provided for the validation to pass.

The `Import-FunctionConfig` command will also validate that all parameters are in the write type, for hashtable the expected value is json formatted string that is converted at import to a hashtable.

### Import logging options
The import cmdlet logs the final values of each supplied parameter. By default SAS keys are redacted from logs (except for hashtable parameters), you can override this using the `-ShowSASKeys` switch.
It is also possible to stop logging the values using the `-DoNotLogValues` switch.