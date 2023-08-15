//
//  InstancePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by HAQQQABD on 15/08/2023.
//

import XCTest
@testable import HardDependencies

final class InstancePropertyViewControllerTests:XCTestCase {
    func test_viewDiAppear(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut : InstancePropertyViewController =  sb.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.analytics = Analytics()
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
