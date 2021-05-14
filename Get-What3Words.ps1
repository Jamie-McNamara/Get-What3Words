function Get-What3Words {

    $Key =  "Your API Key"
    $Lat = Get-Random -Minimum -90.0000 -Maximum 90.0000
    $Long = Get-Random -Minimum -90.0000 -Maximum 90.0000
    
    $ApiUrl = "https://api.what3words.com/v3/convert-to-3wa?coordinates=" + $Lat + "%2C" + $Long + "&" + "key=" + $key
    
    $Script:Response = Invoke-RestMethod -Uri $ApiUrl | Select-Object -ExpandProperty words
    
}