//
//  SideMenuOptionView.swift
//  SideMenu
//
//  Created by London Petway on 4/5/21.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
            Text(viewModel.title)
                .font(.system(size: 15, weight: .semibold))
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
            
        }
    }


