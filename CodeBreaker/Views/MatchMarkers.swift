//
//  MatchMarkers.swift
//  CodeBreaker
//
//  Created by Weerachai Anotaipaiboon on 14/1/2569 BE.
//

import SwiftUI

enum Match {
    case nomatch
    case exact
    case inexact
}

struct MatchMarkers: View {
    // MARK: Data In
    let matches: [Match]
    
    // MARK: - body
    var body: some View {
        HStack {
            VStack {
                matchMaker(peg: 0)
                matchMaker(peg: 1)
            }
            VStack {
                matchMaker(peg: 2)
                matchMaker(peg: 3)
            }
        }
    }
    
    @ViewBuilder
    func matchMaker(peg: Int) -> some View {
        let exactCount = matches.count { $0 == .exact }
        let foundCount = matches.count { $0 != .nomatch }
        Circle().fill(peg < exactCount ? Color.primary : .clear)
            .strokeBorder(peg < foundCount ? Color.primary: .clear, lineWidth: 2)
            .aspectRatio(contentMode: .fit)
        
    }
}

#Preview {
    MatchMarkers(matches: [.exact, .inexact, .nomatch, .exact])
        .padding()
}
