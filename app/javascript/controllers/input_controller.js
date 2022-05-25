import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input_price" ]
  connect() {
    let inputs = []
    let first, second, third, fourth = []

    console.log('hey')
    inputs = document.getElementsByClassName('form-check-input')
    first = inputs.item(4)
    second = inputs.item(5)
    third = inputs.item(6)
    fourth = inputs.item(7);
    first.style.backgroundImage = "url('https://res.cloudinary.com/de3m2ax5t/image/upload/v1653481179/Sans_titre_4_1_flvhco.png')"
    second.style.backgroundImage = "url('https://res.cloudinary.com/de3m2ax5t/image/upload/v1653481179/Sans_titre_5_1_cbwvp9.png')"
    third.style.backgroundImage = "url('https://res.cloudinary.com/de3m2ax5t/image/upload/v1653481179/Sans_titre_6_1_c0wl1y.png')"
    fourth.style.backgroundImage = "url('https://res.cloudinary.com/de3m2ax5t/image/upload/v1653481179/Sans_titre_7_1_ihjuzk.png')"
    console.log(fourth.value)
  }
}
