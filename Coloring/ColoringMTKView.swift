//
//  ColoringMTKView.swift
//  Coloring
//
//  Created by WEI QIN on 2018/6/22.
//  Copyright © 2018 WEI QIN. All rights reserved.
//

import UIKit
import MetalKit

class ColoringMTKView: MTKView {
    
    var renderer: ColoringRenderer!
    var currentGroup: Int = -1
    weak var paintingUIDelegate: PaintingViewControllerUIDelegate!
    fileprivate var lastContentOffset: CGPoint = CGPoint.zero
    fileprivate var lastContentSize: CGSize = CGSize.zero
    
    init(frame: CGRect, imageID: String, delegate: PaintingViewControllerUIDelegate) {
        super.init(frame: frame, device: MTLCreateSystemDefaultDevice())
        renderer = ColoringRenderer.init(frame: frame, imageID: imageID, delegate: delegate)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.x != lastContentOffset.x ||
            scrollView.contentOffset.y != lastContentOffset.y ||
            scrollView.contentSize.width != lastContentSize.width ||
            scrollView.contentSize.height != lastContentSize.height {
            // 重新渲染
            print(scrollView.contentOffset, scrollView.contentSize)
            // 记录
            lastContentOffset = scrollView.contentOffset
            lastContentSize = scrollView.contentSize
        }
    }
    
}
