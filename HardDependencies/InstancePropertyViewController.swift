//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by HAQQQABD on 14/08/2023.
//

import UIKit

class InstancePropertyViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    lazy var analytics = Analytics.shared
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear:\(type(of: self))")
    }
    

}
