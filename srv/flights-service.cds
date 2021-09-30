using my.flights as my from '../db/schema';

service FlightsService {
    entity FlightDetails as projection on my.FlightDetails;
    entity Airplanes as projection on my.Airplanes;
    }