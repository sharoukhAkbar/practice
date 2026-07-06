Function Get-ColorCode() {
    <#
    .SYNOPSIS
    Translate a color to its corresponding color code.

    .DESCRIPTION
    Given a color, return its corresponding color code.

    .PARAMETER Color
    The color to translate to its corresponding color code.

    .EXAMPLE
    Get-ColorCode -Color "black"
    #>
    [CmdletBinding()]
    Param(
        [string]$Color
    )
    
    $ColorMap = @(
      @{
         color = "black"
         code = 0
       }
      @{
         color = "brown"
         code = 1
       }
      @{
         color = "red"
         code = 2
       }
      @{
         color = "orange"
         code = 3
       }
      @{
         color = "yellow"
         code = 4
       }
      @{
         color = "green"
         code = 5
       }
      @{
         color = "blue"
         code = 6
       }
      @{
         color = "violet"
         code = 7
       }
      @{
         color = "grey"
         code = 8
       }
      @{
         color = "white"
         code = 9
       }
    )
    foreach($Item in $ColorMap) {
      if($Color -eq $Item.color) {
        return($Item.code)
      }
      else {
        continue
      }
    }
    return("Please input a standard color")
}

Function Get-Colors() {
    <#
    .SYNOPSIS
    Return the list of all colors.

    .DESCRIPTION
    Return the list of all colors.

    .EXAMPLE
    Get-Colors
    #>
    
    $Colors = @("black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white")
    return($Colors)
}