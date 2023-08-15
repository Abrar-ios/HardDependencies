//
//  OverrideViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by HAQQQABD on 14/08/2023.
//

import XCTest
final class OverrideViewControllerTests: XCTestCase {
    
    func test_viewDidAppear(){
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
