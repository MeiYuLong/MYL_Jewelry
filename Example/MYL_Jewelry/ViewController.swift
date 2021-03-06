//
//  ViewController.swift
//  MYL_Jewelry
//
//  Created by longjiao914@126.com on 03/10/2021.
//  Copyright (c) 2021 longjiao914@126.com. All rights reserved.
//

import UIKit
import MYL_Jewelry

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

    @IBAction func draw(_ sender: Any) {
        drawPNO()
//        draw365()
    }
    
    private func drawPNO() {
        let data = FDTicketLabelData()
        data.src_name = "src_name"
        data.src_phone = "src_phone"
        data.src_abbreviation = "THH"
        data.src_detail_address = "北京朝阳区奥运村街道北辰新纪元2-2402"
        data.src_district_name = "src_district_name"
        data.src_city_name = "src_city_name"
        data.src_province_name = "src_province_name"
        data.src_postal_code = "src_postal_code"
        
        data.dst_name = "dst_name"
        data.dst_phone = "dst_phone"
        data.dst_abbreviation = "THH"
        data.dst_detail_address = "北京朝阳区奥运村街道北辰新纪元2-2402"
        data.dst_district_name = "dst_district_name"
        data.dst_city_name = "dst_city_name"
        data.dst_province_name = "dst_province_name"
        data.dst_postal_code = "dst_postal_code"
        
        data.remark = "北京朝阳区奥运村街道北辰新纪元北京朝阳区奥运村街道北辰新纪元街道北辰新纪元北京朝阳区奥运村街道北辰新纪元街道北辰新纪元北京朝阳区奥运村街道北辰新纪元"
        self.imageView.image = FlashDrawManager.drawPNOLabel(data: data , 10)
    }
    
    private func draw365() {
        let data = FDTicketLabelData()
        data.src_title = "寄"
        data.src_name = "src_name北京朝阳区奥北京朝阳区奥北京朝阳区奥北京朝阳区奥奥北京朝阳区奥"
        data.src_phone = "456824562458724"
        data.src_detail_address = "北京朝阳区奥运村街道北辰新纪元2-2402北京朝阳区奥运村街道北辰新纪元2-2402北京朝阳区奥运村街"
        data.dst_title = "收"
        data.dst_name = "dst_name北京朝阳区奥"
        data.dst_phone = "dst_phone北京朝阳区奥"
        data.dst_detail_address = "北京朝阳区奥运村街道北辰新纪元2-2402"
        data.remark = "北京朝阳区奥运村街道北辰新纪元北京朝阳区奥运村街道北辰新纪元"
        self.imageView.image = FlashDrawManager.draw365Label(data: data, 10)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

