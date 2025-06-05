document.addEventListener('DOMContentLoaded', function() {
  console.log('Navbar script loaded');
  
  const navbarToggler = document.querySelector('.navbar-toggler');
  const navbarCollapse = document.querySelector('.navbar-collapse');

  if (navbarToggler && navbarCollapse) {
    console.log('Navbar elements found');
    
    navbarToggler.addEventListener('click', function(e) {
      e.preventDefault();
      e.stopPropagation();
      console.log('Toggler clicked');
      this.classList.toggle('active');
      navbarCollapse.classList.toggle('show');
    });

    // Close menu when clicking outside
    document.addEventListener('click', function(event) {
      const isClickInside = navbarToggler.contains(event.target) || navbarCollapse.contains(event.target);
      
      if (!isClickInside && navbarCollapse.classList.contains('show')) {
        console.log('Clicking outside, closing menu');
        navbarToggler.classList.remove('active');
        navbarCollapse.classList.remove('show');
      }
    });

    // Close menu when window is resized above mobile breakpoint
    window.addEventListener('resize', function() {
      if (window.innerWidth > 900 && navbarCollapse.classList.contains('show')) {
        console.log('Window resized above breakpoint, closing menu');
        navbarToggler.classList.remove('active');
        navbarCollapse.classList.remove('show');
      }
    });
  } else {
    console.log('Navbar elements not found');
  }
}); 