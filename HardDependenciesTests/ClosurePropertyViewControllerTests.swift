//
//  ClosurePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by HAQQQABD on 16/08/2023.
//

import XCTest
@testable import HardDependencies

final class ClosurePropertyViewControllerTests: XCTestCase {
    func test_viewDidAppear(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: ClosurePropertyViewController = sb.instantiateViewController(identifier: String(describing: ClosurePropertyViewController.self))
        sut.makeAnalytics = {Analytics()}
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
