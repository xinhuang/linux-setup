function show_temp(){                                                             
    vcgencmd measure_temp | grep -oP '[Tt]emp.?=\s*\K([-\+]?[\d.]+[^\d.]C)' -m 1                          
}

local temp_special='$(show_temp)'

RPROMPT="$RPROMPT ${temp_special}"
