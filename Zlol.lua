-- U CAN USE TS IN UR ROBLOX GAME --

local NeverLose = loadstring(game:HttpGet("https://raw.githubusercontent.com/csyzep-afk/Zlolgui/refs/heads/main/Zlol.lua"))() --require(script:WaitForChild('ModuleScript'));

local window = NeverLose:CreateWindow({
	Logo = NeverLose.GlobalLogo,
	Name = "Neverlose",
	Content = "Counter-Strike 2",
	Size = NeverLose.Scales.Default,
	ConfigFolder = "NeverLoseConfigs",
	Enable3DRenderer = false,
	Keybind = "Insert"
});

local Watermark = window:Watermark();

local ping = Watermark:AddBlock("chart-four-vertical-bars" , "0MS");
local UITogg = Watermark:AddBlock("cube-vertexes" , "Neverlose");

UITogg:Input(function()
	window:ToggleInterface();
end);

task.spawn(function()
	while true do task.wait(1)
		ping:SetText(tostring(math.random(30,90))..'MS')
	end
end)
