//
//  ViewController.swift
//  RxExample
//
//  Created by Johnny Nguyen on 2017-09-29.
//  Copyright © 2017 St Clair College. All rights reserved.
//

import UIKit
import SnapKit

public class ViewController: UIViewController {
	
	// MARK : - Variables
	// here we'll use an example, We'll use the nameLabel and set some stuff up
	// the ! indicates that we're going to be for sure adding it, which is the view load
	public var nameLabel: UILabel!
	public var randomButton: UIButton!
	
	public convenience init() {
		self.init(nibName: nil, bundle: nil)
	}
	
	public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
	}
	
	public required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	public override func viewDidLoad() {
		super.viewDidLoad()
		prepareView()
	}
	
	private func prepareView() {
		prepareNameLabel()
		prepareRandomButton()
	}
	
	private func prepareNameLabel() {
		// set up label properties
		nameLabel = UILabel()
		nameLabel.text = "Johnny Nguyen"
		nameLabel.textColor = .black
		
		view.addSubview(nameLabel)
		
		// setup constraints (here's the beauty of snapkit)
		// let's set it at the center
		nameLabel.snp.makeConstraints { make in
			make.center.equalTo(view)
		}
	}
	
	private func prepareRandomButton() {
		// set up button
		randomButton = UIButton(type: .system)
		randomButton.setTitle("Click me!", for: .normal)
		
		// add the view button
		view.addSubview(randomButton)
		
		// we'll set the constraints below
		randomButton.snp.makeConstraints { make in
			make.centerX.equalTo(view)
			make.top.equalTo(nameLabel.snp.bottom)
		}
		
		// let's also add an event too
		randomButton.addTarget(self, action: #selector(tapButton(sender:)), for: .touchUpInside)
	}
	
	// in swift 4, @obj-c is required
	public func tapButton(sender: UIButton) {
		let alert = UIAlertController(title: "Click Button", message: "I've been clicked", preferredStyle: .alert)
		
		let okButton = UIAlertAction(title: "Ok", style: .default, handler: { [weak self] finished in
			self?.dismiss(animated: true, completion: nil)
		})
		
		alert.addAction(okButton)
		present(alert, animated: true, completion: nil)
	}
}
