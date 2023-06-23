//
//  HomeScreenView.swift
//  PlantFlutter
//
//  Created by Ray Amparo on 6/20/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack{
            Color("bg_color")
                .ignoresSafeArea()
            ScrollView (showsIndicators: false){
                VStack {
                    HeaderView()
                    CategoriesView()
                    SectionTitleView(title: "Recommended")
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            RecommendPlantCardView(title: "Oscar Plant", price: 150, image: "image_3")
                            RecommendPlantCardView(title: "Twiny Plant", price: 150, image: "image_2")
                            RecommendPlantCardView(title: "Captus Planet", price: 150, image: "image_1")
                         
                        }
                    }
                    
                    
                    
                    SectionTitleView(title: "Recommended")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            RecommendPlantCardView(title: "Oscar Plant", price: 150, image: "image_3")
                            RecommendPlantCardView(title: "Twiny Plant", price: 150, image: "image_2")
                            RecommendPlantCardView(title: "Captus Planet", price: 150, image: "image_1")
                         
                        }
                    }
                    
                    
                }
                .padding()
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}





struct RecommendPlantCardView: View {
    
    var title : String
    var price : Int
    var image : String
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack (alignment: .topTrailing){
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
            }
            
            VStack(alignment: .leading){
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Primary"))
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Primary").opacity(0.5))
                }
                
                HStack {
                    Text("$\(price)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Secoundary"))
                    
                    Spacer()
                    
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(.all,8)
                        .background(Color("Primary"))
                        .cornerRadius(30)
                        .onTapGesture {
                            
                        }
                }
            }
            .padding()
        }
        .frame(width: 200)
        .background(Color.white)
        .cornerRadius(20.0)
        .shadow(color: Color.black.opacity(0.02), radius: 16, x: 16, y: 16)
    }
}
