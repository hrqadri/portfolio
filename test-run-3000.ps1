playwright-cli open --device="iPhone 14" http://localhost:3000/
playwright-cli --raw eval "document.documentElement.scrollWidth === window.innerWidth"
playwright-cli click "article.masonry-item >> nth=0"
playwright-cli --raw eval "new Promise(r => setTimeout(r, 400))"
playwright-cli --raw eval "getComputedStyle(document.getElementById('lightbox')).opacity === '1'"
playwright-cli --raw eval "document.body.style.overflow === 'hidden'"
playwright-cli press Escape
playwright-cli --raw eval "new Promise(r => setTimeout(r, 400))"
playwright-cli --raw eval "document.activeElement === document.querySelectorAll('article.masonry-item')[0]"
playwright-cli screenshot --filename=final-preview.png
playwright-cli close
