import * as $ from "jquery";

export function apiClose() {
    $.post("https://rcore_tuning/close");
}

export function apiOrder() {
    $.post("https://rcore_tuning/order");
}

export function apiConfirmSelection() {
    $.post("https://rcore_tuning/confirmSelection");
}

export function apiCancelSelection() {
    $.post("https://rcore_tuning/cancelSelection");
}

export function apiUpDownSound() {
    $.post("https://rcore_tuning/upDownSound");
}

export function previewTuning(modName, modType, index) {
    $.post(
        "https://rcore_tuning/previewTuning",
        JSON.stringify({
            modName: modName,
            modType: modType,
            index: index,
        })
    );
}

export function unsetPreview() {
    $.post("https://rcore_tuning/unsetPreview");
}

export function mousePan(x, y) {
    $.post(
        "https://rcore_tuning/mousePan",
        JSON.stringify({
            x: x,
            y: y,
        })
    );
}
export function startMousePan() {
    $.post(
        "https://rcore_tuning/startMousePan"
    );
}


export function apiChangeCamera() {
    $.post("https://rcore_tuning/changeCamera");
}

export function apiSoundHorn() {
    $.post("https://rcore_tuning/soundHorn");
}

export function apiStopHorn() {
    $.post("https://rcore_tuning/stopHorn");
}

export function apiClickLights() {
    $.post("https://rcore_tuning/clickLights");
}