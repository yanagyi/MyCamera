//
//  ImagePickerView.swift
//  MyCamera
//
//  Created by Hiro Yanagisawa on 2024/07/14.
//

import SwiftUI

struct ImagePickerView: UIViewRepresentable {
    //UIImagePickerController（写真撮影）が表示されているかを管理
    @Binding var isShowSheet: Bool
    //撮影した写真を格納する変数
    @Binding var captureImage: UIImage?
    
    //Coordinatorでコントローラのdelegateを管理
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
        //ImagePickerView型の定数を用意
        let parent: ImagePickerView
        //イニシャライザ
        init(_ parent: ImagePickerView) {
            self.parent = parent
        }
    }
}

#Preview {
    ImagePickerView()
}
