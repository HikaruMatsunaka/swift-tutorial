//
//  ViewController2.swift
//  ios-tutorial-20230114
//
//  Created by 松中光 on 2023/01/14.
//

import UIKit

class ViewController2: UIViewController {
    
    //遷移元から受けたtextを格納する変数を定義
    var textView2 : String = ""
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //変数textを代入
        label1.text = textView2

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
