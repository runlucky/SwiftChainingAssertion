//
//  NilTests.swift
//  SwiftChainingAssertionTests
//
//  Created by 福田走 on 2020/01/11.
//  Copyright © 2020 福田走. All rights reserved.
//

import XCTest
import Foundation
@testable import SwiftChainingAssertion

class NilTests: XCTestCase {
    func testNil() {
        let nilable1: Int? = nil
        let nilable2: Int? = 10
        nilable1.isNil()
        nilable2.isNotNil()
    }
}
