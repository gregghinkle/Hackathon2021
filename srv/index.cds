using from './flights-service';

annotate FlightsService.FlightDetails with @(
    UI: {
        SelectionFields: [ carrid, connid ],
        LineItem: [
            {$Type : 'UI.DataField', Value: carrid},
            {$Type : 'UI.DataField', Value: connid},
            {$Type : 'UI.DataField', Value: cityFrom},
            {$Type : 'UI.DataField', Value: cityTo},
            {$Type : 'UI.DataField', Value: seatsOcc},
            {$Type : 'UI.DataField', Value: airplane.planeType},
            {$Type : 'UI.DataField', Value: airplane.planeImage}
        ],
        HeaderInfo: {
            TypeName: 'Flight',
            TypeNamePlural: 'Flights',
            ImageUrl : airplane.planeImage,
            Title: {Label : 'carrid', $Type : 'UI.DataField', Value: carrid},
            Description: {Label : 'connid', $Type : 'UI.DataField', Value: connid}
        }
    }
);

annotate FlightsService.FlightDetails with {
    carrid @title:'Airline ID';
    connid @title:'Connection #';
    cityFrom @title:'From City';
    cityTo @title:'To City';
    seatsOcc @title:'Seats Occupied';
}

annotate FlightsService.Airplanes with {
    planeType @title:'Airplane Type';
    planeImage @title:'Seat Map' @Core.MediaType : 'image/jpeg';
}