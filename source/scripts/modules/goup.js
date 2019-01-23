import { smothscroll } from '../libraries/smoothscroll'
// Button go up
export const goups = () => {
  // smothscroll
  let scrollV = window.scrollY
  const goup = document.getElementById('goup')
  document.addEventListener('scroll', function () {
    scrollV = window.scrollY
    if (scrollV > 120) {
      goup.classList.remove('fade-out')
      goup.classList.add('fade-in')
    } else {
      goup.classList.remove('fade-in')
      goup.classList.add('fade-out')
    }
  })
  goup.addEventListener('click', e => {
    smothscroll.animateScroll(0)
  })
}
