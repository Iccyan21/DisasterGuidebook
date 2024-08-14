//
//  NearbyRiskInfoView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/13.
//

import SwiftUI

struct NearbyRiskInfoView: View {
    @State private var riskInfos: [RiskInfo] = [
        RiskInfo(title: "浸水リスク", description: "自宅周辺の浸水リスクを確認し、避難場所を確認しておきましょう。"),
        RiskInfo(title: "土砂災害リスク", description: "自宅周辺の土砂災害のリスクが高い場所を確認しましょう。"),
        RiskInfo(title: "火災リスク", description: "火災が発生した際の避難経路や避難場所を確認しておきましょう。")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("近隣のリスク情報")
                .font(.largeTitle)
                .bold()
            
            Text("自宅周辺の災害リスク（浸水や土砂災害、火災など）を確認しましょう。")
                .font(.body)
                .foregroundColor(.gray)
            
            List(riskInfos) { risk in
                VStack(alignment: .leading, spacing: 10) {
                    Text(risk.title)
                        .font(.headline)
                    
                    Text(risk.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .shadow(radius: 2)
            }
            .listStyle(PlainListStyle())
            
            Spacer()
        }
        .padding()
        .navigationTitle("近隣のリスク情報")
    }
}

struct RiskInfo: Identifiable {
    var id = UUID()
    var title: String
    var description: String
}


#Preview {
    NearbyRiskInfoView()
}
