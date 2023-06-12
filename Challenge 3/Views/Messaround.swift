//
//  Messaround.swift
//  Challenge 3
//
//  Created by Hisham Helwani on 12/22/22.
//

import SwiftUI


struct Messaround: View {
    var body: some View {
        VStack {
          Spacer()
          HStack {
            Spacer()
            Text("Test")
            Spacer()
          }
            Text ("when")
          Spacer()
        }.background(Color.gray)
        
    }
}

struct Messaround_Previews: PreviewProvider {
    static var previews: some View {
        Messaround()
    }
}
