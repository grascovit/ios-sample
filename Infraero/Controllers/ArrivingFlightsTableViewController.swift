import UIKit

class ArrivingFlightsTableViewController: UITableViewController {
    let latam = Airline(name: "LATAM")
    let gol = Airline(name: "GOL")
    var flights = [Flight]()

    override func viewDidLoad() {
        flights.append(Flight(number: "LAT1294", leavingAt: "08:30", arrivingAt: "10:50", from: "São Paulo", to: "Goiânia", airline: latam))
        flights.append(Flight(number: "GOL4921", leavingAt: "09:45", arrivingAt: "12:50", from: "Rio de Janeiro", to: "Goiânia", airline: gol))
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flights.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArrivingFlightCell", for: indexPath) as! FlightTableViewCell

        let flight = flights[indexPath.row]
        cell.airlineNameLabel.text = flight.airline.name
        cell.flightTimeLabel.text = flight.arrivingAt
        cell.fromLabel.text = flight.from
        cell.toLabel.text = flight.to
        cell.flightNumberLabel.text = flight.number

        return cell
    }
}
