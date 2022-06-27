//
//  ContentView.swift
//  WeatherAPP
//
//  Created by Игорь  Архипов on 25.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroudView(isNight: isNight)
            VStack{
                Text("Berlin, DE")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding().padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 190, height: 190)
                    
                    Text("20°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                HStack(spacing: 26) {
                    WeatherViewDay(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 31)
                    WeatherViewDay(dayOfWeek: "WED", imageName: "snow", temperature: 18)
                    WeatherViewDay(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperature: 21)
                    WeatherViewDay(dayOfWeek: "FRI", imageName: "wind.snow", temperature: 23)
                    WeatherViewDay(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 25)
                    
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    weatherButton(text: "Change Day Time", backgroundColor: .white, textColor: Color("lightBlue"))
            }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherViewDay: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroudView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomLeading)
            .ignoresSafeArea()
    }
}

