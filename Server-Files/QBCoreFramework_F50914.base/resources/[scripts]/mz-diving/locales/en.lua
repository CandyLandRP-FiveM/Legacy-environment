local Translations = {
    error = {
        negative = 'Trying to sell a negative amount?',
        no_items = 'You do not have this amount of the item you are looking to sell',
    },
    success = {
        sold = 'You have sold your materials for a total of $%{value3}',
    },
    info = {
        sell = 'Sell Items',
        sell_pawn = 'Sell items to Master\'s',
        sell_items = 'We are currently paying $%{value} per item!',
        back = '⬅ Go Back',
        max = 'You currently hold %{value} of these.',
        submit = 'Exchange',
        title = 'Master\'s Dive Salvage',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})