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
		navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareFlag))
		if let imagetoLoad = country?.rawValue {
			imageView.image = UIImage(named: imagetoLoad)
		}

	}

	@objc func shareFlag() {
		// more code here
	}

}
