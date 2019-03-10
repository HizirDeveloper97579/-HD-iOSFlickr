//
//  Extension + UIPinchGestureRecognizer.swift
//  
//
//  Created by -=HIZIR=- on 08/03/2019.
//

import UIKit

extension UIPinchGestureRecognizer {
	
	func pinchGesture(){
		if self.state == .began || self.state == .changed {
			guard let view  = self.view  else { return }
			view.transform = view.transform.scaledBy(x: self.scale, y: self.scale)
			self.scale = 1.0
		}
	}
}
