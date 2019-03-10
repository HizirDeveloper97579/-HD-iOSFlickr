//
//  BrandsCamersViewController.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 07/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

class BrandsCamersViewController: UIViewController {
//MARK: --- VARIBELS
	public let managerLoadJSON    = LoadJSON<ResultCamersBrands>()
	public var searchBrandsCamers = [Brand]()
	public var brandsCamers       : [Brand]?
	public var searchController   : UISearchController!
//MARK: --- OUTLETS
	@IBOutlet public weak var tableView        : UITableView!
	@IBOutlet public weak var activityIndicator: UIActivityIndicatorView!
//MARK: --- LOAD
	override func viewDidLoad() {
		super.viewDidLoad()
		setupSelfController()
	}
//MARK: --- FUNCTIONS
	private func setupSelfController(){
		parseJSONAndTableViewReload()
		activityIndicator.show(on: true)
		setupSearchController()
	}
//MARK: --- SEGUES
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		switch segue.identifier {
		case ID.SgBrandsCamers_DetailBrandCamer.rawValue:
			guard let brandName = (sender as? Brand)?.name else { return }
			(segue.destination as! DetailCamerViewController).brandName = brandName
		default:
			 break
		}
	}
//MARK: --- END
}
