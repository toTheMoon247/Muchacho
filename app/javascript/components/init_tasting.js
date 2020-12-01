export const initTasting = () => {
 const  tastings = document.getElementById("tasting");

 const tastingItems = document.querySelectorAll(".tasting-items")
 console.log(tastingItems)
 const tastingBasket = document.getElementById("tasting-basket")
 console.log(tastingBasket)
    tastingBasket.addEventListener('click', e => {
      console.log(e.currentTarget)
    const name = "Tasting Menu"
    console.log(name)
    document.querySelector(".basket-info").insertAdjacentHTML("beforeend",`<div>${name}</div>`)
    const inputs = document.querySelectorAll(".tasting-items")
    console.log(inputs)

    })
   };
