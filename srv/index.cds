using from './flights-service';

annotate FlightsService.FlightDetails with @(
    UI: {
        Identification: [ {Value: carrid} ],
        SelectionFields: [ carrid ],
        LineItem: [
            {Value: carrid},
            {Value: connid},
            {Value: cityFrom},
            {Value: cityTo},
            {Value: seatsOcc},
            {Value: airplane.planeType},
            {Value: airplane.planeImage}
        ],
        HeaderInfo: {
            TypeName: 'Flight',
            TypeNamePlural: 'Flights',
            Title: {Value: carrid},
            Description: {Value: carrid}
        }
    }
);

annotate FlightsService.FlightDetails with {
    carrid @title:'Carrier ID';
    connid @title:'Connection #';
    cityFrom @title:'From City';
    cityTo @title:'To City';
    seatsOcc @title:'Seats Occupied';
}

annotate FlightsService.Airplanes with {
    planeType @title:'Airplane Type';
    planeImage @title:'Seat Map';
}