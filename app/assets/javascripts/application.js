// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .






 window.addEventListener('DOMContentLoaded', function ()
    {
        var hoursLabel = document.getElementById("hours");
        var minutesLabel = document.getElementById("minutes");
        var secondsLabel = document.getElementById("seconds");
        var totalSec = document.getElementById("hid").innerHTML;
        var totalSeconds = parseInt(totalSec);

        // var totalSeconds = parseInt(<%= Time.now - @shift.created_at %>);


        setInterval(setTime, 1000);

        function setTime()
        {
            ++totalSeconds;
            secondsLabel.innerHTML = pad(totalSeconds%60);
            minutesLabel.innerHTML = pad(parseInt(totalSeconds/60)%60);
            hoursLabel.innerHTML = pad(parseInt(totalSeconds/3600));
        }

        function pad(val)
        {
            var valString = val + "";
            if(valString.length < 2)
            {
                return "0" + valString;
            }
            else
            {
                return valString;
            }
        }
    }, false);





 // Lat Long

var latitude = null;
function lat()
{
if (navigator.geolocation)
{
    navigator.geolocation.getCurrentPosition(
        function(position){
              latitude = position.coords.latitude;
        });
}
}

var longitude = null;
function lon()
{
if (navigator.geolocation)
{
    navigator.geolocation.getCurrentPosition(
        function(position){
            longitude = position.coords.longitude;
        });
    }
}

window.addEventListener('DOMContentLoaded', function ()
    {
        lat();
        lon();
        latitude;
        longitude;
    }, false);



  window.addEventListener("click", function ()
    {   var lati =  document.getElementById("lat");
        var long = document.getElementById("long");
        lati.value = latitude;
        long.value = longitude;
    }, false);


