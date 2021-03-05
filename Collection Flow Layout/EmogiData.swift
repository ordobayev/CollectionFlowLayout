//
//  EmogiData.swift
//  Collection Flow Layout
//
//  Created by Нургазы on 3/3/21.
//

import Foundation

class EmogiData {
    
    static let shared = EmogiData()
    
    private init() { }
    
    let data: [EmogiSection] = [
        EmogiSection(sectionName: "Smiles", emogi: ["😅", "😀", "😆", "😂", "🤣"]),
        EmogiSection(sectionName: "Nature", emogi: ["🐶", "🐱", "🐭", "🐹", "🐰"]),
        EmogiSection(sectionName: "Flags", emogi: ["🏳️‍🌈", "🇦🇹", "🇦🇿", "🇧🇪", "🇧🇷"])
    ]

}

struct EmogiSection {
    let sectionName: String
    var emogi: [String]
}
