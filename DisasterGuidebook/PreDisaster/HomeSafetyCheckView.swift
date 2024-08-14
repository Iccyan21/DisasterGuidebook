//
//  HomeSafetyCheckView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/13.
//

import SwiftUI


struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .green : .gray)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

struct HomeSafetyCheckView: View {
    @State private var isEarthquakeResistantChecked = false
    @State private var isFurnitureSecuredChecked = false
    @State private var isSuppliesManagedChecked = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("自宅の安全確認")
                .font(.largeTitle)
                .bold()
            
            Text("家の耐震性や、家具の固定方法、緊急時に使える備蓄品の管理をチェックしましょう。")
                .font(.body)
                .foregroundColor(.gray)
            
            // 耐震性チェック
            Toggle(isOn: $isEarthquakeResistantChecked) {
                Text("家の耐震性の確認")
                    .font(.headline)
            }
            .toggleStyle(CheckboxToggleStyle())
            .padding(.vertical, 5)
            
            // 家具の固定チェック
            Toggle(isOn: $isFurnitureSecuredChecked) {
                Text("家具の固定")
                    .font(.headline)
            }
            .toggleStyle(CheckboxToggleStyle())
            .padding(.vertical, 5)
            
            // 備蓄品の管理チェック
            Toggle(isOn: $isSuppliesManagedChecked) {
                Text("備蓄品の管理")
                    .font(.headline)
            }
            .toggleStyle(CheckboxToggleStyle())
            .padding(.vertical, 5)
            
            Spacer()
            
            // 完了ボタン
            Button(action: {
                // チェックリストの状態を保存する処理などを追加
                print("耐震性: \(isEarthquakeResistantChecked), 家具の固定: \(isFurnitureSecuredChecked), 備蓄品の管理: \(isSuppliesManagedChecked)")
            }) {
                Text("完了")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
        }
        .padding()
        .navigationTitle("自宅の安全確認")
    }
}


#Preview {
    HomeSafetyCheckView()
}
