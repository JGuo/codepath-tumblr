//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Jisi Guo on 2/25/16.
//  Copyright © 2016 Jisi Guo. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonOriginalCenter: CGPoint!
    var photoButtonOriginalCenter: CGPoint!
    var quoteButtonOriginalCenter: CGPoint!
    var linkButtonOriginalCenter: CGPoint!
    var chatButtonOriginalCenter: CGPoint!
    var videoButtonOriginalCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textButtonOriginalCenter = textButton.center
        photoButtonOriginalCenter = photoButton.center
        quoteButtonOriginalCenter = quoteButton.center
        linkButtonOriginalCenter = linkButton.center
        chatButtonOriginalCenter = chatButton.center
        videoButtonOriginalCenter = videoButton.center
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        textButton.center = CGPoint(x: textButtonOriginalCenter.x, y: textButtonOriginalCenter.y + 600)
        photoButton.center = CGPoint(x: photoButtonOriginalCenter.x, y: photoButtonOriginalCenter.y + 600)
        quoteButton.center = CGPoint(x: quoteButtonOriginalCenter.x, y: quoteButtonOriginalCenter.y + 600)
        linkButton.center = CGPoint(x: linkButtonOriginalCenter.x, y: linkButtonOriginalCenter.y + 600)
        chatButton.center = CGPoint(x: chatButtonOriginalCenter.x, y: chatButtonOriginalCenter.y + 600)
        videoButton.center = CGPoint(x: videoButtonOriginalCenter.x, y: videoButtonOriginalCenter.y + 600)
        
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.textButton.center = CGPoint(x: self.textButtonOriginalCenter.x, y: self.textButtonOriginalCenter.y)
        })
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.photoButton.center = CGPoint(x: self.photoButtonOriginalCenter.x, y: self.photoButtonOriginalCenter.y)
        })
        
        UIView.animateWithDuration(0.6, animations: { () -> Void in
            self.quoteButton.center = CGPoint(x: self.quoteButtonOriginalCenter.x, y: self.quoteButtonOriginalCenter.y)
        })
        
        UIView.animateWithDuration(0.8, animations: { () -> Void in
            self.linkButton.center = CGPoint(x: self.linkButtonOriginalCenter.x, y: self.linkButtonOriginalCenter.y)
        })
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.chatButton.center = CGPoint(x: self.chatButtonOriginalCenter.x, y: self.chatButtonOriginalCenter.y)
        })
        
        UIView.animateWithDuration(1.2, animations: { () -> Void in
            self.videoButton.center = CGPoint(x: self.videoButtonOriginalCenter.x, y: self.videoButtonOriginalCenter.y)
        })
        
    }
    

    @IBAction func nevermindTap(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
