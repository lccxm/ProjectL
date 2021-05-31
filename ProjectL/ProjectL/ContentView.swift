//
//  ContentView.swift
//  ProjectL
//
//  Created by Lucca Molon on 31/05/21.
//


import SwiftUI

struct ContentView: View {
    @State private var results = [Recipe]()
    var body: some View {
        List(results) { item in
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                    }
            }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        guard let url = URL(string: "https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,+flour,+sugar&number=2&apiKey=\(API_KEY)") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let recipes = try! JSONDecoder().decode([Recipe].self, from: data!)
            self.results = recipes
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
