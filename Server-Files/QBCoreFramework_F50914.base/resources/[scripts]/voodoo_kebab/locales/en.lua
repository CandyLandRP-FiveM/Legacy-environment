local Translations = {
    error = {
        ["no_enough"] = "You Do NOT Have Enough Ingredients",
        ["removed"] = "Removed from inventory ",
        ["added"] = "You cooked something ",
    },
 
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})