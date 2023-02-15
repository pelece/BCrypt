//
//  File.swift
//
//
//  Created by Mykola Havrylytsia (Speed4Trade GmbH) on 15.02.23.
//

import BCrypt
import XCTest

class BCryptTests: XCTestCase {
    func test_test() {
        XCTAssertNoThrow {
            try BCrypt.Hash("password", salt: BCrypt.Salt())
        }
    }

    func test_check() {
        XCTAssertTrue(BCrypt.Check("Pneu_$", hashed: "$2a$10$y/6htADxL2YnyxWiNJRDY.exYsnyC0W2VUDQi70vKh46Dvi3QGbLy"))
        XCTAssertFalse(BCrypt.Check("Pneu_$", hashed: "invalid-hash"))
    }
}
