playwright-cli open --device="iPhone 14" http://localhost:8080/
playwright-cli --raw eval "document.documentElement.scrollWidth <= window.innerWidth"
playwright-cli click "article.masonry-item >> nth=0"
# Wait a bit for transition
playwright-cli --raw eval "new Promise(r => setTimeout(r, 300))"
playwright-cli --raw eval "document.body.style.overflow === 'hidden'"
playwright-cli --raw eval "getComputedStyle(document.getElementById('lightbox')).opacity === '1'"
playwright-cli screenshot --filename=mobile-audit.png
playwright-cli close
