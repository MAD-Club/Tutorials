//
//  ViewController.swift
//  RxExample
//
//  Created by Johnny Nguyen on 2017-09-29.
//  Copyright © 2017 St Clair College. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {
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
		// Do any additional setup after loading the view, typically from a nib.
	}
}

