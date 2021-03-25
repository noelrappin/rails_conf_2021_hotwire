import "@hotwired/turbo-rails"
import "channels"
import "core-js/stable"
import "regenerator-runtime/runtime"
import * as ActiveStorage from "@rails/activestorage"
import Rails from "@rails/ujs"
import "controllers"

Rails.start()
ActiveStorage.start()

const images = require.context("../images", true)
const imagePath = (name) => images(name, true)

document.addEventListener("turbo:before-stream-render", (event) => {
  console.log(event.target.action)
  if (event.target.action === "remove") {
    const targetFrame = document.getElementById(event.target.target)
    if (targetFrame.dataset.animateOut) {
      event.preventDefault()
      const elementBeingAnimated = targetFrame
      elementBeingAnimated.classList.add(targetFrame.dataset.animateOut)
      elementBeingAnimated.addEventListener("animationend", () => {
        targetFrame.remove()
      })
    }
  }
})
