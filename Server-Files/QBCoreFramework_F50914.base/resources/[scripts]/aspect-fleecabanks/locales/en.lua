local Translations = {
    error = { 
        ["no_tools"] = "You don't have the right tools",
        ["no_items"] = "You don't have the right items",
        ["required_police"] = "Not enough police...",
        ["hack_fail"] = "Hacking failed..",
        ["not_enough_rep"] = "Ummm what is this, I need more rep",
        ["pockets_full"] = "Your pockets are full",
    },
    success = {
        ["hack_success"] = "The Hack Worked",
        ["looting"] = "looting",
    },
}

Lang = Locale:new({
phrases = Translations,
warnOnMissing = true})