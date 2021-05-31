//
//  SearchView.swift
//  ProjectL
//
//  Created by Lucca Molon on 31/05/21.
//

import SwiftUI

struct SearchView: View {
    @State private var ingredients: String = ""
    var body: some View {
        VStack {
            Text("What u got?")
                .font(.title2)
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 365, height: 35, alignment: .center)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                TextField("Type here my friend", text: $ingredients)
                    .padding(.leading, 20)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
