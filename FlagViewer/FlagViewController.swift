//
//  FlagViewController.swift
//  FlagViewer
//
//  Created by Paul Richardson on 05/04/2021.
//

import UIKit

class FlagViewController: UIViewController {

	var country: Country?

	@IBOutlet var imageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()

		imageView.layer.borderWidth = 0.5
		imageView.layer.borderColor = UIColor.lightGray.cgColor
		navigationItem.title = country?.title
		if let imagetoLoad = country?.rawValue {
			imageView.image = UIImage(named: imagetoLoad)
		}

	}


	/*
	// MARK: - Navigation

	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	// Get the new view controller using segue.destination.
	// Pass the selected object to the new view controller.
	}
	*/

}
