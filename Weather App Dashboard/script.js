const url = 'https://api.openweathermap.org/data/2.5/weather';
const apiKey = 'f00c38e0279b7bc85480c3fe775d518c';

$(document).ready(function () {
    $('#search-button').on('click', function() {
        const cityName = $('#city-input').val().trim();
        if (cityName) {
            weatherFn(cityName);
        } else {
            alert('Please enter a city name.');
        }
    });
    // Optionally load weather for a default city on page load
    weatherFn('Hyderabad');
});

async function weatherFn(cName) {
    const temp = `${url}?q=${cName}&appid=${apiKey}&units=metric`;
    try {
        const res = await fetch(temp);
        const data = await res.json();
        if (res.ok) {
            weatherShowFn(data);
            await fetchUVIndex(data.coord.lat, data.coord.lon);
        } else {
            alert('City not found. Please try again.');
        }
    } catch (error) {
        console.error('Error fetching weather data:', error);
    }
}

function weatherShowFn(data) {
    $('#city-name').text(data.name);
    
    // Calculate local time
    const timezoneOffset = data.timezone; // offset in seconds
    const localTime = moment.utc().add(timezoneOffset, 'seconds').format('MMMM Do YYYY, h:mm:ss a');

    $('#date').text(localTime);
    $('#temperature').html(`${Math.round(data.main.temp)}°C`); // Rounded temperature
    $('#description').text(data.weather[0].description);
    $('#wind-speed').html(`Wind Speed: ${data.wind.speed} m/s`);
    $('#weather-icon').attr('src', `http://openweathermap.org/img/wn/${data.weather[0].icon}@2x.png`);
    $('#weather-info').fadeIn();
}

async function fetchUVIndex(lat, lon) {
    const uvUrl = `https://api.openweathermap.org/data/2.5/uvi?lat=${lat}&lon=${lon}&appid=${apiKey}`;
    try {
        const res = await fetch(uvUrl);
        const uvData = await res.json();
        if (res.ok) {
            $('#uv-index').html(`UV Index: ${uvData.value}`);
        } else {
            console.error('Error fetching UV index');
        }
    } catch (error) {
        console.error('Error fetching UV index:', error);
    }
}
