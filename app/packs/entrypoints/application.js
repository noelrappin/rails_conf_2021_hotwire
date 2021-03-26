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
