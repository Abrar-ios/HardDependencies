//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by HAQQQABD on 15/08/2023.
//

import XCTest
@testable import HardDependencies

final class InstanceInitializerViewControllerTests: XCTestCase {
    func test_viewDidAppear(){
        let sut = InstanceInitializerViewController.init(analytics: Analytics())
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
