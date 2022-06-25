//
//  ContentView.swift
//  TraviNotez
//
//  Created by waheedCodes on 25/06/2022.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Properties

    @ObservedObject private var user: User = .shared

    var body: some View {
        List {
            ForEach(user.notes) {
                ListRow(note: $0)
            }
        }
    }
}
