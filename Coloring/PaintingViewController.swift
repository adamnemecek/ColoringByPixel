//
//  PaintingViewController.swift
//  Coloring
//
//  Created by WEI QIN on 2018/6/20.
//  Copyright © 2018 WEI QIN. All rights reserved.
//

import UIKit
import SpriteKit

@objc protocol PaintingViewControllerUIDelegate {
        func didPaint(arg1: Int, expected: Int, timelapse: Bool, flood: Bool)
        func didFailToUseBucket()
        func didUseBucket()
        func didFlood()
        func didAutomaticallyPaint()
        func didScaleGL(arg1: Float)
}

class PaintingViewController: UIViewController {
    
    var imageID: String!                            // 图片名(本地png或gif)
    var mtkView: ColoringMTKView!                   // 渲染视图
    var skView: SKView!                             // spriteKit View
    var skScene: SKScene!                           // spriteKit Scene
    var scrollView: UIScrollView!                   // scrollView
    var dummy: UIView!                              // viewForZooming的傀儡View
    var singleTap: UITapGestureRecognizer!          // 单击
    var longPress: UILongPressGestureRecognizer!    // 长按
    
    @available(iOS 10.0, *)
    var hapticFeedbackGenerator: UIImpactFeedbackGenerator {
        get {
            return UIImpactFeedbackGenerator(style: .medium)
        }
    }
    
//    fileprivate var checkedEmpty: Bool = false
//    fileprivate var usedSwipe: Bool = false
//    fileprivate var swipeGesture: UIGestureRecognizer!
//    fileprivate var timer: Float!
//    fileprivate var zoomOutLastScale: Float!
//    fileprivate var initialized: Bool!
//    var selectedGroup: Int!
//    var colorCollectionView: UICollectionView!      // 颜色选择
//    var backHolder: UIView!
//    var shareHolder: UIView!
//    var buttonsHolder: UIView!
//    var bucketHolder: UIView!
//    var eraserHolder: UIView!
//    var pixelfinderHolder: UIView!
//    var bucketButton: UIButton!                     // 油漆桶
//    var eraserButton: UIButton!                     // 橡皮擦
//    var bucketImage: UIImageView!
//    var eraserImage: UIImageView!
//    var pixelfinderImage: UIImageView!
//    var aimViewHolder: UIView!
//    var aimView: UIView!                            //
//    var aimViewColor: UIImageView!
//    var safeView: UIView!                           //
//    var eraserBackground: UIView!
//    var bucketBadgeBG: UIView!
//    var bucketBadgeLabel: UILabel!
//    var pixelfinderBadgeBG: UIView!
//    var pixelfinderBadgeLabel: UILabel!
//    var completedColors: NSMutableArray!            // 完成的颜色
//    var displayLink: CADisplayLink!                 // 垂直同步回调
    
    init(imageID: String) {
        super.init(nibName: nil, bundle: nil)
        self.imageID = imageID
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // mtkView
        mtkView = ColoringMTKView(frame: view.bounds, imageID: imageID, delegate: self)
        
        // scrollView
        scrollView = UIScrollView(frame: CGRect(origin: CGPoint.zero, size: view.bounds.size))
        dummy = UIView(frame: CGRect(origin: CGPoint.zero, size: scrollView.bounds.size))
        dummy.backgroundColor = UIColor.clear
        scrollView.addSubview(dummy)
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 20.0
        scrollView.bouncesZoom = false
        scrollView.delegate = self
        view.addSubview(scrollView)
    
        // singleTap
        singleTap = UITapGestureRecognizer(target: self, action: #selector(tapRecognized(recognizer:)))
        singleTap.cancelsTouchesInView = false
        scrollView.addGestureRecognizer(singleTap)
        
        // longPress
        longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPressRecognized(recognizer:)))
        longPress.cancelsTouchesInView = false
        longPress.minimumPressDuration = 0.3
        scrollView.addGestureRecognizer(longPress)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }

}

extension PaintingViewController {
    @objc func tapRecognized(recognizer: UITapGestureRecognizer) {
        print("tap")
    }
    
    @objc func longPressRecognized(recognizer: UILongPressGestureRecognizer) {
        print("long press")
    }
}

//extension PaintingViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//
//}

extension PaintingViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return dummy
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == self.scrollView {
            mtkView.scrollViewDidScroll(scrollView: scrollView)
        }
    }
    
//    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
//        //             sparklePixelFinderIfNeeded
//    }
}

extension PaintingViewController: PaintingViewControllerUIDelegate {
    func didPaint(arg1: Int, expected: Int, timelapse: Bool, flood: Bool) {

    }

    func didFailToUseBucket() {

    }

    func didUseBucket() {

    }

    func didFlood() {

    }

    func didAutomaticallyPaint() {

    }

    func didScaleGL(arg1: Float) {

    }
}
