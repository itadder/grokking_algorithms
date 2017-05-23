Function Get-Factorial {
  param([int]$integer)
  if ($integer -le 1) { return 1 }
  return $integer * (Fact ($integer-1))
}

Get-Factorial 7