document.addEventListener("DOMContentLoaded", function() {
    var sidebar = document.querySelector('.sphinxsidebar');
    if (!sidebar) return;

    // Restore scroll position
    var savedScroll = sessionStorage.getItem('sidebar-scroll');
    if (savedScroll !== null) {
        sidebar.scrollTop = parseInt(savedScroll, 10);
    }

    // Save scroll position before leaving the page
    window.addEventListener('beforeunload', () => {
        sessionStorage.setItem('sidebar-scroll', sidebar.scrollTop);
    });
});
