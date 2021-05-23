//
//  DotsIndexView.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import SwiftUI

struct DotsIndexView: View {
  
  // MARK: - Public Properties
  
  let numberOfPages: Int
  let currentIndex: Int
  
  
  // MARK: - Drawing Constants
  
  private let circleSize: CGFloat = 12
  private let circleSpacing: CGFloat = 8
  
  private let primaryColor = Color.blue
  private let secondaryColor = Color.gray
  
  private let smallScale: CGFloat = 1
  
  
  // MARK: - Body
  
  var body: some View {
    HStack(spacing: circleSpacing) {
      ForEach(0..<numberOfPages) { index in // 1
          Circle()
            .fill(currentIndex == index ? primaryColor : secondaryColor) // 2
            .scaleEffect(currentIndex == index ? 1 : smallScale)
            .frame(width: circleSize, height: circleSize)
            .transition(AnyTransition.opacity.combined(with: .scale)) // 3
            .id(index) // 4
      }
    }.padding()
  }
  
  
  // MARK: - Private Methods
  
  func shouldShowIndex(_ index: Int) -> Bool {
    ((currentIndex - 1)...(currentIndex + 1)).contains(index)
  }
}

#if DEBUG
struct DotsIndexView_Previews: PreviewProvider {
    static var previews: some View {
        DotsIndexView(numberOfPages: 5, currentIndex: 1)
    }
}
#endif



