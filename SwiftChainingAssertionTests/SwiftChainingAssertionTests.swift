//
//  SwiftChainingAssertionTests.swift
//  SwiftChainingAssertionTests
//
//  Created by 福田走 on 2019/04/10.
//  Copyright © 2019 福田走. All rights reserved.
//

import XCTest
import Foundation
@testable import SwiftChainingAssertion

class SwiftChainingAssertionTests: XCTestCase {
    func testIs() {
        10.is(10)
        10.isNot(11)

        true.is(true)
        true.isNot(false)

        "".is("")
        "".isNot("a")
    }
    
    func testIsClosure() {
        10.is { 2 + 8 }
        "foo".isNot { "fooo" }
    }

    func testBool() {
        "foo".starts(with: "f").isTrue()
        "foo".starts(with: "b").isFalse()
    }

}
