//
//  ViewController.swift
//  ListViewTest
//
//  Created by Maplestory on 2018/7/29.
//  Copyright © 2018年 Maplestory. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return table_name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: nil)
        
        let title :String = table_name[indexPath.row].0
        let detail :String = table_name[indexPath.row].1
        cell.textLabel!.text = title
        cell.detailTextLabel!.text = detail
        cell.selectionStyle = UITableViewCellSelectionStyle.gray
        cell.focusStyle = UITableViewCellFocusStyle.custom
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("选中了第\(indexPath.row)个cell")
        
        print("btn click \(indexPath.row)")
        let index = indexPath.row
        switch index {
        //case 0:
            //while(true){
                
            //}
            //Thread.sleep(forTimeInterval: 20)
          //  DispatchQueue.main.sync {
          //      Thread.sleep(forTimeInterval: 1000)
         //   }\\\\\\\
        //    break
        case 0:
            while(true){
                Thread.sleep(forTimeInterval: 5)
            }
          //  DispatchQueue.main.sync {
                //Thread.sleep(forTimeInterval: 1)
          //  }
            break
        case 1:
             print(table_name[10])
            break
            
        default:
            break
        }
    }
    
    let table_name : [(String,String)] =
        [
            //("应用卡死（系统问题）","故障场景：UI线程阻塞\n故障影响：应用无响应，Home键无法切出\n恢复策略：无"),
            ("应用卡死","故障场景：UI线程阻塞\n故障影响：应用无响应，Home键可以切出\n恢复策略：无"),
            ("应用闪退","故障场景：空指针、内存越界\n故障影响：应用自动退出\n恢复策略：无"),

            //("正常按钮","用于测试状态"),
            ]
    
    let table:UITableView = UITableView(frame:UIScreen.main.bounds,style:UITableViewStyle.plain)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view!.addSubview(table)
        table.dataSource = self
        table.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

