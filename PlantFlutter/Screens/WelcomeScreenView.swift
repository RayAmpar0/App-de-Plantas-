//
//  WelcomeScreenView.swift
//  PlantFlutter
//
//  Created by Ray Amparo on 6/20/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
       NavigationView {
            ZStack{
                Image("img_fondo")
                    .resizable()
                    .overlay(LinearGradient(colors: [Color.black.opacity(0.35), Color.black.opacity(0.90)], startPoint: .topLeading, endPoint: .bottomLeading))
                    .ignoresSafeArea()
                
                VStack(alignment: .leading){
                    
                    VStack( alignment: .leading, spacing: 0) {
                        Image("logo")
                        Text("Greeny")
                            .font(.system(size: 30))
                            .fontWeight(.light)
                            .foregroundColor(.white)
                        Text("Shop")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(.white)
                    }
                    
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Make Your")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                    
                    
                    Text("Grnner House")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                    Text("Decorate your house to make \nit look greener")
                        .foregroundColor(.white.opacity(0.7))
                        .padding(.vertical,8)
                    
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        //                    NextBtn()
                        NavigationLink("Next \(Image(systemName: "chevron.forward"))", destination: HomeScreenView())
                            .foregroundColor(Color("Primary"))
                            .padding()
                            .padding(.horizontal)
                            .background(.white)
                            .cornerRadius(50)
                    }
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
