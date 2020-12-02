export const initTasting = () => {
 const  tastings = document.getElementById("tasting");

 const tastingItems = document.querySelectorAll(".tasting-items")
 const tastingBasket = document.getElementById("tasting-basket")
    tastingBasket.addEventListener('click', e => {
    const name = "Tasting Menu"
    document.querySelector(".basket-info").insertAdjacentHTML("beforeend",`<div>${name}</div>`)
    const inputs = document.querySelectorAll(".tasting-items")


    })
   };
