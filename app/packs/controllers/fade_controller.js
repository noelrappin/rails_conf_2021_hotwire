import { Controller } from "stimulus"

export default class FadeController extends Controller {
  static classes = ["fadeIn", "fadeOut"]
  static targets = ["elementToChange"]
  static values = { status: Boolean, clean: Boolean }

  fade() {
    this.statusValue = !this.statusValue
    this.cleanValue = false
  }

  animationend() {
    this.toggleClass("max-h-0", !this.statusValue)
  }

  animationstart() {
    this.toggleClass("max-h-0", false)
  }

  statusValueChanged() {
    if (this.cleanValue) {
      return
    }
    this.toggleClass("animate__animated", true)
    this.toggleClass(`animate__${this.fadeInClass}`, this.statusValue)
    this.toggleClass(`animate__${this.fadeOutClass}`, !this.statusValue)
  }

  toggleClass(cssClass, state) {
    this.elementToChangeTarget.classList.toggle(cssClass, state)
  }
}
