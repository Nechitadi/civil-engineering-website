$(document).on("turbolinks:load",function(){
  $("#main-navbar a").on('click', function(event) {
    if (this.hash !== "") {
        event.preventDefault();
        var hash = this.hash;
        $('html, body').animate({
            scrollTop: $(hash).offset().top
            }, 369, function(){
            window.location.hash = hash;
        });
    }
  });
});
