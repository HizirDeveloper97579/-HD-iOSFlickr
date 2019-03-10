//
//  URLParameters.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 09/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import Foundation
import Alamofire

struct URLParameters {
	
	static func create(brand: String = "", methodValue: String) -> Parameters {
		
		let parameters = Parameters(dictionaryLiteral:
										(Key.api_key.rawValue,        Value.api_key.rawValue),
										(Key.format.rawValue,         Value.format.rawValue),
										(Key.nojsoncallback.rawValue, Value.nojsoncallback.rawValue),
										(Key.method.rawValue,         methodValue),
										(Key.brand.rawValue,          brand.lowercased()))
		return parameters
	}
	enum Key: String {
		case method
		case api_key
		case brand
		case format
		case nojsoncallback
	}
	enum Value: String {
		case MDListBrands   = "flickr.cameras.getBrands"
		case MDInterestosti = "flickr.interestingness.getList"
		case MDListModels   = "flickr.cameras.getBrandModels"
		case api_key        = "0552d8501af6f87dd01df1c8424998ba"
		case format         = "json"
		case nojsoncallback = "1"
	}
}
