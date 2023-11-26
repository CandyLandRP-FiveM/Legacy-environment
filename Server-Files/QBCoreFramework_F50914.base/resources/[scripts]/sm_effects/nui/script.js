var player = null;

window.addEventListener('message', function(event) {
    var item = event.data;
    if (item.action == 'enableImageOverlay') {
        var link = item.imageOverlayLink;
        var opac = item.imageOverlayOpacity;

        $("#overlay_img").attr("src", link);
        $("#overlay_img").css("opacity", opac);

        $("#overlay_img").fadeIn(5000);
    }
    if (item.action == 'enableVideoOverlay') {
        var link = item.videoOverlayId;
        var opac = item.videoOverlayOpacity;

        //$("#overlay_vid").attr("src", link);
        $("#overlay_vid").css("opacity", opac);

        if (player) {
            // Load the current video again to effectively reset the player
            player.loadVideoById(link);
        }else{
            player = new YT.Player("overlay_vid", {
                videoId: link,
                playerVars: {
                  autoplay: 1,
                  controls: 0,
                  showinfo: 0,
                  modestbranding: 0,
                  rel: 0,
                  mute: 0,
                  fs: 0,
                  iv_load_policy: 3,
                  loop: 1,
                }
            });
        }

        $("#overlay_vid").attr("title", "");

        $("#overlay_vid").fadeIn(5000);
    }
    if (item.action == 'disableImageOverlay') {
        $('#overlay_img').fadeOut(2500)
    }
    if (item.action == 'disableVideoOverlay') {
        $('#overlay_vid').fadeOut(2500)
        .promise().done(function() {
            setTimeout(
                function() 
                {
                    player.stopVideo();
                }, 1000);
        });
    }
});