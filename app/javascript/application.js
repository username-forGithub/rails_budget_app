// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery"

$(document).on('ready turbo:load', function() {
  $('#nav-btn').on("click", () => {       
    document.querySelector('#new_user').submit();
  });

  setTimeout(function(){
    $('.notice-wrapper').slideUp(500);
  }, 4000);

  if($('#typed')) {
    var typed = new Typed('#typed',{
      stringsElement: '#typed-strings',
      startDelay: 1000,
      backSpeed: 40,
      typeSpeed: 40,
      fadeOut: true,
      fadeOutDelay: 200,
      loop:true,
    })
  }
});
