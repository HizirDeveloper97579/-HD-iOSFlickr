//
//  ActionCollage.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 08/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit
//  ActionCollage
extension CollageViewController {
	
	@IBAction func chengeImageButton(_ sender: UIButton){
		self.addImageInChangeView(image: self.arrayImageView[sender.tag].image)
	}
	@IBAction func removeChangeViewButton(_ sender: UITapGestureRecognizer){
		extractedFunc()
	}
	@IBAction func rotationButton(_ sender: UIRotationGestureRecognizer){
		sender.rotationGesture()
	}
	@IBAction func pinchButton(_ sender: UIPinchGestureRecognizer){
		sender.pinchGesture()
	}
}
