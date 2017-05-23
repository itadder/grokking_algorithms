#Countdown Recursion in Powershell / .net
#Author Rodmhgl (Rod Stewart)
#clear screen after every run.
clear-host
Function Get-Greeting {
  param($name)

  Write-Host "hello, $name!"
  Get-SecondGreeting $name
  Write-Host "getting ready to say bye..."
  Bye  
}

Function Get-SecondGreeting {
  param($name)
  Write-Host "how are you $name?"
}

Function Bye { 
  Write-Host "ok bye!"
}

Get-Greeting -Name "Adit"