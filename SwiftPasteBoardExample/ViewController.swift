//
//  ViewController.swift
//  SwiftPasteBoardExample
//
//  Created by Angelos Staboulis on 14/8/23.
//

import UIKit

class ViewController: UIViewController {
    let clipboard = UIPasteboard.general
    var clipBoardData:Data?
    @IBOutlet var mainImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "SwiftPasteBoardExample"
        // Do any additional setup after loading the view.
    }
    @IBAction func btnClear(_ sender: Any) {
        mainImage.image = UIImage()
    }
    
    @IBAction func btnCut(_ sender: Any) {
        clipboard.setData((mainImage.image?.pngData())!, forPasteboardType: "image")
        mainImage.image = UIImage()
    }
    @IBAction func btnCopy(_ sender: Any) {
        clipboard.setData((mainImage.image?.pngData())!, forPasteboardType: "image")
    }
    @IBAction func btnPaste(_ sender: Any) {
        let newImage = UIImage(data: clipboard.data(forPasteboardType: "image")!)
        mainImage.image = newImage
    }
    
}

