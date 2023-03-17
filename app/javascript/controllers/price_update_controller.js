import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price-update"
export default class extends Controller {
  static targets = ["seats", "price", "totalPrice"]
  connect() {
    console.log("Hello")
    const re = /\d{1}/
    this.seatsTarget.addEventListener("input", () => {
      const price = this.priceTarget.innerHTML
      const totalPrice = parseInt((price.match(re))[0]) * this.seatsTarget.value
      this.totalPriceTarget.innerHTML = `€${totalPrice}`
    })
  }
}
