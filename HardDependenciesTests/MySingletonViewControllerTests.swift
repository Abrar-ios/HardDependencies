//
//  MySingletonViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by HAQQQABD on 14/08/2023.
//

import XCTest
@testable import HardDependencies

final class MySingletonViewControllerTests: XCTestCase {
    override func setUp() {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }
    
    override func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }
    
    func test_viewDidAppear(){
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
