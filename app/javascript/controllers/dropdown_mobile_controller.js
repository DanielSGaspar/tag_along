import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown-mobile"
export default class extends Controller {
  static targets = ["items"]

  connect() {
    console.log(this.itemsTarget)
  }

  toggle() {
    this.itemsTarget.classList.toggle("d-none")
  }
}
