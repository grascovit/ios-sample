import UIKit

class DepartingFlightsTableViewController: UITableViewController {
    let azul = Airline(name: "Azul")
    let tap = Airline(name: "TAP")
    var flights = [Flight]()

    override func viewDidLoad() {
        flights.append(Flight(number: "AZU9112", leavingAt: "11:30", arrivingAt: "14:30", from: "Goiânia", to: "Recife", airline: azul))
        flights.append(Flight(number: "TP1933", leavingAt: "13:10", arrivingAt: "22:50", from: "Goiânia", to: "Lisboa", airline: tap))
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flights.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DepartingFlightCell", for: indexPath) as! FlightTableViewCell

        let flight = flights[indexPath.row]
        cell.airlineNameLabel?.text = flight.airline.name
        cell.flightTimeLabel?.text = flight.leavingAt
        cell.fromLabel?.text = flight.from
        cell.toLabel?.text = flight.to
        cell.flightNumberLabel?.text = flight.number
        
        return cell
    }
}
