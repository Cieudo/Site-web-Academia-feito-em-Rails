// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

$('.photo').hover(
  function() {
    $(this).addClass('photo-hover');
  },
  function() {
    $(this).removeClass('photo-hover');
  }
);