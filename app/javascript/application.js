// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require bootstrap

// navbar js
$(document).ready(function() {
  $('.navbar-toggler').click(function() {
    $('.navbar-collapse').toggleClass('show');
  });
});
