local killsays = {
[1] = "Easy for aimware´s Walkbot on legit playstylemode",
[2] = "Easy for aimware´s Walkbot on legit playstylemode",
] = "Easy for aimware´s Walkbot on legit playstylem
[4] = "1",
[5] = "1",
}

function CHAT_KillSay( Event )

if ( Event:GetName() == 'player_death' ) then

local ME = client.GetLocalPlayerIndex();

local INT_UID = Event:GetInt( 'userid' );
local INT_ATTACKER = Event:GetInt( 'attacker' );

local NAME_Victim = client.GetPlayerNameByUserID( INT_UID );
local INDEX_Victim = client.GetPlayerIndexByUserID( INT_UID );

local NAME_Attacker = client.GetPlayerNameByUserID( INT_ATTACKER );
local INDEX_Attacker = client.GetPlayerIndexByUserID( INT_ATTACKER );

if ( INDEX_Attacker == ME and INDEX_Victim ~= ME ) then

local response = tostring(killsays[math.random(#killsays)]);
client.ChatSay( ' ' .. response );

end

end

end

client.AllowListener( 'player_death' );

callbacks.Register( 'FireGameEvent', 'AWKS', CHAT_KillSay )






--***********************************************--

print("♥♥♥ " .. GetScriptName() .. " loaded without Errors ♥♥♥")

