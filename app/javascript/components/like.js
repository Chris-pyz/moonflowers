const likeHeart = () => {
  const heart = document.querySelector(".fas");
  if (heart) {
    heart.addEventListener("click", event => {
      event.currentTarget.classList.toggle("heartbound");
    });

  }

}
export { likeHeart };
