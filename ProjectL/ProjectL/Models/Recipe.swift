//
//  Recipe.swift
//  ProjectL
//
//  Created by Lucca Molon on 31/05/21.
//

import Foundation


struct Response: Codable {
    var results: [Recipe]
}

struct Recipe: Codable, Identifiable {
    var id: Int
    var title: String
    var image: String
    var imageType: String
    var usedIngredientCount: Int
    var missedIngredientCount: Int
    var missedIngredients: [MissedIngredients]
}

struct MissedIngredients: Codable {
    var id: Int
    var amount: Double
    var unit: String
    var unitLong: String
    var unitShort: String
    var aisle: String
    var name: String
    var original: String
    var originalString: String
    var originalName: String
    var metaInformation: [String]
    var meta: [String]
    var image: String
}

//{
//    "id": 632660,
//    "title": "Apricot Glazed Apple Tart",
//    "image": "https://spoonacular.com/recipeImages/632660-312x231.jpg",
//    "imageType": "jpg",
//    "usedIngredientCount": 1,
//    "missedIngredientCount": 3,
//    "missedIngredients": [
//      {
//        "id": 1001,
//        "amount": 1.5,
//        "unit": "sticks",
//        "unitLong": "sticks",
//        "unitShort": "sticks",
//        "aisle": "Milk, Eggs, Other Dairy",
//        "name": "butter",
//        "original": "1 1/2 sticks cold unsalted butter cold unsalted butter<",
//        "originalString": "1 1/2 sticks cold unsalted butter cold unsalted butter<",
//        "originalName": "cold unsalted butter cold unsalted butter",
//        "metaInformation": [
//          "unsalted",
//          "cold"
//        ],
//        "meta": [
//          "unsalted",
//          "cold"
//        ],
//        "extendedName": "unsalted butter",
//        "image": "https://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg"
//      }


//{
//   "id": 641803,
//   "title": "Easy & Delish! ~ Apple Crumble",
//   "image": "https://spoonacular.com/recipeImages/641803-312x231.jpg",
//   "imageType": "jpg",
//   "usedIngredientCount": 1,
//   "missedIngredientCount": 3,
//   "missedIngredients": [
//     {
//       "id": 1001,
//       "amount": 0.75,
//       "unit": "stick",
//       "unitLong": "sticks",
//       "unitShort": "stick",
//       "aisle": "Milk, Eggs, Other Dairy",
//       "name": "butter",
//       "original": "3/4 stick of butter",
//       "originalString": "3/4 stick of butter",
//       "originalName": "butter",
//       "metaInformation": [],
//       "meta": [],
//       "image": "https://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg"
//     },
