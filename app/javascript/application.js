// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery"

$(document).on('ready turbo:load', function() {
  $('#dsa').on("click", () => {       
    document.querySelector('#new_user').submit();
  });
});
