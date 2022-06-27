//
//  WeatherButton.swift
//  WeatherAPP
//
//  Created by Игорь  Архипов on 26.04.2022.
//

import SwiftUI

struct weatherButton: View {
    
    var text: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(text)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}

