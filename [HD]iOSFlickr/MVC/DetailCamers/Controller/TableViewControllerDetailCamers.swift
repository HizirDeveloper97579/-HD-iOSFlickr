//
//  TableViewControllerDetailCamers.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 08/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

//MARK: --- DataSource
extension  DetailCamerViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		guard let camera = self.arrayCamera else { return 0 }
		return camera.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let cell = tableView.dequeueReusableCell(withIdentifier: DetailCamerTableViewCell.identifire, for: indexPath) as! DetailCamerTableViewCell
		cell.configureCell(camera: arrayCamera[indexPath.row])
	return cell
	}
}
//MARK: --- END



