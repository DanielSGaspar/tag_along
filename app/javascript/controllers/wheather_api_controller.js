import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="wheather-api"
export default class extends Controller {
  static targets = ["conditions", "windspeed", "winddirection", "waveheight"]
  static values = {
    apiKey: String,
    lat: Number,
    long: Number
  }
  connect() {
    const lat = this.latValue
    const lng = this.longValue
    const params = 'windSpeed,windDirection,waveHeight';

    fetch(`https://api.stormglass.io/v2/weather/point?lat=${lat}&lng=${lng}&params=${params}`, {
      headers: {
        'Authorization': this.apiKeyValue
      }
    }).then((response) => response.json()).then((jsonData) => {
      const windDirection = jsonData.hours[1].windDirection.noaa;
      const windSpeed = jsonData.hours[1].windSpeed.noaa;
      const waveHeight = jsonData.hours[1].waveHeight.noaa;
      this.winddirectionTarget.innerHTML = windDirection
      this.windspeedTarget.innerHTML = windSpeed
      this.waveheightTarget.innerHTML = waveHeight
    });

      }


}
