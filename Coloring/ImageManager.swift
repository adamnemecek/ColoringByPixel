//
//  ImageManager.swift
//  Coloring
//
//  Created by WEI QIN on 2018/6/22.
//  Copyright © 2018 WEI QIN. All rights reserved.
//

import UIKit

final class ImageManager: NSObject {

    fileprivate override init() {
        super.init()
    }
    
    static let shared = ImageManager()
    
    static func imageForPath(path: String) -> UIImage? {
        return UIImage(contentsOfFile: path)
    }
    
    func imageForID(imageID: String) -> UIImage? {
        let pngImage = pngImageForID(imageID: imageID)
        if pngImage != nil  {
            return pngImage
        }
        return gifImageForID(imageID: imageID)
    }
    
    func pngImageForID(imageID: String) -> UIImage? {
        let path = Bundle.main.path(forResource: imageID, ofType: "png", inDirectory: "public/images") ?? ""
        if let image = ImageManager.imageForPath(path: path) {
            return image
        }
//        let searchPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
//        let searchURL = URL.init(fileURLWithPath: searchPath)
//        if let documentPath = searchPath.first {
//            if imageID.contains("import_") {
//                documentPath.strings(byAppendingPaths: ["Import"]).first!
//
//            }else {
//
//            }
//        }
        return nil
    }
    
    func gifImageForID(imageID: String) -> UIImage? {
        return nil
    }
}
