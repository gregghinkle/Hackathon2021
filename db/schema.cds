namespace my.flights;

entity FlightDetails {
  key carrid : String(2);
  key connid : Integer;
  cityFrom   : String(20);
  cityTo     : String(20);
  seatsOcc   : Integer;
  airplane   : Association to Airplanes;
}

entity Airplanes {
  key planeType  : String(10);
  planeManu      : String(10);
  planeImage     : LargeBinary @Core.MediaType: 'image/jpeg';
  flights        : Association to many FlightDetails on flights.airplane = $self;
}
