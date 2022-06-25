//
//  UserData.swift
//  TraviNotez
//
//  Created by waheedCodes on 25/06/2022.
//

import Combine

// MARK: - Store User

class User: ObservableObject {

    // MARK: - Singleton

    static let shared = User()

    // MARK: - Properties

    @Published var notes: [Note] = []
    @Published var isSignedIn: Bool = false

    // MARK: - Initializer

    private init() {}
}
