//
//  ListRow.swift
//  TraviNotez
//
//  Created by waheedCodes on 25/06/2022.
//

import SwiftUI

struct ListRow: View {

    // MARK: - Properties

    @ObservedObject var note: Note

    var body: some View {

        HStack(alignment: .center, spacing: 5.0) {

            if let noteImage = note.image {
                noteImage
                    .resizable()
                    .frame(width: 50, height: 50)
            }

            VStack(alignment: .leading, spacing: 5.0) {
                Text(note.name)
                    .bold()

                if let noteDescription = note.description {
                    Text(noteDescription)
                }
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {

    static var previews: some View {
        ListRow(note: Note(id: "anIDwithFun", name: "Note description", description: "Sample descritption that's worth reading. \nYeah! \nWhat do you think?"))
    }
}
