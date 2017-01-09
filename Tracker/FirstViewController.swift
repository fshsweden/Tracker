//
//  FirstViewController.swift
//  Tracker
//
//  Created by Peter Andersson on 2016-09-22.
//  Copyright © 2016 Peter Andersson. All rights reserved.
//

import UIKit
import SwiftPhotoGallery

class FirstViewController: UIViewController, SwiftPhotoGalleryDataSource, SwiftPhotoGalleryDelegate {
    
    let imageNames = ["image1.jpeg", "image2.jpeg", "image3.jpeg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidLayoutSubviews() {
        
        let gallery = SwiftPhotoGallery(delegate: self, dataSource: self)
        gallery.backgroundColor = UIColor.blackColor()
        gallery.pageIndicatorTintColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
        gallery.currentPageIndicatorTintColor = UIColor.whiteColor()
        
        presentViewController(gallery, animated: false, completion: { () -> Void in
            gallery.currentPage = 2
        })
        
    }
    
    func numberOfImagesInGallery(gallery: SwiftPhotoGallery) -> Int {
        return imageNames.count
    }
    
    func imageInGallery(gallery: SwiftPhotoGallery, forIndex: Int) -> UIImage? {
        return UIImage(named: imageNames[forIndex])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func galleryDidTapToClose(gallery: SwiftPhotoGallery) {
        // do something cool like:
        dismissViewControllerAnimated(true, completion: nil)
    }
}
