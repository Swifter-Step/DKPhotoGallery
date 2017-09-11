//
//  DKPhotoQRCodeResultVC.swift
//  DKPhotoGallery
//
//  Created by ZhangAo on 08/09/2017.
//  Copyright © 2017 ZhangAo. All rights reserved.
//

import UIKit

class DKPhotoQRCodeResultVC: UIViewController {

    var result: String!
    
    var textView = UITextView()
    
    convenience init(result: String) {
        self.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "扫描结果"
        
        self.textView.frame = self.view.bounds
        self.textView.font = UIFont.systemFont(ofSize: 16)
        self.textView.textColor = UIColor.darkText
        self.textView.isEditable = false
        self.textView.isSelectable = true
        self.textView.text = self.result
    }

}