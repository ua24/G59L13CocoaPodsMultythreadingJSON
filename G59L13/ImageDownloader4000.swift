//
//  ImageDownloader4000.swift
//  G59L13
//
//  Created by Ivan Vasilevich on 1/18/18.
//  Copyright © 2018 RockSoft. All rights reserved.
//

import UIKit

let kBgQ = DispatchQueue.global(qos: .background)
let kMainQueue = DispatchQueue.main
let imageDownloadedNotification = NSNotification.Name(rawValue: "imageDownloadedNotification")

class ImageDownloader4000: NSObject {
	
//1
//	func downloadImageFromLink(link: String) -> UIImage? {
//		var picture: UIImage?
//		if let url = URL.init(string: link) {
//			if let data = try? Data.init(contentsOf: url) { // tell about "try"
//				print("image size = \(data.count)")
//				picture = UIImage.init(data: data)
//			}
//		}
//		return picture
//
//	}

//	2
//	func downloadImageFromLink(link: String) -> UIImage? {
//		var picture: UIImage?
//		if let url = URL.init(string: link) {
//			kBgQ.async {
//				if let data = try? Data.init(contentsOf: url) { // tell about "try"
//					print("image size = \(data.count)")
//					picture = UIImage.init(data: data)
//				}
//			}
//
//		}
//		return picture
//
//	}
	
	func downloadImageFromLink(link: String) -> Void {
		var picture: UIImage?
		if let url = URL.init(string: link) {
			kBgQ.async {
				if let data = try? Data.init(contentsOf: url) { // tell about "try"
					print("image size = \(data.count)")
					picture = UIImage.init(data: data)
					kMainQueue.async {
						NotificationCenter.default.post(name: imageDownloadedNotification,
														object: self,
														userInfo: ["pic" : picture!])
					}
					
					
				}
			}
			
		}
	}
	
	func downloadImageFromLink(link: String,
							   completion: @escaping ((UIImage?) -> Swift.Void)) {
		var picture: UIImage?
		if let url = URL.init(string: link) {
			kBgQ.async {
				if let data = try? Data.init(contentsOf: url) { // tell about "try"
					print("image size = \(data.count)")
					picture = UIImage.init(data: data)
					kMainQueue.async {
						completion(picture)
					}
					
					
				}
			}
			
		}
	}
	
	
	
	
	
	
	
	
}
