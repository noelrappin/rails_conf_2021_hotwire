import { Controller } from "stimulus"

export default class FlipController extends Controller {
  static classes = ["true", "false"]
  static targets = ["elementToChange"]
  static values = { status: Boolean }

  toggle() {
    this.statusValue = !this.statusValue
  }

  statusValueChanged() {
    this.elementToChangeTarget.classList.toggle(
      this.trueClass,
      this.statusValue
    )
    this.elementToChangeTarget.classList.toggle(
      this.falseClass,
      !this.statusValue
    )
  }
}
