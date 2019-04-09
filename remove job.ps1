function removejob{
$q = New-Object System.Collections.Queue
$q.Enqueue("job11")
cls
write-output "Removing job"
$q.dequeue()
if( $q.Count -gt 10){
    write-output Full
} else {Write-Output Ok }

write-output "Currently queueing job:"
$q.count


#REMOVE A JOB
pause
cls
write-output "remove a job"
$q.dequeue()
if ($? -eq "True" ){write-output "ok"} else {(Write-Output Empty)}
write-output "Currently queueing job:"
$q.count
Pause
}
removejob