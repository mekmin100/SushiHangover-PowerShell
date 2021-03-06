function Get-BootStatus
{
    <#
    .Synopsis
    Gets information about whether the system started normally.

    .Description
    Gets information about whether the system started normally. 

    Return values are:

    -- Normal
    -- SafeMode
    -- SafeModeWithNetworking

    This function has no parameters.

    .Notes
    This function uses the GetSystemMetrics function with an index of 67 (SM_CLEANBOOT).

    .Example
    C:PS> Get-BootStatus
    Normal
    #>

    param()
    
    if (-not ("${Script:RandomNamespace}.BootStatus" -as [Type])) {
        Add-Type "
        using System;
        namespace $script:RandomNamespace {
            public enum BootStatus {
                Normal,
                SafeMode,
                SafeModeWithNetworking
            }
        }
        "
    }
  
    $t = "${Script:RandomNamespace}.BootStatus" -as [Type]
    $systemMetrics::GetSystemMetrics(67) -as $t 
}