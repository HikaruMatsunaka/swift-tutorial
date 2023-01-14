//
//  ViewController.swift
//  ios-tutorial-20230114
//
//  Created by 松中光 on 2023/01/14.
//

import UIKit

class ViewController1: UIViewController {

    //UI要素の参照をOutletで行う
    //型定義があるの良すぎる
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textField1: UITextField!
    
    //アクションを追加する
    //senderとはアクションのトリガーとなったUIを示す
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        //textField1で入力したテキストが無い場合は、空の文字列を変数に格納する
        let text = textField1.text ?? ""
        //ラベルテキストを置き換える
        label1.text = "We wil we will? \(text)"
    }
    
    //画面遷移時にデータを受け渡す記述。今回はsegueを使用
    //prepare関数は画面遷移時に呼び出される
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //事前に設定したsegueのidentifier
        if segue.identifier == "showView2" {
            
            //segueのdestinationから、遷移先のViewControllerを取得できる
            //as!は型定義　詳しくは→https://fukatsu.tech/swift-cast#i
            let vc = segue.destination as! ViewController2
            //遷移先のViewController2で宣言した変数textを指定する
            vc.textView2 = textField1.text ?? ""
        }
    }
    
    
    //テキストフィールドの入力検証を行う関数
    override func shouldPerformSegue(
           withIdentifier identifier: String,
           sender: Any?) -> Bool {

           if identifier == "showView2" {
               if let text = textField1.text,
                   !text.trimmingCharacters(in: .whitespaces).isEmpty {
                   return true
               }
           }
            //何も入力されていないときはsegueが実行されれない
           return false
       }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

