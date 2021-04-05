//
//  TableViewController.swift
//  FlagViewer
//
//  Created by Paul Richardson on 05/04/2021.
//

import UIKit

class TableViewController: UITableViewController {

	var countries = Country.allCases

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	// MARK: - Table view data source

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return countries.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)

		cell.textLabel?.text = countries[indexPath.row].title

		return cell
	}

	// MARK: - Table view delegate
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if let vc = storyboard?.instantiateViewController(identifier: "FlagViewController") as? FlagViewController {
			vc.country = countries[indexPath.row]
			navigationController?.pushViewController(vc, animated: true)
		}
	}

}
