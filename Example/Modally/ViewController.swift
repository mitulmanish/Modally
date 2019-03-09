//
//  ViewController.swift
//  Modally
//
//  Created by mitulmanish on 03/09/2019.
//  Copyright (c) 2019 mitulmanish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private var animator: UIViewControllerTransitioningDelegate?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let modalVC = ModalViewController()
        
        animator = ModalViewControllerPresentationTransitionDelegate(portraitHeight: 200, landscapeHeight: 200, verticalMargin: 0, horizontalMargin: 0)
        modalVC.transitioningDelegate = animator
        modalVC.modalPresentationStyle = .custom
        
        modalVC.view.backgroundColor = .blue
        present(modalVC, animated: true, completion: .none)
    }

}

class ModalViewController: UIViewController {
    override func viewDidLayoutSubviews() {
        view.round(corners: [.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 8)
    }
}

