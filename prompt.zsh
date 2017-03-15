function show_temp(){                                                             
    sensors | grep -oP 'temp1:\s+\K([-\+][\d.]+°C)' -m 1                          
}

RPROMPT="$RPROMPT $(show_temp)"
