const eventfakers = document.querySelectorAll('.faux');
eventfakers.forEach(eventfaker => {
  eventfaker.addEventListener('click', (event) => {
    event.currentTarget.innerText = 'INSCRIT';
    event.currentTarget.style.background = "#3A34FF"
  });
}
)
export { eventfakers };
