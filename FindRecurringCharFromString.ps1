function get-recurringchar {
   [CmdletBinding()]
   param (
     [string]$inputstring
   )
  
   $inputstring.ToCharArray() |
   Group-Object -NoElement |
   where Count -gt 1 |
   where Name -eq 'd'
   Sort-Object -Property Count -Descending

}
get-recurringchar 'abcdedcba'

