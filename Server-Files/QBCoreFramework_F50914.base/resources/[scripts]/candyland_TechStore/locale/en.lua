local Translations = {
    error = {
        fingerprints = 'You left a fingerprint on the shelf',
        minimum_police = 'Minimum of %{value} police needed',
        wrong_weapon = 'Your weapon is not strong enough..',
        to_much = 'You have to much in your pocket'
    },
    success = {},
    info = {
        progressbar = 'Picking the shelf',
    },
    general = {
        target_label = 'Pick the shelf',
        drawtextui_grab = '[E] Pick the shelf',
        drawtextui_broken = 'The shelf has been stolen'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
