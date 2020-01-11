//
//  BoolTests.swift
//  SwiftChainingAssertionTests
//
//  Created by 福田走 on 2020/01/11.
//  Copyright © 2020 福田走. All rights reserved.
//

import XCTest
import Foundation
@testable import SwiftChainingAssertion

class BoolTests: XCTestCase {
    func testBool() {
        "foo".starts(with: "f").isTrue()
        "foo".starts(with: "b").isFalse()
    }
}
