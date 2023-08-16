//
//  ClosureInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by HAQQQABD on 16/08/2023.
//

import XCTest
@testable import HardDependencies

final class ClosureInitializerViewControllerTests: XCTestCase {
    func test_viewDidAppear(){
        let sut = ClosureInitializerViewController{Analytics()}
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
