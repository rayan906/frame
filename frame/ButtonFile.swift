//
//  ButtonFile.swift
//  frame
//
//  Created by apprikart on 14/02/26.
//

import SwiftUI

struct ButtonFile: View {
    var title :String
    var body: some View {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.purple)
                .frame(width: 200,height: 50)
                .background(.yellow)
            .cornerRadius(23)
        
    }
}

//struct ButtonFile_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonFile()
//    }
//}
