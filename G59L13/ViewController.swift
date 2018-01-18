//
//  ViewController.swift
//  G59L13
//
//  Created by Ivan Vasilevich on 1/18/18.
//  Copyright © 2018 RockSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var imageBox: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		NotificationCenter.default.removeObserver(self)
	}

	@IBAction func loadImage(_ sender: UIBarButtonItem) {
//		let date = Date()
		// Do any additional setup after loading the view, typically from a nib.
		let link = "http://speedhunters-wp-production.s3.amazonaws.com/wp-content/uploads/2017/12/12114915/2017-Porsche-911-Luftauto-002-E-Motion-Engineering-Speedhunters-by-Paddy-McGrath-4.jpg"
		let down = ImageDownloader4000()
		down.downloadImageFromLink(link: link) { (picture) in
			self.imageBox.image = picture
			
		}
		
		
	}
	
}

