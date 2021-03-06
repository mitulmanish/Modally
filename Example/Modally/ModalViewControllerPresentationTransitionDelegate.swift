//
//  ModalViewControllerPresentationTransitionDelegate.swift
//  Modally_Example
//
//  Created by Mitul Manish on 9/3/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import Modally

class ModalViewControllerPresentationTransitionDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    private let portraitHeight: CGFloat
    private let landscapeHeight: CGFloat
    private let marginFromBottom: CGFloat
    private let sideMargin: CGFloat
    
    init(portraitHeight: CGFloat, landscapeHeight: CGFloat, verticalMargin: CGFloat, horizontalMargin: CGFloat) {
        self.portraitHeight = portraitHeight
        self.landscapeHeight = landscapeHeight
        self.marginFromBottom = verticalMargin
        self.sideMargin = horizontalMargin
    }
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return ModalViewControllerPresentationController(
            portraitHeight: portraitHeight,
            landscapeHeight: landscapeHeight,
            marginFromBottom: marginFromBottom,
            sideMargin: sideMargin,
            presentedViewController: presented,
            presentingViewController: source
        )
    }
}
