local Translations = {
    error = {
        ["expiredStorage"] = "This storage is locked because it has not been paid.",
        ["notEnoughMoney"] = "Not Enough Money",
        ["wrongPassword"] = "Wrong Password",
        ["notifyOwnedStorage"] = "This storage belongs to someone else.",
    },
    success = {
        ["rentedStorage"] = "You have successfully rented a storage for 1 week.",
        ["changedPassword"] = "You have successfully changed the storage password.",
        ["rentCanceled"] = "You have successfully cancelled the rent",
    },
    target = {
        ["openStorageLabel"] = "Storage",
        ["changePasswordLabel"] = "Change Password",
        ["cancelSubscriptionLabel"] = "Cancel Rent",
    },
    input = {
        ["currencySymbol"] = "$",
        ["submitText"] = "Submit",
        ["week"] = "week",
        ["storage"] = "Storage",
        ["options"] = "Options",
        ["enterPassword"] = "Password",
        ["rentStorageLabel"] = "Rent a storage",
        ["chooseTier"] = "Choose Tier",
        ["rentStorageDescription"] = "The storage does not belong to anyone, would you like to rent it?  \n  Payments are by bank transfer only!",
        ["cancelLabel"] = "Cancel Rent",
        ["cancelDescription"] = "Upon cancellation of the rental, everything will be collected from storage and you will not receive any money back.",
        ["passwordLabel"] = "Change the password",
        ["newPassword"] = "New Password",
    },
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
