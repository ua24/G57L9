//
//  ViewController.swift
//  G57L9
//
//  Created by Ivan Vasilevich on 10/24/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet weak var tableView: UITableView!
	var array = "Created by Ivan Vasilevich on 10/24/17.".components(separatedBy: " ")
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		tableView.dataSource = self
		tableView.delegate = self
	}
	
	// MARK: - TableViewDataSource
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return array.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text = array[indexPath.row]
		cell.detailTextLabel?.text = (indexPath.row + 1).description
		let odd = indexPath.row % 2 == 0
		cell.imageView?.image = UIImage(named: odd ? "domo" : "ddasdadsdasd")
		return cell
	}
	
	// MARK: - TableViewDelegate
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print(indexPath)
	}

}

