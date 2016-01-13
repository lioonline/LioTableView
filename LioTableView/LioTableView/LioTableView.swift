//
//  LioTableView.swift
//  LioTableView
//
//  Created by Cocoa Lee on 16/1/13.
//  Copyright © 2016年 Cocoa Lee. All rights reserved.
//

import UIKit

class LioTableView: UIScrollView {

     let lioDelegate = LioTableViewDelegate?()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func initView(){
        
    }
    
    
}

protocol LioTableViewDelegate :NSObjectProtocol,UIScrollViewDelegate {
   
//    func
    
}


protocol LioTableViewDataSource:NSObjectProtocol {
    
    
    /**
     每个区中各有多少个单元格
     
     - parameter lioTableView: lioTableView
     - parameter section:      区
     
     - returns: 每个区中的单元格格数
     */
    @available (iOS 2.0,*)
    func lioTableView(lioTableView:LioTableView,numberOfRowsInSection section:Int)-> Int
    
    
    
    /**
     cell 初始化
     
     - parameter lioTableView: lioTableView
     - parameter indexPath:    索引路径
     
     - returns: 返回 cell
     */
    @available (iOS 2.0,*)
    func lioTableView(lioTableView:LioTableView,cellForRowAtIndexPath indexPath:NSIndexPath) -> Int
    
    
    
    /**
     在 lioTableView 中有多少个区
     
     - parameter lioTableView: lioTableView
     
     - returns: 返回区的个数
     */
    @available (iOS 2.0,*)
    func numberOfSectionsInLioTableView(lioTableView:LioTableView)->Int
    
    
    
    /**
     设置 Header 标题
     
     - parameter lioTableView: lioTableView
     - parameter section:      区
     
     - returns: Header 标题
     */
    @available (iOS 2.0,*)
    func lioTableView(lioTableView:LioTableView,titleForHeaderInSection section:Int) -> String?
    
    
    
    /**
    设置 Footer 标题
     
     - parameter lioTableView: lioTableView
     - parameter secton:       区
     
     - returns: Footer 标题
     */
    @available (iOS 2.0,*)
    func lioTableView(lioTableView:LioTableView,titleForFooterInSecton secton:Int) -> String?
    
    
    /**
     编辑
     
     - parameter lioTableView: lioTableView
     - parameter indexPath:    索引路径
     
     - returns: 是否允许编辑
     */
    @available (iOS 2.0,*)
    func lioTableView(lioTableView:LioTableView,canEditRowAtIndexPath indexPath:NSIndexPath) -> Bool
    
    
    /**
     删除
     
     - parameter lioTableView: lioTableView
     - parameter indexPath:    索引路径
     
     - returns: 是否可以删除
     */
    func lioTableView(lioTableView:LioTableView,canMoveRowAtIndexpath indexPath:NSIndexPath) -> Bool
    
    
    
}