local Translations = {
    error = {
        not_enough_money = 'You do not have enough money!',
        cannot_return = 'You cannot return this...',
        not_found_model = 'Error: Model not found'
    },
    success = {
        thanks_return = 'Thanks for returning the rental!'
    },
    menu = {
        view_bicycles = 'View bicycles for rent',
        bicycles_rent = 'Bicycles for Rent',
        to_rent = 'To Rent: $%{cost}',
        cancel = 'Cancel',
        rent_confirm = 'Is this the bicycle you want to rent?',
        no_back = 'No, take me back!',
        yes_please = 'Yes, please!',
        return_confirm = 'Do you want to return this bicycle?',
    },
    button = {
        view_bicycles = '~g~E~w~ - View Bicycles for Rent',
        return_bicycle = '~g~E~w~ - Return Bicycle'
    },
    other = {
        plate_text = 'RENT ME',
        purchase_desc = 'Bike rental',
        return_desc = 'Bike return'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})