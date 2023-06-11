#script to test current internet speed by downloading a 10Mb file and move it to temp folder

		 $TestFile  = 'https://drive.google.com/uc?export=download&id=1mYDp7OlmwiGAdOFqaeNrZTCtnOnr5Q_1'
		 $TempFile = Join-Path -Path $env:TEMP -ChildPath ('testfile_{0}.tmp' -f (Get-Date -Format "yyyyMMdd_HHmmss"))
		 $WebClient = New-Object Net.WebClient
		 $TimeTaken = Measure-Command { $WebClient.DownloadFile($TestFile,$TempFile) } | Select-Object -ExpandProperty TotalSeconds
		 $SpeedMbps = (10 / $TimeTaken) * 8
		 $Message = "{0:N2} MB/sec" -f ($SpeedMbps)
		 $Message
