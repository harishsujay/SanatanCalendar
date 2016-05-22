//
//  ShareViewController.swift
//  SanatanNotificationShareExtension
//
//  Created by Sujay Sudhir Borde on 22/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import UIKit
import Social
import NotificationCenter

class ShareViewController: SLComposeServiceViewController {
 @IBOutlet weak var quoteText: UILabel!
    
    override func isContentValid() -> Bool {
        // Do validation of contentText and/or NSExtensionContext attachments here
        
        // Do any additional setup after loading the view from its nib.
        let service = MessageService()
        quoteText.text = service.randomQuote()

        return true
    }

    override func didSelectPost() {
        // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
    
        // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
        self.extensionContext!.completeRequestReturningItems([], completionHandler: nil)
    }

    override func configurationItems() -> [AnyObject]! {
        // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
        return []
    }

}
