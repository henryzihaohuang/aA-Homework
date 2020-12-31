console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax ({
    method:'GET',
    url: 'http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b',
    datatype: 'json',
    success(data){
        console.log("weather!:");
        console.log(data)
    },
    error() {
        console.error("an error ocurred.");
    }

});
// Add another console log here, outside your AJAX request
console.log("hello asynchronaiety")