//
//  Extension + UIRotationGestureRecognizer..swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 08/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

extension UIRotationGestureRecognizer {
	
	func rotationGesture(){
		if self.state == .began || self.state == .changed {
			guard let view  = self.view  else { return }
			view.transform = view.transform.rotated(by: self.rotation)
			self.rotation = 0
		}
	}
}
