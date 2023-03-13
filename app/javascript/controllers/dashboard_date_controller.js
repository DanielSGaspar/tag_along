import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard-date"
export default class extends Controller {
  static targets = ["date", "form", "addUrl"]

  connect() {
    console.log("Hello")
    this.dateTarget.addEventListener("input", () => {
      this.formTarget.submit()
    })
  }

}
