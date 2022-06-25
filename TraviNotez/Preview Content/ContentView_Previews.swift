//
//  ContentView_Previews.swift
//  TraviNotez
//
//  Created by waheedCodes on 25/06/2022.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        let _ = prepareTestData()
        return ContentView()
    }
}

func prepareTestData() -> User {

    let user = User.shared
    user.isSignedIn = true

    let desc = "This is a very long description that should fit on multiiple lines.\nIt even has a line break\nor two."

    let noteOne = Note(
        id: "note1",
        name: "First ever note",
        description: desc,
        image: "mic")
    let noteTwo = Note(
        id: "note2",
        name: "Second note and we are getting into it now!",
        description: desc,
        image: "phone")

    guard
        let noteOneImage = noteOne.imageName,
        let noteTwoImage = noteTwo.imageName
    else {
        noteOne.image = Image(systemName: "pen")
        noteTwo.image = Image(systemName: "pencil")

        user.notes = [noteOne, noteTwo]

        return user
    }

    noteOne.image = Image(systemName: noteOneImage)
    noteTwo.image = Image(systemName: noteTwoImage)

    user.notes = [noteOne, noteTwo]

    return user
}
