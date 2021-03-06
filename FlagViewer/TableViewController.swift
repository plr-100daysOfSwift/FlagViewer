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

		let country = countries[indexPath.row]
		cell.textLabel?.text = country.title
		cell.imageView?.image = UIImage(named: country.rawValue)
		cell.imageView?.layer.borderWidth = 0.5
		cell.imageView?.layer.borderColor = UIColor.lightGray.cgColor

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
