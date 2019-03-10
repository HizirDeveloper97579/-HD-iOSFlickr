//
//  FunctionBrandsCamers.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 10/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

extension BrandsCamersViewController {
	
	public func parseJSONAndTableViewReload(){
		let methodValue = URLParameters.Value.MDListBrands.rawValue
		let stringURL   = API.URLFlickr.rawValue
		let parameters  = URLParameters.create(methodValue: methodValue)
		self.managerLoadJSON.transferData(stringURL: stringURL, parameters: parameters) { [unowned self] (brands) in
			self.brandsCamers = (brands as? ResultCamersBrands)?.brands?.brand
			self.activityIndicator.show(on: false)
			self.tableView.reloadData()
		}
	}
}
