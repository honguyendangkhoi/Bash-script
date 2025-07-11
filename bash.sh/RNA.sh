#!/bin/bash

#!/bin/bash

output=""
read -p "Type your DNA: " DNA

for (( i=0; i<${#DNA}; i++ )); do
    char=${DNA:$i:1}
    case "$char" in
        [Gg]) output+="C" ;;
        [Cc]) output+="G" ;;
        [Tt]) output+="A" ;;
        [Aa]) output+="U" ;;
        *) output+="?" ;;
    esac
done

echo "Your RNA: $output"

