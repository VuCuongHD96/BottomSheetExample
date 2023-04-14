//
//  ViewController.swift
//  BottomSheetExample
//
//  Created by Work on 14/04/2023.
//

import UIKit

class ViewController: UIViewController {

    let viewController = PresentViewController()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentModal()
    }
    
    func presentModal() {
        
        if let sheet = viewController.sheetPresentationController {
            // Set chiều cao hiển thị
            sheet.detents = [
                .large(),
                .medium()
            ]
            
            // Không cho vượt quá chiều cao thấp nhất được set
//            sheet.prefersScrollingExpandsWhenScrolledToEdge = false

            // Dùng cho landscape
//            sheet.prefersEdgeAttachedInCompactHeight = true
//            sheet.widthFollowsPreferredContentSizeWhenEdgeAttached = true
            
            // Trở lại chiều cao medium
            sheet.largestUndimmedDetentIdentifier = .medium

        }
        present(viewController, animated: true, completion: nil)
    }
}
