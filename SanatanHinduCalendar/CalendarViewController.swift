//
//  CalendarViewController.swift
//  SanatanHinduCalendar
//
//  Created by Sujay Sudhir Borde on 20/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController
{
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let vc0 = ViewController0(nibName: "ViewController0", bundle: nil)
        
        self.addChildViewController(vc0)
        self.scrollView.addSubview(vc0.view)
        vc0.didMoveToParentViewController(self)
        
        let vc1 = ViewController1(nibName: "ViewController1", bundle:nil)
        
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc1.view.frame = frame1
        
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        let vc2 = ViewController2(nibName: "ViewController2", bundle:nil)
        
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        vc2.view.frame = frame2
        
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        
        let vc3 = ViewController3(nibName: "ViewController3", bundle:nil)
        
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 3
        vc3.view.frame = frame3
        
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        
        
        let vc4 = ViewController4(nibName: "ViewController4", bundle:nil)
        
        var frame4 = vc4.view.frame
        frame4.origin.x = self.view.frame.size.width * 4
        vc4.view.frame = frame4
        
        self.addChildViewController(vc4)
        self.scrollView.addSubview(vc4.view)
        vc4.didMoveToParentViewController(self)
        
        
        let vc5 = ViewController5(nibName: "ViewController5", bundle:nil)
        
        var frame5 = vc5.view.frame
        frame5.origin.x = self.view.frame.size.width * 5
        vc5.view.frame = frame5
        
        self.addChildViewController(vc5)
        self.scrollView.addSubview(vc5.view)
        vc5.didMoveToParentViewController(self)
        
        
        let vc6 = ViewController6(nibName: "ViewController6", bundle:nil)
        
        var frame6 = vc6.view.frame
        frame6.origin.x = self.view.frame.size.width * 6
        vc6.view.frame = frame6
        
        self.addChildViewController(vc6)
        self.scrollView.addSubview(vc6.view)
        vc6.didMoveToParentViewController(self)
        
        let vc7 = ViewController7(nibName: "ViewController7", bundle:nil)
        
        var frame7 = vc7.view.frame
        frame7.origin.x = self.view.frame.size.width * 7
        vc7.view.frame = frame7
        
        self.addChildViewController(vc7)
        self.scrollView.addSubview(vc7.view)
        vc7.didMoveToParentViewController(self)
        
        
        let vc8 = ViewController8(nibName: "ViewController8", bundle:nil)
        
        var frame8 = vc8.view.frame
        frame8.origin.x = self.view.frame.size.width * 8
        vc8.view.frame = frame8
        
        self.addChildViewController(vc8)
        self.scrollView.addSubview(vc8.view)
        vc8.didMoveToParentViewController(self)
        
        
        let vc9 = ViewController9(nibName: "ViewController9", bundle:nil)
        
        var frame9 = vc9.view.frame
        frame9.origin.x = self.view.frame.size.width * 9
        vc9.view.frame = frame9
        
        self.addChildViewController(vc9)
        self.scrollView.addSubview(vc9.view)
        vc9.didMoveToParentViewController(self)
        
        
        let vc10 = ViewController10(nibName: "ViewController10", bundle:nil)
        
        var frame10 = vc10.view.frame
        frame10.origin.x = self.view.frame.size.width * 10
        vc10.view.frame = frame10
        
        self.addChildViewController(vc10)
        self.scrollView.addSubview(vc10.view)
        vc10.didMoveToParentViewController(self)

        let vc11 = ViewController11(nibName: "ViewController11", bundle:nil)
        
        var frame11 = vc11.view.frame
        frame11.origin.x = self.view.frame.size.width * 11
        vc11.view.frame = frame11
        
        self.addChildViewController(vc11)
        self.scrollView.addSubview(vc11.view)
        vc11.didMoveToParentViewController(self)
        
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 12, self.view.frame.size.height - 66);
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


