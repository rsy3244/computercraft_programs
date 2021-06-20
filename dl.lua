http.request("http://raw.githubusercontent.com/rsy3244/computercraft_programs/main/README.md")

local requesting = true

while requesting do
	local event, url, sourceText = os.pullEvent()

	if event == "http_success" then
		local respondedText = sourceText.readALL()

		sourceText.close()
		print(respondedText)

		requesting = false

	elseif event = "http_failure" then
		print("Server didn't respond.")

		requesting = false

	end
end
