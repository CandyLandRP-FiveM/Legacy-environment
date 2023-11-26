$(function () {
    function display(bool) {
        if (bool) {
            $(".container").fadeIn(400);
        } else {
            $(".container").fadeOut(400);
        }
    }
    function displayPreview(bool) {
        if (bool) {
            $(".preview").fadeIn(400);
        } else {
            $(".preview").fadeOut(400);
        }
    }

    function StringContains(string, substring) {
        var results = string.includes(substring)
        if (results) {
            return true
        } else {
            return false
        }
    }

    $(".container").hide()
    $(".preview").hide()
    $("#error_link").hide()

    var slider = document.getElementById("myRange");
    var output = document.getElementById("demo");

    window.addEventListener('message', (event) => {
        var item = event.data
        if (item.type === 'ui') {
            if (item.status === true) {
                display(true)
            } else {
                display(false)
            }
        }
        if (item.type === 'preview') {
            if (item.status === true) {
                displayPreview(true)
            } else {
                displayPreview(false)
            }
        }
    });

    // if the person uses the escape key, it will exit the resource
    document.onkeyup = function (data) {
        if (data.which == 27) {
            display(false)
            displayPreview(false)
            $.post(`https://${GetParentResourceName()}/exit`, JSON.stringify({}));
            slider.value = 0
            document.getElementById("inputField").value = "";
            return
        }
    };
    $("#close").click(function () {
        display(false)
        $.post(`https://${GetParentResourceName()}/exit`, JSON.stringify({}));

        document.getElementById("inputField").value = "";

        return
    })
    $("#yes").click(function () {
        displayPreview(false)
        $.post(`https://${GetParentResourceName()}/confirm`, JSON.stringify({}));
        slider.value = 0
        return
    })
    $("#no").click(function () {
        displayPreview(false)
        $.post(`https://${GetParentResourceName()}/exit`, JSON.stringify({}));
        slider.value = 0
        return
    })
    //when the user clicks on the submit button, it will run
    $("#submit").click(function () {
        let inputValue = $("#inputField").val()
        if (StringContains(inputValue, 'http') === false) {
            $.post(`https://${GetParentResourceName()}/fileMain`, JSON.stringify({
                text: inputValue,
            }));
            document.getElementById("inputField").value = "";
            return
        }

        $("<img/>").attr('src', inputValue)
            .on('load', function() {
                var width = this.width;
                var height = this.height;

                $.post(`https://${GetParentResourceName()}/main`, JSON.stringify({
                    text: inputValue,
                    width: width,
                    height: height,
                }));
            });
        // if there are no errors from above, we can send the data back to the original callback and handle it from there
        document.getElementById("inputField").value = "";
        slider.value = 0
        output.innerHTML = 0
        displayPreview(true)

        return;
    })

    output.innerHTML = slider.value;

    slider.oninput = function() {
        output.innerHTML = this.value;
        $.post(`https://${GetParentResourceName()}/slider`, JSON.stringify({
            number: this.value,
        }));
    }

})