//
//  SectionTitleView.swift
//  PlantFlutter
//
//  Created by Ray Amparo on 6/20/23.
//

import SwiftUI

struct SectionTitleView: View {
    var title: String
    
    var body: some View {
        HStack{
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("Primary"))
            Spacer()
            Text("See All")
                .fontWeight(.medium)
                .foregroundColor(Color("Primary").opacity(0.5))
        }
    }
}


struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleView(title: "Recommended")
    }
}
