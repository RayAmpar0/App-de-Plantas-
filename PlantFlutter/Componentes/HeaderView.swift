//
//  HeaderView.swift
//  PlantFlutter
//
//  Created by Ray Amparo on 6/20/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("exclusive Plants")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("for your hobby")
                    .font(.title)
            }
            .foregroundColor(Color("Primary"))
            Spacer()
            
            Image("foto_perfil")
                .resizable()
                .frame(width: 70, height: 70)
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
