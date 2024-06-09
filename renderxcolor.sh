generate_color_variants() {
    main_color="$1"  # Expecting the color without a "#"
    num_variants="$2"
    r_adj="$3"
    g_adj="$4"
    b_adj="$5"

    if ((num_variants < 1 || num_variants > 40)); then
        echo "Error: Number of variants must be between 1 and 40."
        return 1
    fi

    r=$(printf '%d' "0x${main_color:0:2}")
    g=$(printf '%d' "0x${main_color:2:2}")
    b=$(printf '%d' "0x${main_color:4:2}")

    for ((i = 0; i < num_variants; i++)); do
        # Adjust the RGB values by user-specified amounts to create variants
        new_r=$(( (r + i * r_adj) % 256 ))
        new_g=$(( (g + i * g_adj) % 256 ))
        new_b=$(( (b + i * b_adj) % 256 ))

        new_color=$(printf "%02x%02x%02x" $new_r $new_g $new_b)
        echo -n "$new_color: "
        perl -e 'print "\e[48;2;".join(";",unpack("C*",pack("H*","'"$new_color"'")))."m   \e[49m "'
        
        if (( (i + 1) % 4 == 0 )); then
            echo  # Newline after every 4 colors
        else
            echo -n "  "  # Separate colors with spaces
        fi
    done
    echo  # Final newline
}

# Render hex color codes to color blocks in terminal
renderxcolor() {
    if [ "$1" == "" ] || [ "$1" == "--h" ] || [ "$1" == "--help" ]; then
        echo "Usage: renderxcolor [\"color1\"] [\"color2\"] [\"color3\"] ..."
        echo "Do not put the hash symbol in front of the hex codes"
        echo "Example: renderxcolor \"FF0000\" \"00FF00\" \"0000FF\""
        echo "To fetch color variants: renderxcolor \"color\" --variant [num_variants]"
    elif [ "$2" == "--variant" ]; then
        if [ "$#" -lt 2 ]; then
            echo "Error: Provide a color and use --variant option."
            return 1
        fi
        num_variants=10  # Default number of variants
        if [ "$#" -eq 3 ]; then
            num_variants="$3"
        fi
        # Prompt for RGB adjustment values
        read -p "Enter R adjustment value (0-9): " r_adj
        read -p "Enter G adjustment value (0-9): " g_adj
        read -p "Enter B adjustment value (0-9): " b_adj

        # Validate that inputs are numbers between 0 and 9
        if ! [[ "$r_adj" =~ ^[0-9]$ ]] || ! [[ "$g_adj" =~ ^[0-9]$ ]] || ! [[ "$b_adj" =~ ^[0-9]$ ]]; then
            echo "Error: RGB adjustment values must be between 0 and 9."
            return 1
        fi

        generate_color_variants "$1" "$num_variants" "$r_adj" "$g_adj" "$b_adj"
    else
        perl -e 'foreach $a(@ARGV){print "\e[48;2;".join(";",unpack("C*",pack("H*",$a)))."m       \e[49m "};print "\n"' "$@"
    fi
}

# Call the renderxcolor function with provided arguments
renderxcolor "$@"
