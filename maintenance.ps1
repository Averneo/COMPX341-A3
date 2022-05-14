#Run from base folder of repo!!!

Write-Output "Maintenance task beginning"

#Declare text we want to add
$text = "Jacqui McPherson: 1547318"

#Find files we need to add to (all files ending with .ts)
$files = Get-ChildItem -Recurse -Filter "*.ts"

#Add text to beginning of each file
foreach ($file in $files){
    $content = Get-Content $file.FullName -Encoding UTF8
    $content[0] += $text
    $content | Out-File $file.FullName -Encoding UTF8
    
    #Confirm file has been modified
    Write-Output $file.FullName
}

Write-Output "Maintenance task ending"
