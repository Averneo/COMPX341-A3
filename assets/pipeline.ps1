npm install
npm run build > build_output.txt

#If the build fails to compile
if (Select-String -Path "build_output.txt" -Pattern "Failed to compile." -Quiet)
{
    Write-Output "Compile failed! Please fix application before attempting to push to GitHub."
}
#Else if the build compiles successfully
else 
{
    Write-Output "Compile successful! App will be pushed to GitHub and deployed."
    git add .
    git commit -m "Pipeline is working"
    git push origin main
    npm run start
}