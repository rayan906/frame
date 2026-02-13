//
//  DetailedView.swift
//  frame
//
//  Created by apprikart on 14/02/26.
//

import SwiftUI

struct DetailedView: View {
    let framework : Framework
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    
                }label:{
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 40,height: 40)
                }
                .padding()
            }
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                
            }label: {
                ButtonFile(title:"Learn More")
            }
            
        }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(framework: MockData.sampleFramework)
    }
}
