//
//  DisasterInfoView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/14.
//

import SwiftUI

struct DisasterInfo: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let date: String
}

struct DisasterInfoView: View {
    @State private var disasterInfos: [DisasterInfo] = [
        DisasterInfo(title: "台風警報", description: "強い台風が接近しています。避難準備を整えましょう。", date: "2024-08-11"),
        DisasterInfo(title: "地震速報", description: "M6.5の地震が発生しました。安全な場所に避難してください。", date: "2024-08-10"),
        DisasterInfo(title: "津波注意報", description: "沿岸部に津波注意報が発令されています。高台に避難してください。", date: "2024-08-09")
    ]
    
    var body: some View {
        VStack {
            List(disasterInfos) { info in
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text(info.title)
                            .font(.headline)
                        Spacer()
                        Text(info.date)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Text(info.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .shadow(radius: 2)
            }
            .listStyle(PlainListStyle())
        }
        .padding()
        .navigationTitle("災害情報")
        
    }
}

#Preview {
    DisasterInfoView()
}
