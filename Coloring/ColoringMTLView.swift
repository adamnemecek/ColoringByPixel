//
//  ColoringMTLView.swift
//  Coloring
//
//  Created by WEI QIN on 2018/6/22.
//  Copyright © 2018 WEI QIN. All rights reserved.
//

import UIKit
import MetalKit

class ColoringMTLView: UIView {
    
    var lastContentOffset: CGPoint = CGPoint.zero
    var lastContentSize: CGSize = CGSize.zero
    
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
