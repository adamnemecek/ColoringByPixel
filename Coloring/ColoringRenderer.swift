//
//  ColoringRenderer.swift
//  Coloring
//
//  Created by WEI QIN on 2018/6/22.
//  Copyright © 2018 WEI QIN. All rights reserved.
//

import UIKit
import Metal
import MetalKit

class ColoringRenderer: NSObject {
   
    var imageID: String!
    var inputImage: UIImage!
    var screenScale: Double!
    weak var paintDelegate: PaintingViewControllerUIDelegate!
    
    
    
    
    init(frame: CGRect, imageID: String, delegate: PaintingViewControllerUIDelegate) {
        super.init()
        inputImage = ImageManager.shared.imageForID(imageID: imageID)
        self.imageID = imageID
        paintDelegate = delegate
        
    }
    
    
}

extension ColoringRenderer: MTKViewDelegate {
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        
    }
    
    func draw(in view: MTKView) {
        
    }
}
