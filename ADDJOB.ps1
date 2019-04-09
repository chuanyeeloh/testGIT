Function Addjob {
$q = New-Object System.Collections.Queue
#ADD 10 JOBS
Write-output "add 10 jobs"
$q.Enqueue("job")
$q.Enqueue("job")
$q.Enqueue("job")
$q.Enqueue("job")
$q.Enqueue("job")
$q.Enqueue("job")
$q.Enqueue("job")
$q.Enqueue("job")
$q.Enqueue("job")
$q.Enqueue("job")

$q
write-output "Currently queueing count:"
$q.count


#ADD JOB 11
pause
cls
Write-output "Add Job11"
$q.Enqueue("job11")
if( $q.Count -gt 10){ (write-output Full)
} else {Write-Output Ok }
$q.Dequeue()|Out-Null

pause
cls
write-output "Show currently queue:"
$q
}
addjob