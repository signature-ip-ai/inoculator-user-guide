// Custom JavaScript to prevent automatic scroll-to-top on navigation
document.addEventListener('DOMContentLoaded', function() {
    // Prevent automatic scrolling when clicking on sidebar navigation links
    const sidebarLinks = document.querySelectorAll('.bd-sidebar a[href]');
    
    sidebarLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            // Only prevent scroll for internal links (same page navigation)
            if (this.getAttribute('href').startsWith('#')) {
                e.preventDefault();
                const targetId = this.getAttribute('href').substring(1);
                const targetElement = document.getElementById(targetId);
                
                if (targetElement) {
                    // Smooth scroll to the target without jumping to top
                    targetElement.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            }
        });
    });

    // Override the default sphinx-book-theme scroll behavior
    // This prevents the automatic scroll-to-top when navigating between pages
    if (typeof window.history !== 'undefined' && window.history.pushState) {
        const originalPushState = window.history.pushState;
        window.history.pushState = function(state, title, url) {
            // Store current scroll position before navigation
            const currentScrollY = window.scrollY;
            
            // Call the original pushState
            originalPushState.call(this, state, title, url);
            
            // Restore scroll position after a short delay
            setTimeout(() => {
                window.scrollTo(0, currentScrollY);
            }, 100);
        };
    }

    // Additional fix for sphinx-book-theme specific behavior
    // Prevent scroll restoration on page load
    if ('scrollRestoration' in window.history) {
        window.history.scrollRestoration = 'manual';
    }
}); 