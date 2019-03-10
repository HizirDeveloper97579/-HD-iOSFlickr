//
//  Extension + UIActidityIndicatorView.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 07/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

extension UIActivityIndicatorView {
	//работа активити индикатора
	func show(on: Bool){
		isHidden = !on
		if !on {
			stopAnimating()
		} else {
			startAnimating()
		}
	}
}
