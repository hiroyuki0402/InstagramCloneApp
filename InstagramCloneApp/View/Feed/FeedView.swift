//
//  FeedView.swift
//  InstagramCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/12/11.
//

import SwiftUI

struct FeedView: View {
    // MARK: - プロパティー

    // MARK: - ボディー
    var body: some View {
        VStack {
            userIcon

            mainImage
        }
    }//: body
}

private extension FeedView {

    private var userIcon: some View {
        HStack {
            Image("apple")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
            .clipShape(Circle())

            Text("hiro")
                .font(.footnote)
                .fontWeight(.semibold)

            Spacer()

            Button {

            } label: {
                HStack(spacing: 0) {
                    Text("・")
                        .frame(width: 10)
                    Text("・")
                        .frame(width: 10)
                    Text("・")
                        .frame(width: 10)
                }
                .fontWeight(.bold)
            }




        }
        .padding(.horizontal)
    }

    private var mainImage: some View {
        Image("apple")
            .resizable()
            .scaledToFill()
            .frame(height: 350)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    FeedView()
}
