//
//  CodeBreakerView.swift
//  CodeBreaker
//
//  Created by Weerachai Anotaipaiboon on 14/1/2569 BE.
//

import SwiftUI

struct CodeBreakerView: View {
    var body: some View {
        VStack {
            pegs(colors: [.red, .black, .green, .orange])
            pegs(colors: [.red, .green, .green, .purple])
            pegs(colors: [.red, .green, .blue, .orange])
            pegs(colors: [.yellow, .black, .green, .orange])
        }
        .padding()
    }
    
    func pegs(colors: [Color]) -> some View {
        return HStack {
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            MatchMarkers(matches:  [.exact, .inexact, .nomatch, .exact])
        }
    }
}

#Preview {
    CodeBreakerView()
}
