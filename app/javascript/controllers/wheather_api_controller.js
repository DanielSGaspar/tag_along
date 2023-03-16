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

    const translateWindDirection = (direction) => {
      if ((direction > 337.5 && direction <= 360) || (direction > 0 && direction < 22.5)) {
        return "N";
      }

      if (direction > 22.5 && direction <= 67.5) {
        return "NE"
      }

      if (direction > 67.5 && direction <= 112.5) {
        return "E"
      }

      if (direction > 112.5 && direction <= 157.5) {
        return "SE"
      }

      if (direction > 157.5 && direction <= 202.5) {
        return "S"
      }

      if (direction > 202.5 && direction <= 247.5) {
        return "SW"
      }

      if (direction > 247.5 && direction <= 292.5) {
        return "W"
      }

      if (direction > 292.5 && direction <= 337.5) {
        return "NW"
      }
    }

    fetch(`https://api.stormglass.io/v2/weather/point?lat=${lat}&lng=${lng}&params=${params}`, {
      headers: {
        'Authorization': this.apiKeyValue
      }
    }).then((response) => response.json()).then((jsonData) => {
      const windDirection = jsonData.hours[1].windDirection.noaa;
      const windSpeed = jsonData.hours[1].windSpeed.noaa;
      const waveHeight = jsonData.hours[1].waveHeight.noaa;
      this.winddirectionTarget.innerHTML = translateWindDirection(windDirection)
      this.windspeedTarget.innerHTML = windSpeed
      this.waveheightTarget.innerHTML = waveHeight
    });

      }


}
