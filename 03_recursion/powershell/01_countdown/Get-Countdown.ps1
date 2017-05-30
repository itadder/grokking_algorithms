#Countdown Recursion in Powershell / .net
#Author Rodmhgl (Rod Stewart)
#clear screen after every run.
clear-host
 
Function Get-Countdown {
  #[CmdletBinding()]
  #[Alias()]
  #[OutputType([int])]
  Param (
      #  numeric lists 
      [Parameter(Mandatory=$true,
                ValueFromPipeline=$true,
                Position=0)]
      [int]$StartingNumber
  )
  Process {
    Write-Output $StartingNumber
    # base case
    if ($StartingNumber -le 0) {
      return
    } else {
      Get-Countdown -StartingNumber ($StartingNumber - 1)
    }
  }
}

Get-Countdown -StartingNumber 10