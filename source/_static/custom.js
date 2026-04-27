/* ============================================================
   SignatureIP — Inoculator User Guide
   custom.js  |  Scroll-to-top + permalink copy helper
   ============================================================ */

document.addEventListener('DOMContentLoaded', () => {

  /* ── 1. Scroll-to-top button ─────────────────────────────── */
  const btn = document.createElement('button');
  btn.id = 'scroll-to-top';
  btn.setAttribute('aria-label', 'Scroll to top');
  btn.setAttribute('title', 'Back to top');
  btn.innerHTML = '↑';
  document.body.appendChild(btn);

  const toggleBtn = () => {
    if (window.scrollY > 300) {
      btn.classList.add('visible');
    } else {
      btn.classList.remove('visible');
    }
  };

  window.addEventListener('scroll', toggleBtn, { passive: true });
  btn.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));


  /* ── 2. Permalink copy-to-clipboard ──────────────────────── */
  /*  Clicking any section heading anchor copies the full URL   */
  document.querySelectorAll('a.headerlink').forEach(anchor => {
    anchor.addEventListener('click', (e) => {
      e.preventDefault();

      const url = anchor.href;

      if (navigator.clipboard) {
        navigator.clipboard.writeText(url).then(() => showToast('Link copied!')).catch(() => fallbackCopy(url));
      } else {
        fallbackCopy(url);
      }

      // Still navigate the browser so the URL bar updates
      history.pushState(null, '', anchor.getAttribute('href'));
    });
  });


  /* ── 3. Toast notification ───────────────────────────────── */
  function showToast(message) {
    const existing = document.getElementById('sig-toast');
    if (existing) existing.remove();

    const toast = document.createElement('div');
    toast.id = 'sig-toast';
    toast.textContent = message;

    Object.assign(toast.style, {
      position:     'fixed',
      bottom:       '5rem',
      right:        '2rem',
      background:   '#0f1923',
      color:        '#fff',
      padding:      '8px 16px',
      borderRadius: '6px',
      fontSize:     '0.82rem',
      fontFamily:   'DM Sans, system-ui, sans-serif',
      fontWeight:   '500',
      boxShadow:    '0 4px 12px rgba(0,0,0,0.25)',
      opacity:      '0',
      transition:   'opacity 0.2s',
      zIndex:       '1000',
      pointerEvents:'none',
    });

    document.body.appendChild(toast);
    requestAnimationFrame(() => { toast.style.opacity = '1'; });

    setTimeout(() => {
      toast.style.opacity = '0';
      setTimeout(() => toast.remove(), 250);
    }, 2000);
  }


  /* ── 4. Fallback copy (older browsers) ───────────────────── */
  function fallbackCopy(text) {
    const ta = document.createElement('textarea');
    ta.value = text;
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.select();
    try {
      document.execCommand('copy');
      showToast('Link copied!');
    } catch (_) {
      showToast('Copy failed — try manually.');
    }
    document.body.removeChild(ta);
  }

});
