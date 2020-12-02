export const initCards = () => {
 const cards = document.querySelectorAll("#dish_basket");
 cards.forEach(card => {
   card.addEventListener('click', e => {
    const input = document.querySelector("#order_dish_id")
    const array = input.value.split(",")
    array.push(e.currentTarget.dataset.dishId)
    const name = e.currentTarget.dataset.dishName
    document.querySelector(".basket-info").insertAdjacentHTML("beforeend",`<div>${name}</div>`)
    input.value = array.join(",")
   })
 })
};
