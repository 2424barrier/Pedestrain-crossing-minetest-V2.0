--Simple pedestrian barrier crossing by 2424barrier (Barrier electronics)
--V2.0
if pin.a then
error("Off")
end

if event.channel == "cross" then
digiline_send("roadbarrier" , "down")
digiline_send("signal" , "RED")
digiline_send("ped" , "GREEN")
interrupt(20, 'delay')

elseif event.iid == 'delay' then
digiline_send("roadbarrier" , "up" )
digiline_send("signal" , "GREEN" )
digiline_send("ped" , "RED" )
end
