//
//  DetailBrandCamerViewController.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 08/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

class DetailCamerViewController: UIViewController {
	
//MARK: --- VARIBELS
	public var arrayCamera     : [Camera]!
	public var brandName       = String()
	public let managerLoadJSON = LoadJSON<ResultsDetailBrandCamer>()
//MARK: --- OUTLETS
	@IBOutlet weak var tableView: UITableView!
//MARK: --- LOAD
	override func viewDidLoad() {
		super.viewDidLoad()
		setupSelfController()
	}
//MARK: --- FUNCTIONS
	private func setupSelfController(){
		self.loadJSONCamers(barand: brandName)
	}
}
