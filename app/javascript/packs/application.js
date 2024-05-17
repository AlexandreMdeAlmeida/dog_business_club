// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'bootstrap/dist/js/bootstrap.bundle';

// Initialize Bootstrap
document.addEventListener("turbo:load", () => {
  // Initialize Bootstrap dropdowns
  var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'))
  var dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
    return new bootstrap.Dropdown(dropdownToggleEl)
  })

  // Navbar toggler for mobile view
  $('.navbar-toggler').click(function() {
    $('.navbar-collapse').toggleClass('show');
  });
});
