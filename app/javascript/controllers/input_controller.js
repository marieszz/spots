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
    first.style.backgroundImage = "url('https://res.cloudinary.com/de3m2ax5t/image/upload/v1653506298/Capture_d_e%CC%81cran_2022-05-25_a%CC%80_20.14.46_hjhutz.png')"
    second.style.backgroundImage = "url('https://res.cloudinary.com/de3m2ax5t/image/upload/v1653506298/Capture_d_e%CC%81cran_2022-05-25_a%CC%80_20.14.22_date4u.png')"
    third.style.backgroundImage = "url('https://res.cloudinary.com/de3m2ax5t/image/upload/v1653506298/Capture_d_e%CC%81cran_2022-05-25_a%CC%80_20.15.16_oyax25.png')"
    fourth.style.backgroundImage = "url('https://res.cloudinary.com/de3m2ax5t/image/upload/v1653506298/Capture_d_e%CC%81cran_2022-05-25_a%CC%80_20.16.06_egikny.png')"
    console.log(fourth.value)
  }
}
