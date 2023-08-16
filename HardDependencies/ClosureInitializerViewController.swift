//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by HAQQQABD on 14/08/2023.
//

import UIKit

class ClosureInitializerViewController: UIViewController {

    private let makeAnalyics: () -> Analytics
    
    init(makeAnalyics: @escaping () -> Analytics = {Analytics.shared}) {
        self.makeAnalyics = makeAnalyics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        makeAnalyics().track(event: "viewDidAppear...\(type(of: self))")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
