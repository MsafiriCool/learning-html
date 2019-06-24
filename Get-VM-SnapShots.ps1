Connect-VIServer -Server vcenter -User username -Password password

Get-VM | Format-Table Name, @{Labal="NumSnapShots";Expression={(Get-Snapshot -VM $_ | Measure-Object).Count}},
@{Label="TotalSnapshotSizeMB";Expression={(Get-Snapshot -VM $_ | Measure-Object -Sum SizeMB).Sum}}

Read-Host -Prompt "Enter to Exit"
