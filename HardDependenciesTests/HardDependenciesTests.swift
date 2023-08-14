//
//  HardDependenciesTests.swift
//  HardDependenciesTests
//
//  Created by HAQQQABD on 14/08/2023.
//

import XCTest
@testable import HardDependencies

final class HardDependenciesTests: XCTestCase {

    func test_loading(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut :InstancePropertyViewController  = sb.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label)
        
    }
}
