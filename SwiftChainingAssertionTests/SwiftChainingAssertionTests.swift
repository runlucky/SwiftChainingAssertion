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

    func testArray() {
        let list = [1, 2, 3, 4, 5]
        list.is([1, 2, 3, 4, 5])

        (1...5).isNot(1...4)

        [2, 4, 6, 8].isAll { $0 % 2 == 0 }
        ["foo", "bar", "baz"].isNotAll { $0.starts(with: "a") }
    }

    func testBool() {
        "foo".starts(with: "f").isTrue()
        "foo".starts(with: "b").isFalse()
    }

    func testNil() {
        let nilable1: Int? = nil
        let nilable2: Int? = 10
        nilable1.isNil()
        nilable2.isNotNil()
    }
}
