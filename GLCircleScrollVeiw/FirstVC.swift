//
//  FirstVC.swift
//  GLCircleScrollVeiw
//
//  Created by god、long on 15/7/3.
//  Copyright (c) 2015年 ___GL___. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, CirCleViewDelegate {

    
    var circleView: CirCleView!
    
    /********************************** System Methods *****************************************/
    //MARK:- System Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CirCle"
        self.automaticallyAdjustsScrollViewInsets = false
//        let imageArray: [UIImage!] = [UIImage(named: "first.jpg"), UIImage(named: "second.jpg"), UIImage(named: "third.jpg")]

//        self.circleView = CirCleView(frame: CGRectMake(0, 64, self.view.frame.size.width, 200), imageArray: imageArray)
        self.circleView = CirCleView(frame: CGRectMake(0, 64, self.view.frame.size.width, 100), imageArray: ["http://appui.mobi/public/upload/share/000/000/017/96/e5fed2243691ff7a4ae4007bb75b98217IlzVQ_320x999.jpg", "http://appui.mobi/public/upload/share/000/000/017/98/8d1f57ef0f4c2c9cb64f447f14b47a16eC8bU0_320x999.jpg", "http://appui.mobi/public/upload/share/000/000/018/08/d8ad3ac4eadf4fc9b7d7c3736d4448afc1myUA_320x999.jpg"])
        
        circleView.backgroundColor = UIColor.orangeColor()
        circleView.delegate = self
        self.view.addSubview(circleView)
        
        let tempButton = UIButton(frame: CGRectMake(0, 300, self.view.frame.size.width, 20))
        tempButton.backgroundColor = UIColor.redColor()
        tempButton.setTitle("appendImage", forState: UIControlState.Normal)
        tempButton.addTarget(self, action: #selector(FirstVC.setImage(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(tempButton)
    }

    
    /********************************** Privite Methods ***************************************/
    //MARK:- Privite Methods
    func setImage(sender: UIButton) {
//        circleView.imageArray = [UIImage(named: "first.jpg"), UIImage(named: "third.jpg")]
//        circleView.urlImageArray = ["http://pic1.nipic.com/2008-09-08/200898163242920_2.jpg"]
    }
    
    
    
    
    /********************************** Delegate Methods ***************************************/
    //MARK:- Delegate Methods
    //MARK: CirCleViewDelegate Methods

    func clickCurrentImage(currentIndxe: Int) {
        print(currentIndxe, terminator: "");
    }
    

    
    
    /***************************** End & ReceiveMe Methods ************************************/
    //MARK:- End Methods

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
