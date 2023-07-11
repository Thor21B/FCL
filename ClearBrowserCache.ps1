param([string] $username=(whoami).Split('\')[1])  

Write-host "Username is $username"

if(Test-Path -Path C:\Users\$username\AppData\Local\Google\Chrome\User` Data\Default\Cache)  

{  

   $itemsCountBefore = Get-ChildItem -Path C:\Users\$username\AppData\Local\Google\Chrome\User` Data\Default\Cache -Recurse | Measure-Object | %{$_.Count} 

   Remove-Item -Path C:\Users\$username\AppData\Local\Google\Chrome\User` Data\Default\Cache -Recurse -Force  

   $itemsCountAfter = Get-ChildItem -Path C:\Users\$username\AppData\Local\Google\Chrome\User` Data\Default\Cache -Recurse | Measure-Object | %{$_.Count} 

   if($itemsCountBefore -gt $itemsCountAfter) 

   { 

      Write-host "Cache cleared for Google Chrome" 

   } 

   else 

   { 

      Write-Host "Failed to clear cache for Google Chrome" 

   } 

}  

else  

{  

   Write-host "Specified path doesn't exist for Chrome Cache [C:\Users\$username\AppData\Local\Google\Chrome\User` Data\Default\Cache]"  

} 

if(Test-Path -Path C:\Users\$username\AppData\Local\Microsoft\Edge\User` Data\Default\Cache)  
 
{  
 
   $itemsCountBefore = Get-ChildItem -Path C:\Users\$username\AppData\Local\Microsoft\Edge\User` Data\Default\Cache -Recurse | Measure-Object | %{$_.Count} 
 
   Remove-Item -Path C:\Users\$username\AppData\Local\Microsoft\Edge\User` Data\Default\Cache -Recurse -Force  
 
   $itemsCountAfter = Get-ChildItem -Path C:\Users\$username\AppData\Local\Microsoft\Edge\User` Data\Default\Cache -Recurse | Measure-Object | %{$_.Count} 
 
   if($itemsCountBefore -gt $itemsCountAfter) 
 
   { 
 
      Write-host "Cache cleared for Microsoft Edge" 
 
   } 
 
   else 
 
   { 
 
      Write-Host "Failed to clear cache for Microsoft Edge" 
 
   } 
 
}  
 
else  
 
{  
 
   Write-host "Specified path doesn't exist for Microsoft Edge cache [C:\Users\$username\AppData\Local\Microsoft\Edge\User` Data\Default\Cache]"  
 
} 
