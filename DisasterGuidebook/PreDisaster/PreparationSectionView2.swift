//
//  PreparationSectionView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/11.
//

import SwiftUI

struct PreparationSectionView: View {
    let title: String
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    SubSectionView(title: "防災グッズリスト", description: "災害に備えて必要な防災グッズのリストと、準備方法のガイド。", iconName: "bag.fill")
                    
                    SubSectionView(title: "家族の避難計画", description: "家族との避難場所や連絡方法、集合場所の決定方法を解説。", iconName: "person.2.fill")
                    
                    SubSectionView(title: "自宅の安全確認", description: "家の耐震性や、家具の固定方法、緊急時に使える備蓄品の管理。", iconName: "house.fill")
                    
                    SubSectionView(title: "近隣のリスク情報", description: "自宅周辺の災害リスク（浸水や土砂災害、火災など）を確認する方法。", iconName: "map.fill")
                }
                .padding()
                .cornerRadius(10)
                .navigationTitle(title)
            }
        }
    }
}

struct SubSectionView: View {
    let title: String
    let description: String
    let iconName: String
    
    var body: some View {
        NavigationLink(destination: DetailView(title: title)) {
            HStack {
                Image(systemName: iconName)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Text(description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .frame(maxWidth: .infinity) // 横幅を画面いっぱいにする
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2) // 影を追加してカードっぽく
        }
        .padding(.horizontal) // 画面端の余白を調整
        .padding(.bottom, 10) // 各セクションの間に余白を追加
    }
}



#Preview {
    PreparationSectionView(title: "災害前の準備")
}
