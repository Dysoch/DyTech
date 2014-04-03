#requires -version 2

#.SYNOPSIS
#Copy DyTech github files to factorio mods folder
#
#.DESCRIPTION
#Copy github files to factorio folder
# 
#.PARAMETER <$targetDirectory>
#Path to factorio folder
# 
#.NOTES
#Version: 1.0
#Author: <FreeER>
#Creation Date: 4/2/2014
#
#.EXAMPLE
#.\copy.ps1
# will copy Dytech files to Program Files\Factorio\mods
#.EXAMPLE
#.\copy.ps1 "C:\Program Files\Factorio"
# will copy Dytech files to Program Files\Factorio\mods
#.EXAMPLE
#.\copy.ps1 "$env:ProgramFiles\Factorio"
#.EXAMPLE
#.\copy.ps1 "$env:ProgramW6432\Factorio"

[CmdletBinding()]
Param(  
   [Parameter(Mandatory=$False, HelpMessage="Path to Factorio Folder")]
    [string]$targetDirectory,

   [Parameter(Mandatory=$False, HelpMessage="Saved Factorio Path for FreeER")]
    [switch]$FreeER
)

#----------------------------------------------------------[Declarations]----------------------------------------------------------
 
#Script Version
$sScriptVersion = "1.0"
 
#-----------------------------------------------------------[Execution]------------------------------------------------------------


if ($targetDirectory -eq "") {
    if ($FreeER) { [string]$Folder = "Factorio:\beta testing" }
    elseif ($env:ProgramW6432) { $Folder = "$env:ProgramW6432\Factorio" }
    else { $Folder = "$env:ProgramFiles\Factorio" }
} else { $Folder = $targetDirectory }

Write-Debug $Folder
Copy-Item -Path ..\DyTech -Destination $Folder\mods -Exclude ( "copy.ps1", ".git", ".gitattributes", ".gitignore", "copy.ps1", "README.md" ) -Recurse -Force