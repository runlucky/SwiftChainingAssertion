//
//  IsTests.swift
//  SwiftChainingAssertionTests
//
//  Created by 福田走 on 2020/01/11.
//  Copyright © 2020 福田走. All rights reserved.
//

import XCTest
import Foundation
@testable import SwiftChainingAssertion

class IsTests: XCTestCase {
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
}
