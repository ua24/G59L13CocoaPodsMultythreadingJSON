//
//  ViewController.swift
//  G59L13
//
//  Created by Ivan Vasilevich on 1/18/18.
//  Copyright © 2018 RockSoft. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

	@IBOutlet weak var imageBox: UIImageView!
	

	@IBAction func loadImage(_ sender: UIBarButtonItem) {
//		let date = Date()
		// Do any additional setup after loading the view, typically from a nib.
		let link = "http://speedhunters-wp-production.s3.amazonaws.com/wp-content/uploads/2017/12/12114915/2017-Porsche-911-Luftauto-002-E-Motion-Engineering-Speedhunters-by-Paddy-McGrath-4.jpg"
		imageBox.sd_setAnimationImages(with: [URL.init(string: link)!])
		
		
	}
	
	@IBAction func getForecast(_ sender: UIBarButtonItem) {
	
		ImageDownloader4000().sendForecastRequest()
	}
	
	
}

