const likeHeart = () => {
  const heart = document.querySelector(".far");
  if (heart) {
    heart.addEventListener("click", event => {
      event.currentTarget.classList.toggle("heartbound");
    });

  }

}
export {likeHeart};
