//
//  OverrideViewController.swift
//  HardDependencies
//
//  Created by HAQQQABD on 14/08/2023.
//

import UIKit

class OverrideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func analytics() -> Analytics {
        return Analytics.shared
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics().track(event: "ViewDidAppear....\(type(of: self))")
    }

}
