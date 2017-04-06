function show_temp(){                                                             
    sensors | grep -oP '[Tt]emp.?:\s+\K([-\+][\d.]+°C)' -m 1                          
}

local temp_special='$(show_temp)'

RPROMPT="$RPROMPT ${temp_special}"
