//
//  InfoPanelView.swift
//  Pinch
//
//  Created by kmac on 4/18/24.
//

import SwiftUI

struct InfoPanelView: View {
    var scale: CGFloat = 1
    var offset: CGSize = .zero
    
    @State private var isInfoPanelVisible: Bool = false
    
    var body: some View {
        HStack {
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1, perform: {
                    withAnimation(.easeOut) {
                        isInfoPanelVisible.toggle()
                    }
                })
            
            Spacer()
            
            HStack (spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                
                Spacer()
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPanelVisible ? 1 : 0)
            
            Spacer()
            
        }
    }
}

#Preview {
    InfoPanelView(scale: 1, offset: .zero)
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
    
}
