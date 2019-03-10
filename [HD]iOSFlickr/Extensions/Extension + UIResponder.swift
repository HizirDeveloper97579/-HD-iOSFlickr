//
//  Extension + UIResponder.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 07/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

extension UIResponder {
	
	//идентификатор для ячеек (tableViewCell/collectionViewCell/UIVewController)
	static var identifire: String {
		get{
			return String(describing: self)
		}
	}
}
