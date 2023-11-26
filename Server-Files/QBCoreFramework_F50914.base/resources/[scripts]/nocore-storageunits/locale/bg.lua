local Translations = {
    error = {
        ["expiredStorage"] = "Този склад е заключен, защото не е бил платен.",
        ["notEnoughMoney"] = "Нямате достатъчно пари",
        ["wrongPassword"] = "Въведохте грешен пин код",
        ["notifyOwnedStorage"] = "Този склад принадлежи на някой",
    },
    success = {
        ["rentedStorage"] = "Успешно наехте склад за 1 седмица",
        ["changedPassword"] = "Успешно сменихте паролата на склада",
        ["rentCanceled"] = "Успешно отказахте наема",
    },
    target = {
        ["openStorageLabel"] = "Склад",
        ["changePasswordLabel"] = "Смени паролата",
        ["cancelSubscriptionLabel"] = "Откажи наем",
    },
    input = {
        ["currencySymbol"] = "лв",
        ["submitText"] = "Потвърди",
        ["week"] = "седмица",
        ["storage"] = "Склад",
        ["options"] = "Опции",
        ["enterPassword"] = "Парола за склада",
        ["rentStorageLabel"] = "Наем на склад",
        ["chooseTier"] = "Избери ниво",
        ["rentStorageDescription"] = "Складът не приндалежи на никой, желаете ли да го наемете?  \n  Заплащанията стават само чрез банков превод!",
        ["cancelLabel"] = "Откажи наем",
        ["cancelDescription"] = "След отказване на наем всичко ще бъде изнесено и няма да получите никва пари обратно",
        ["passwordLabel"] = "Смяна на паролата",
        ["newPassword"] = "Нова парола",
    },
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})