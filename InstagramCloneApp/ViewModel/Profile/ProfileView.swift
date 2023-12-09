//
//  ProfileView.swift
//  InstagramCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/12/09.
//

import SwiftUI

struct ProfileView: View {
    // MARK: - プロパティー


    // MARK: - ボディー
    var body: some View {
        VStack {
            userIcon
            userNameArea
            buttonHandleArea
        }
    }
}

// MARK: - ProfileViewアイテム
private extension ProfileView {

    private var userIcon: some View {
        VStack {
            Image(systemName: "person")
                .font(.largeTitle)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .foregroundStyle(.white)
                .background(.gray)
                .clipShape(Circle())
                .overlay (
                    Button {

                    } label: {
                        VStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundStyle(.gray)
                                .frame(width: 30, height: 30)
                        }
                        .frame(width: 30, height: 30)
                        .background(Color.white)
                        .clipShape(Circle())
                    }
                    ,alignment: .bottomTrailing
            )
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }

    /// ユーザネーム
    private var userNameArea: some View {
        VStack(alignment: .leading) {
            Text("ひろ")

            Button {

            } label: {
                HStack(spacing: 0) {
                    Image(.threedsIcon)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("hiro5309")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .foregroundStyle(.black)
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 4)
                .background(.white)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray, lineWidth: 1)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }

    /// 編集ボタンエリア
    private var buttonHandleArea: some View {
        HStack {
            edirButton
            shareButton
        }
        .padding(.horizontal, 10)
    }

    /// 編集ボタン
    private var edirButton: some View {
        ProfileActioinButton(title: "プロフィールを編集")
    }

    /// シェアボタン
    private var shareButton: some View {
        ProfileActioinButton(title: "プロフィールをシェア")
    }
}

// MARK: - Preview

#Preview {
    ProfileView()
}
