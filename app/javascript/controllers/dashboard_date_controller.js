import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard-date"
export default class extends Controller {
  static targets = ["date", "form"]
  static values = {
    popular: Array,
    favorites: Array,
    locations: Array
  }

  connect() {
    console.log("Hello")
    this.dateTarget.addEventListener("input", (event) => {
      this.formTarget.submit()
    })
  }

}
