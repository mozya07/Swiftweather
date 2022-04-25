//
//  SoundPlayer.swift
//  tennki
//
//  Created by cmStudent on 2022/01/15.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    //スズメ開始
    let suzumeData = NSDataAsset(name: "スズメが鳴く朝")!.data
    
    var suzumePlayer: AVAudioPlayer!
    
    func suzumePlay() {
        do {
        
        suzumePlayer = try AVAudioPlayer(data: suzumeData)
        
        suzumePlayer.play()
        } catch {
            print("スズメが鳴く朝で、エラーが発生しました！")
        }
    }
    
    func suzumeStop() {
        do {
        
        suzumePlayer = try AVAudioPlayer(data: suzumeData)
        
        suzumePlayer.stop()
        } catch {
            print("スズメで、エラーが発生しました！")
        }
    }
    //スズメ終了
    
    //カラス開始
    let karasuData = NSDataAsset(name: "カラスが鳴く夕方")!.data
    
    var karasuPlayer: AVAudioPlayer!
    
    func karasuPlay() {
        do {
        
        karasuPlayer = try AVAudioPlayer(data: karasuData)
        
        karasuPlayer.play()
        } catch {
            print("カラスで、エラーが発生しました！")
        }
    }
    
    func karasuStop() {
        do {
        
        karasuPlayer = try AVAudioPlayer(data: karasuData)
        
        karasuPlayer.stop()
        } catch {
            print("カラスで、エラーが発生しました！")
        }
    }
    //カラス終了
    
    //街雨開始
    let tounrainData = NSDataAsset(name: "街雨")!.data
    
    var tounrainPlayer: AVAudioPlayer!
    
    func tounrainPlay() {
        do {
        
        tounrainPlayer = try AVAudioPlayer(data: tounrainData)
        
        tounrainPlayer.play()
        } catch {
            print("街雨で、エラーが発生しました！")
        }
    }
    
    func tounrainStop() {
        do {
        
        tounrainPlayer = try AVAudioPlayer(data: tounrainData)
        
        tounrainPlayer.stop()
        } catch {
            print("街雨で、エラーが発生しました！")
        }
    }
    //街雨終了
    
    //雪玉開始
    let yukiData = NSDataAsset(name: "雪玉")!.data
    
    var yukiPlayer: AVAudioPlayer!
    
    func yukiPlay() {
        do {
        
            yukiPlayer = try AVAudioPlayer(data: yukiData)
        
            yukiPlayer.play()
        } catch {
            print("雪玉で、エラーが発生しました！")
        }
    }
    
    func yukiStop() {
        do {
        
            yukiPlayer = try AVAudioPlayer(data: yukiData)
        
            yukiPlayer.stop()
        } catch {
            print("雪玉で、エラーが発生しました！")
        }
    }
    //雪玉終了
    
    //落雷開始
    let rakuraiData = NSDataAsset(name: "落雷")!.data
    
    var rakuraiPlayer: AVAudioPlayer!
    
    func rakuraiPlay() {
        do {
        
        rakuraiPlayer = try AVAudioPlayer(data: rakuraiData)
        
        rakuraiPlayer.play()
        } catch {
            print("落雷で、エラーが発生しました！")
        }
    }
    
    func rakuraiStop() {
        do {
        
        rakuraiPlayer = try AVAudioPlayer(data: rakuraiData)
        
        rakuraiPlayer.stop()
        } catch {
            print("落雷で、エラーが発生しました！")
        }
    }
    //落雷終了
    
    //風開始
    let kazeData = NSDataAsset(name: "風")!.data
    
    var kazePlayer: AVAudioPlayer!
    
    func kazePlay() {
        do {
        
        kazePlayer = try AVAudioPlayer(data: kazeData)
        
        kazePlayer.play()
        } catch {
            print("風で、エラーが発生しました！")
        }
    }
    
    func kazeStop() {
        do {
        
        kazePlayer = try AVAudioPlayer(data: kazeData)
        
    kazePlayer.stop()
        } catch {
            print("風で、エラーが発生しました！")
        }
    }
    //風終了
    
    //強風開始
    let tuyokazeData = NSDataAsset(name: "強風")!.data
    
    var tuyokazePlayer: AVAudioPlayer!
    
    func tuyokazePlay() {
        do {
        
        tuyokazePlayer = try AVAudioPlayer(data: tuyokazeData)
        
        tuyokazePlayer.play()
        } catch {
            print("強風で、エラーが発生しました！")
        }
    }
    
    func tuyokazeStop() {
        do {
        
        tuyokazePlayer = try AVAudioPlayer(data: tuyokazeData)
        
    tuyokazePlayer.stop()
        } catch {
            print("強風で、エラーが発生しました！")
        }
    }
    //強風終了
    
    //異次元空間開始
    let izigennData = NSDataAsset(name: "異次元空間")!.data
    
    var izigennPlayer: AVAudioPlayer!
    
    func izigennPlay() {
        do {
        
            izigennPlayer = try AVAudioPlayer(data: izigennData)
        
            izigennPlayer.play()
        } catch {
            print("異次元空間で、エラーが発生しました！")
        }
    }
    
    func izigennStop() {
        do {
        
            izigennPlayer = try AVAudioPlayer(data: izigennData)
        
            izigennPlayer.stop()
        } catch {
            print("異次元空間で、エラーが発生しました！")
        }
    }
    //異次元空間終了
    
    //水中音開始
    let suicyuuData = NSDataAsset(name: "水中音")!.data
    
    var suicyuuPlayer: AVAudioPlayer!
    
    func suicyuuPlay() {
        do {
        
            suicyuuPlayer = try AVAudioPlayer(data: suicyuuData)
        
            suicyuuPlayer.play()
        } catch {
            print("水中音で、エラーが発生しました！")
        }
    }
    
    func suicyuuStop() {
        do {
        
            suicyuuPlayer = try AVAudioPlayer(data: suicyuuData)
        
            suicyuuPlayer.stop()
        } catch {
            print("水中音で、エラーが発生しました！")
        }
    }
    //水中音終了
    
    //火山開始
    let kazannData = NSDataAsset(name: "火山のマグマ")!.data
    
    var kazannPlayer: AVAudioPlayer!
    
    func kazannPlay() {
        do {
        
            kazannPlayer = try AVAudioPlayer(data: kazannData)
        
            kazannPlayer.play()
        } catch {
            print("火山のマグマで、エラーが発生しました！")
        }
    }
    
    func kazannStop() {
        do {
        
            kazannPlayer = try AVAudioPlayer(data: kazannData)
        
            kazannPlayer.stop()
        } catch {
            print("火山のマグマで、エラーが発生しました！")
        }
    }
    //火山終了
    
    
    
    

}
