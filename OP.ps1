function Open-Url([string] $url) { start $url }
function Open-Website([string] $website) { Open-Url "https://$website" }

function Ask-Google { Open-Website "google.com/search?q=$([uri]::EscapeDataString([string]::Join(' ', $args)))" }

Set-Alias google Ask-Google
