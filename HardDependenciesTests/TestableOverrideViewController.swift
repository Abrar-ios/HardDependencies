//
//  TestableOverrideViewController.swift
//  HardDependenciesTests
//
//  Created by HAQQQABD on 14/08/2023.
//

import Foundation
@testable import HardDependencies
class TestableOverrideViewController: OverrideViewController {
    override func analytics() -> Analytics {
        return Analytics()
    }
}
