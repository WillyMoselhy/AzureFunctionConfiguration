@{
	# Script module or binary module file associated with this manifest
	RootModule        = 'AzureFunctionConfiguration.psm1'

	# Version number of this module.
	ModuleVersion     = '1.0.0'

	# ID used to uniquely identify this module
	GUID              = '755bf12f-f8bb-418a-b075-1379a79530ca'

	# Author of this module
	Author            = 'wmoselhy'

	# Company or vendor of this module
	CompanyName       = 'MyCompany'

	# Copyright statement for this module
	Copyright         = 'Copyright (c) 2023 wmoselhy'

	# Description of the functionality provided by this module
	Description       = 'A PowerShell module for Azure Function Apps running PowerShell to load configuration from defaults or environment variables.'

	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '5.0'

	# Modules that must be imported into the global environment prior to importing
	# this module
	RequiredModules   = @(
		@{ ModuleName = 'PSFramework'; ModuleVersion = '1.7.249' }
	)

	# Assemblies that must be loaded prior to importing this module
	# RequiredAssemblies = @('bin\AzureFunctionConfiguration.dll')

	# Type files (.ps1xml) to be loaded when importing this module
	# TypesToProcess = @('xml\AzureFunctionConfiguration.Types.ps1xml')

	# Format files (.ps1xml) to be loaded when importing this module
	# FormatsToProcess = @('xml\AzureFunctionConfiguration.Format.ps1xml')

	# Functions to export from this module
	FunctionsToExport = @(
		'Get-FunctionConfig'
		'Import-FunctionConfig'
	)

	# Cmdlets to export from this module
	CmdletsToExport   = ''

	# Variables to export from this module
	VariablesToExport = ''

	# Aliases to export from this module
	AliasesToExport   = ''

	# List of all modules packaged with this module
	ModuleList        = @()

	# List of all files packaged with this module
	FileList          = @()

	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData       = @{

		#Support for PowerShellGet galleries.
		PSData = @{

			# Tags applied to this module. These help with module discovery in online galleries.
			# Tags = @()

			# A URL to the license for this module.
			# LicenseUri = ''

			# A URL to the main website for this project.
			# ProjectUri = ''

			# A URL to an icon representing this module.
			# IconUri = ''

			# ReleaseNotes of this module
			# ReleaseNotes = ''

		} # End of PSData hashtable

	} # End of PrivateData hashtable
}