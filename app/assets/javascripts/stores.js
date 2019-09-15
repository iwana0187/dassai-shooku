$(function(){
    function attrLatLngFromAddress(address){
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode({'address': address}, function(results, status){
            if(status == google.maps.GeocoderStatus.OK) {
                var lat = results[0].geometry.location.lat();
                var lng = results[0].geometry.location.lng();

                document.getElementById("latitude_field").value = lat
                document.getElementById("longitude_field").value = lng
            }
        });
    }

    $('#getgeocode-button').click(function(){
        var address = document.getElementById("address_field").value;
        attrLatLngFromAddress(address);
    });
});
