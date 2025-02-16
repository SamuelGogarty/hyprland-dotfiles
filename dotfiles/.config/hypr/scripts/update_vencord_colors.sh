#!/bin/bash
# Extract colors from wal's colors.json
colors_file="$HOME/.cache/wal/colors.json"
vencord="$HOME/.config/Vencord/themes/ml4w-wal.css"
vesktop="$HOME/.config/vesktop/themes/ml4w-wal.css"

background=$(jq -r '.special.background' "$colors_file")
foreground=$(jq -r '.special.foreground' "$colors_file")
accent=$(jq -r '.colors.color4' "$colors_file")
cursor=$(jq -r '.special.cursor' "$colors_file")

color0=$(jq -r '.colors.color0' "$colors_file")
color1=$(jq -r '.colors.color1' "$colors_file")
color2=$(jq -r '.colors.color2' "$colors_file")
color3=$(jq -r '.colors.color3' "$colors_file")
color4=$(jq -r '.colors.color4' "$colors_file")
color5=$(jq -r '.colors.color5' "$colors_file")
color6=$(jq -r '.colors.color6' "$colors_file")
color7=$(jq -r '.colors.color7' "$colors_file")
color8=$(jq -r '.colors.color8' "$colors_file")
color9=$(jq -r '.colors.color9' "$colors_file")
color10=$(jq -r '.colors.color10' "$colors_file")
color11=$(jq -r '.colors.color11' "$colors_file")
color12=$(jq -r '.colors.color12' "$colors_file")
color13=$(jq -r '.colors.color13' "$colors_file")
color14=$(jq -r '.colors.color14' "$colors_file")
color15=$(jq -r '.colors.color15' "$colors_file")


# Generate CSS
css_content="/* import theme modules */
@import url('https://refact0r.github.io/system24/src/main.css'); /* main theme css. DO NOT REMOVE */
@import url('https://refact0r.github.io/system24/src/unrounding.css'); /* gets rid of all rounded corners. remove if you want rounded corners. */

:root {

    /* *.background */
    --background-primary: $color0;
    --background-secondary: $color0;
    --background-tertiary: $color0;

    --background-primary-alt: $color1;
    --background-secondary-alt: $color1;
    --background-tertiary-alt: $color1;

    --channeltextarea-background: $color1;
    --custom-channel-members-bg: $color3;

    --profile-gradient-primary-color: $color6;
    --profile-gradient-secondary-color: $color7;

    --__header-bar-background: $background !important;

    --scrollbar-auto-track: $background;
    --scrollbar-thin-track: $background;

    /* slightly darker background - useful for separating */
    --input-background: color-mix(in srgb, $background, black 20%);
    --autocomplete-bg: color-mix(in srgb, $background, black 20%);
    --background-nested-floating: color-mix(in srgb, $background, black 20%);
    --background-floating: color-mix(in srgb, $background, black 20%);

    /* primary.* */
    --primary-630: $background;

    /* *.color2 - secondary elements */
    --scrollbar-auto-thumb: $color2;
    --scrollbar-thin-thumb: $color2;
    --interactive-muted: $color2;
    --text-muted: $color2;
    --background-modifier-hover: color-mix(in srgb, $color2, black 40%);
    --background-modifier-active: color-mix(in srgb, $color2, black 20%);
    --background-modifier-accent: $color2;
    --background-accent: $color2;

    /* *.color3 */
    --red-400: $color3;
    --background-modifier-selected: $color3;

    /* *.color4 - main theme color: flashy, important elements */
    --status-danger: $color4;
    --button-outline-danger-border: $color4;
    --button-outline-danger-text: $color4;
    --button-danger-background: $color4;

    --yellow-300: $color4;

    /* *.color5 - light theme color */
    --header-primary: $color5;
    --brand-experiment: $color5;
    --brand-experiment-360: $color5;
    --brand-experiment-500: $color5;
    --profile-gradient-button-color: $color5;

    --green-360: $color5;

    /* *.color6 - lighter theme color */
    --channels-default: $color6;
    --channel-icon: $color6;

    /* *.color7 - very light, text and foreground */
    --text-normal: $color7;
    --interactive-active: $color7;
}

/* status indicators */
rect[fill="#f23f43"] {{
    fill: $color3 !important;
}}

rect[fill="#f0b232"] {{
    fill: $color4 !important;
}}

rect[fill="#23a55a"] {{
    fill: $color5 !important;
}}
"

echo "$css_content" > "$vesktop" 
echo "$css_content" > "$vencord"

echo "Updated $vencord and $vesktop colors!"
