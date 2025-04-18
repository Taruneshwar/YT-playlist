
<#
MIT License

Copyright (c) 2025 Machina Tharuneswar

Premission is shereby granted, free of charge, to any person obtaining a copy of this code...


#>


# list of URL's

$videos = @(
	
	# ADD YOUR URLs HERE

	"https://www.youtube.com/watch?v=zBjJUV-lzHo",
	"https://www.youtube.com/watch?v=YLslsZuEaNE",
	"https://www.youtube.com/watch?v=xvFZjo5PgG0",
	"https://www.youtube.com/watch?v=YKsQJVzr3a8",
	"https://www.youtube.com/watch?v=pQD9NyisNww"
)
foreach ($url in $videos){
	$title = yt-dlp --get-title $url
	Write-Host " Now playing: $title  "
	# by default the video plays in full scree "--fs" & waits for one to finish
	Start-Process -FilePath "mpv" -ArgumentList "--fs", $url -Wait	
}
