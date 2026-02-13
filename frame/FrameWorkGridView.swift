//
//  frameworkgridview.swift
//  frame
//
//  Created by apprikart on 13/02/26.
//

import SwiftUI

struct FrameWorkGridView: View {
    let column:[GridItem]=[GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column){
                    ForEach(MockData.frameworks){ frame in
                        FrameworkTitleView(framework: frame)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

struct FrameWorkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkGridView()
    }
}
struct FrameworkTitleView:View {
    let framework : Framework
    var body :some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width:80,height:80)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
