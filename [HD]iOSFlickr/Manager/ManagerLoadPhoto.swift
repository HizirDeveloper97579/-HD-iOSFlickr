//
//  LoadPhoto.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 07/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit
import Alamofire

class LoadPhoto: SessionTransferData {
	
	func transferData(stringURL: String, parameters: Parameters? = nil , complition: @escaping Clousure<Any>) {
		session(stringURL: stringURL, parameters: parameters) {(data) in
			guard let image = UIImage(data: data) else { return  }
			DispatchQueue.main.async {
				complition(image)
			}
		}
	}
}
