#requires -version 2.0
function Add-RotateFlipFilter {    
    <#
    .Synopsis
    Creates a filter for rotating images.

    .Description
    The Add-RotateFlipFilter function adds a RotateFlip filter to an image filter collection.
    It creates a new filter collection if none exists. 

    An image filter is Windows Image Acquisition (WIA) concept. 
    Each filter represents a change to an image. 

    Add-RotateFlipFilter does not rotate or flip images; it only creates a filter. 
    To rotate or flip images, use the FlipVertical, FlipHorizontal, RotateClockwise and 
    RotateCounterClockwise methods of the Get-Image function, or use the Set-ImageFilter function, 
    which applies the filters.

    Unlike other filter functions in the PSImageTools module, Add-RotateFlipFilter does not have an image parameter.
    RotateFlip filters are not specific to an image.

    All parameters of this function are optional. 
    If you use Add-RotateFlipFilter without parameters, it creates a RotateFlip filter that does not rotate or flip the image.

    .Parameter Filter
    Enter a filter collection (a Wia.ImageProcess COM object).
    You can also pipe a filter collection to Add-OverlayFilter.
    Each filter in the collection represents one change to an image. This parameter is optional.
    If you do not submit a filter collection, Add-OverlayFilter creates one for you.

    .Parameter Angle
    Specifies the angle of rotation. Valid values are 0, 90, 180, 270, and 360. The default value is 0.

    .Parameter FlipHorizontal
    Flips the images horizontally.

    .Parameter FlipVertical
    Flips the images vertically.

    .Parameter Passthru
    Returns an object that represents the filter. By default, this function does not generate output.

    .Notes
    Add-RotateFlipFilter uses the Wia.ImageProcess object.

    .Example
    Add-RotateFlipFilter –angle 90 –passthru

    .Example
    $rf= Add-RotateFlipFilter -FlipVertical –passthru

    .Example
    C:\PS> $rf = Add-RotateFlipFilter –FlipHorizontal –passthru
    C:\PS> ($rf.filters | select properties).properties | format-table –property Name, value -auto

    Name           Value Type
    ----           ----- ----
    RotationAngle      0    5
    FlipHorizontal  True    1
    FlipVertical   False    1
    FrameIndex         0    5

    .Example
    $image = Get-Image .\Photo01.jpg            
    $NewImage = $image | Set-ImageFilter -filter (Add-RotateFlipFilter -flipHorizontal -passThru) -passThru                    
    $NewImage.SaveFile(".\Photo01-edited.jpg")

    .Link
    Set-ImageFilter

    .Link
    Image Manipulation in PowerShell:
    http://blogs.msdn.com/powershell/archive/2009/03/31/image-manipulation-in-powershell.aspx

    .Link
    "ImageProcess object" in MSDN
    http://msdn.microsoft.com/en-us/library/ms630507(VS.85).aspx

    .Link
    "Filter Object" in MSDN 
    http://msdn.microsoft.com/en-us/library/ms630501(VS.85).aspx

    .Link
    "How to Use Filters" in MSDN
    http://msdn.microsoft.com/en-us/library/ms630819(VS.85).aspx


    #>
    param(
    [Parameter(ValueFromPipeline=$true)]
    [__ComObject]
    $filter,
               
    [ValidateSet(0, 90, 180, 270, 360)]
    [int]$angle,
    [switch]$flipHorizontal,
    [switch]$flipVertical,
    
    [switch]$passThru                      
    )
    
    process {
        if (-not $filter) {
            $filter = New-Object -ComObject Wia.ImageProcess
        } 
        $index = $filter.Filters.Count + 1
        if (-not $filter.Apply) { return }
        $scale = $filter.FilterInfos.Item("RotateFlip").FilterId
        $isPercent = $true
        if ($width -gt 1) { $isPercent = $false }
        if ($height -gt 1) { $isPercent = $false } 
        $filter.Filters.Add($scale)
        $filter.Filters.Item($index).Properties.Item("FlipHorizontal") = "$FlipHorizontal"       
        $filter.Filters.Item($index).Properties.Item("FlipVertical") = "$FlipVertical"
        $filter.Filters.Item($index).Properties.Item("RotationAngle") = $Angle
        if ($passthru) { return $filter }         
    }
}
