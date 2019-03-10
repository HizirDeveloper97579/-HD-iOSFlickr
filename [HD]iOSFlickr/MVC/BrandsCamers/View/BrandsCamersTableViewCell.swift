//
//  BrandsCamersTableViewCell.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 07/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

class BrandsCamersTableViewCell: UITableViewCell {
	
	public var brand: Brand? {
		didSet{
			guard let brand = brand else { return  }
			self.textLabel?.text = brand.name
		}
	}
}
