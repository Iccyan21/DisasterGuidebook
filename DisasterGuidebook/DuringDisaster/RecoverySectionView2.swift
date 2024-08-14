//
//  RecoverySectionView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/14.
//

import SwiftUI

struct RecoverySectionView: View {
    let title: String
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    SubSectionView(title: "家の損傷確認", description: "災害後に家の損傷を確認し、必要な修理を行いましょう。", iconName: "hammer.fill")
                    
                    SubSectionView(title: "安全な水と食料の確保", description: "災害後に安全な水と食料を確保する方法を確認しましょう。", iconName: "drop.fill")
                    
                    SubSectionView(title: "保険の申請", description: "災害による損害について保険の申請方法を確認しましょう。", iconName: "doc.fill")
                    
                    SubSectionView(title: "地域の復旧支援", description: "地域の復旧支援に参加し、コミュニティの復興を支援しましょう。", iconName: "hand.raised.fill")
                }
                .padding()
                .cornerRadius(10)
                .navigationTitle(title)
            }
        }
    }
}


#Preview {
    RecoverySectionView(title: "災害後の対応")
}
