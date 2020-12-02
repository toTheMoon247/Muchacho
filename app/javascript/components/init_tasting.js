export const initTasting = () => {

 const tastingItems = document.querySelectorAll(".tasting-items");

 const tastingBasket = document.getElementById("tasting-basket");
  console.log(tastingBasket);
  tastingBasket.addEventListener('click', e => {
    console.log(e);
    document.querySelector(".basket-info").insertAdjacentHTML("beforeend",`<div>Tasting Menu</div>`);
    const inputs = document.querySelectorAll(".tasting-items");
    console.log(inputs);

     const input = document.querySelector("#order_dish_id")
     const array = input.value.split(",")
     console.log(array)
     array.push(e.currentTarget.dataset.dishId)
     input.value = array.join(",")

   })};




