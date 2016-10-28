Thread.new do
`cd app-dist && python -m SimpleHTTPServer 8000`
end
Thread.new do
`chromium-brower http://localhost:8000`
end