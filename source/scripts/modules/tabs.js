export const edTabs = () => {
  const container = document.querySelector('.edui-tabs')
  const tabsContainer = container.querySelector('.tabs')
  const panelsContainer = container.querySelector('.panels')
  const tabs = [...tabsContainer.querySelectorAll('.tab')]
  const panels = [ ...panelsContainer.querySelectorAll('.panel') ]

  tabs[0].classList.add('active')
  panels[0].classList.add('active')

  tabsContainer.addEventListener('click', e => {
    const t = e.target
    let i = tabs.indexOf(t)
    if (t.classList.contains('tab') || t.tagName === 'IMG') {
      tabs.map(tab => tab.classList.remove('active'))
      panels.map(panel => panel.classList.remove('active'))
      if (t.tagName === 'IMG') {
        t.parentElement.classList.add('active')
        i = tabs.indexOf(t.parentElement)
      } else {
        t.classList.add('active')
      }
      panels[i].classList.add('active')
    }
  })
}
