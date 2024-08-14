//
//  ContentView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/11.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    // 災害前の準備セクション
                    SectionView(title: "災害前の準備", description: "災害が発生する前に準備すべきことを確認しましょう。", iconName: "exclamationmark.triangle.fill", destination: PreparationSectionView(title: "災害前の準備"))
                    
                    // 災害中の対応セクション
                    SectionView(title: "災害中の対応", description: "災害が発生した際に適切に対応するための情報です。", iconName: "shield.fill",destination: DisasterResponseView(title: "災害中の対応"))
                    
                    // 災害後の対応セクション
                    SectionView(title: "災害後の対応", description: "災害が過ぎ去った後の対応方法を学びましょう。", iconName: "checkmark.seal.fill",destination: RecoverySectionView(title: "災害後の対応"))
                    
                    // 緊急連絡先セクション
                    SectionView(title: "緊急連絡先", description: "災害時に連絡が必要な緊急連絡先を確認しましょう。", iconName: "phone.fill",destination: EmergencyContactsView(title: "緊急連絡先"))
                    
                    // 災害情報セクション
                    SectionView(title: "災害情報", description: "最新の災害情報をチェックしましょう。", iconName: "waveform.path.ecg", destination: DisasterInfoView())

                }
                .padding()
            }
            .navigationTitle("災害対応ガイドブック")
        }
    }
}

struct SectionView<Destination: View>: View {
    let title: String
    let description: String
    let iconName: String
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
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
        }
    }
}

struct DetailView: View {
    let title: String
    
    var body: some View {
        Text("\(title)の詳細情報")
            .navigationTitle(title)
            .padding()
    }
}

#Preview {
    HomeView()
}
