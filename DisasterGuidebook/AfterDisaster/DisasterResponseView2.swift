//
//  DisasterResponseView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/13.
//

import SwiftUI

struct DisasterResponseView: View {
    let title: String
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                SubSectionView(title: "緊急時の連絡", description: "災害時に家族や友人と連絡を取るための手段や方法を確認しましょう。", iconName: "phone.fill")
                
                SubSectionView(title: "避難場所の確認", description: "避難場所やルートを確認し、迅速に避難できるように準備しましょう。", iconName: "location.fill")
                
                SubSectionView(title: "安全確保の方法", description: "災害時に身を守るための基本的な対応方法を学びましょう。", iconName: "shield.lefthalf.fill")
                
                SubSectionView(title: "応急処置", description: "怪我をした場合の応急処置方法を確認しましょう。", iconName: "bandage.fill")
            }
            .padding()
            .navigationTitle(title)
        }
    }
}


#Preview {
    DisasterResponseView(title: "災害中の対応")
}
