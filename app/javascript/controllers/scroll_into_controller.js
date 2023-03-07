import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-into"
export default class extends Controller {
  connect() {

  }

  scrollInto() {
    const element = document.getElementById("info");
    const top = document.getElementById("top");
    if ( window.scrollY < window.innerHeight/2 ){
      element.scrollIntoView({ behavior: 'smooth', block: 'end'});
    } else {
      top.scrollIntoView({ behavior: 'smooth', block: 'end'});
    }
  }
}
