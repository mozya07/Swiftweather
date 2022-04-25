//
//  ContentView.swift
//  tennki
//
//  Created by cmStudent on 2022/01/11.
//

import SwiftUI

struct ContentView: View {
   
    @State var resultweatherMessage = "天気"
    
    @State var resulttempMessage = "気温"
  
    @State var resulthumidityMessage = "湿度"
    
    @State var basyo = "場所"
   
   
    @State var changetheweather = true
    
    @State var photoname = "晴れ"
    
    @State var ufo1 = "　"
    @State var ufo2 = "　"
    @State var ufo3 = "　"
    @State var ufo4 = "　"
    @State var ufo5 = "　"
    @State var ufo6 = "　"
    @State var ufo7 = "　"
    @State var ufo8 = "　"
    @State var ufo9 = "　"
    @State var ufo10 = "　"
    
    @State var ufomessagefirst = "稀にUFOが出現！！"
    @State var ufomessgaesecond = "見つけられたら良いことあるかもね"
    
    @State var off1 = true
    @State var off2 = true
    @State var off3 = true
    @State var off4 = true
    @State var off5 = true
    @State var off6 = true
    @State var off7 = true
    @State var off8 = true
    @State var off9 = true
    @State var off10 = true
    @State var ucyuuoff = false
    
    @State var randomnumber = 0
    
    @State var ucyuucount = 0
    
    let soundPlayer = SoundPlayer()
    
 
    
    let KeyCode = "864e988f1abe34c53726a3ce6ffadcaf"
   
    var obj = OpenWetherMap()
    
   
    func GetData(data: Temperatures){
        self.resultweatherMessage = ""
       
        self.resulttempMessage = "\(data.main.temp)°C"
       
        self.resulthumidityMessage = "\(data.main.humidity)%"
        
        data.weather.forEach{
            item in
            if( self.resultweatherMessage.count == 0 )
                
            {
                self.resultweatherMessage = item.weatherDescription
            }
            else{
                self.resultweatherMessage = self.resultweatherMessage +  item.weatherDescription
            }
        }
    }
    
    var body: some View {
        ZStack {
            Image("\(photoname)")
                .resizable()
                           .aspectRatio(contentMode: .fill)
                           .edgesIgnoringSafeArea(.all)
        VStack(alignment: .center) {
         
            HStack {
                
                
                
                Button(action: {
                    ucyuucount += 1
                    if (ucyuucount == 1) {
                        ufomessagefirst = "僕は宇宙人"
                         ufomessgaesecond = "君の名前は？"
                        
                        ucyuuoff = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            
                            ufomessagefirst = "へ〜"
                            ufomessgaesecond = "いい名前だね！"
                            
                            ucyuuoff = false
                        }
                        
                    } else if (ucyuucount == 2) {
                        ufomessagefirst = "僕の宇宙船を見せてあげる"
                         ufomessgaesecond = ""
                        ucyuuoff = true
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            photoname = "UFO陸"
                            ufomessagefirst = "いいでしょ〜"
                             ufomessgaesecond = ""
                            ucyuuoff = false
                        }
                        
                    } else if (ucyuucount == 3) {
                        ufomessagefirst = "僕の宇宙船が稀に映り込むから"
                         ufomessgaesecond = "見つけてみてね〜"
                    } else if (ucyuucount == 4) {
                        ufomessagefirst = "見つけられたらいいことあるかも"
                         ufomessgaesecond = "かもだからね！"
                        ucyuuoff = true
                        ucyuucount = 0
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            photoname = "晴れ"
                            ufomessagefirst = "稀にUFOが出現！！"
                            ufomessgaesecond =
                            "見つけられたら良いことあるかもね"
                            ucyuuoff = false
                        }
                        
                    }
                   
                    
            }) {
                Image("宇宙人")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
            }
            .disabled(ucyuuoff)
                
               
                
                
                VStack {
                    Text("\(ufomessagefirst)")
                        .foregroundColor(Color.white)
                    Text("\(ufomessgaesecond)")
                        .foregroundColor(Color.white)
                }
//                Spacer()
//            Image("\(topleftufo)")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 40, height: 40)
//
//                Spacer()
//
//                Image("\(topcenterufo)")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 40, height: 40)
//
//                Spacer()
//
//                Image("\(toprightufo)")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 40, height: 40)
//                Spacer()
            }
            
            Spacer()
            
            HStack {
              
                
            Text("\(basyo)")
                .padding()
                .foregroundColor(Color.white)
                .font(.custom("Times-Roman", size: 40))
             
            }
            
            HStack {
                Spacer()
                
                
                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            .disabled(off1)
                Spacer()

                Text("\(resultweatherMessage)")
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.custom("Times-Roman", size: 40))
                
                Spacer()

                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo6)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            .disabled(off6)

                Spacer()
            }
            
            HStack{
                Spacer()
                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo9)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            .disabled(off9)
                Spacer()
               
                Text("\(resulttempMessage)")
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.custom("Times-Roman", size: 40))
                
                Spacer()
                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            .disabled(off3)
                Spacer()
              
            }
            HStack{
                Spacer()
                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo4)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            .disabled(off4)
                Spacer()
               
                
                Text("\(resulthumidityMessage)")
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.custom("Times-Roman", size: 40))
                
                Spacer()
                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo10)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            .disabled(off10)
                Spacer()
            }
            
            HStack {
            
            Text("・背景の天気変更")
                .padding()
                .foregroundColor(Color.white)
                .offset(x: -80, y: 0)
                .font(.custom("Times-Roman", size: 20))
                
                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo7)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            .disabled(off7)
              
                
            }
            
            
            ScrollView(.horizontal) {
            HStack {
                Group {
                Button(action: {
                    
                 photoname = "晴れ"
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                   
                    
            }) {
                Image(systemName: "sun.max")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.orange)
                    .frame(width: 70, height: 70)
            }
                
                Button(action: {
                    
                 photoname = "日の入り"
                    soundPlayer.suzumePlay()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                   
                    
            }) {
                Image(systemName: "sunrise")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.orange)
                    .frame(width: 70, height: 70)
            }
                    
                    Button(action: {
                        
                     photoname = "日の出"
                        soundPlayer.karasuPlay()
                        soundPlayer.suzumeStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.yukiStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.izigennStop()
                        soundPlayer.suicyuuStop()
                        soundPlayer.kazannStop()
                        
                }) {
                    Image(systemName: "sunset")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.orange)
                        .frame(width: 70, height: 70)
                }
                
                
                Button(action: {
                    
                 photoname = "薄い曇り"
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
            }) {
                Image(systemName: "cloud")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: 70, height: 70)
            }
                }
                
                Group {
                
                Button(action: {
                    
                 photoname = "厚い曇り"
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
            }) {
                Image(systemName: "smoke.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: 70, height: 70)
            }
                
                
                Button(action: {
                    
                    photoname = "曇り"
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
            }) {
                Image(systemName: "cloud")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.gray)
                    .frame(width: 70, height: 70)
            }
                
               
                
                Button(action: {
                    photoname = "雨"
                    soundPlayer.tounrainPlay()
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                 
                    
            }) {
                Image(systemName: "cloud.drizzle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
            }
                }
                
                Group {
                
                Button(action: {
                    
                    photoname = "夜"
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
            }) {
                Image(systemName: "moon.stars")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.yellow)
                    .frame(width: 70, height: 70)
            }
                
                    Button(action: {
                        
                        photoname = "日食"
                        soundPlayer.suzumeStop()
                        soundPlayer.karasuStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.yukiStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.izigennStop()
                        soundPlayer.suicyuuStop()
                        soundPlayer.kazannStop()
                        
                }) {
                    Image(systemName: "moon.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.yellow)
                        .frame(width: 70, height: 70)
                }
                    
                    Button(action: {
                        
                        photoname = "月食"
                        soundPlayer.suzumeStop()
                        soundPlayer.karasuStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.yukiStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.izigennStop()
                        soundPlayer.suicyuuStop()
                        soundPlayer.kazannStop()
                        
                }) {
                    Image(systemName: "moon.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.yellow)
                        .frame(width: 70, height: 70)
                }
                    
                
                
                
                Button(action: {
                    
                    photoname = "雪"
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
            }) {
                Image(systemName: "cloud.snow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: 70, height: 70)
            }
                    
                    Button(action: {
                        
                        photoname = "雪道"
                        soundPlayer.yukiPlay()
                        soundPlayer.suzumeStop()
                        soundPlayer.karasuStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.izigennStop()
                        soundPlayer.suicyuuStop()
                        soundPlayer.kazannStop()
                        
                }) {
                    Image(systemName: "cloud.snow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.gray)
                        .frame(width: 70, height: 70)
                }
                    
                    Button(action: {
                        
                        photoname = "雪結晶"
                        soundPlayer.suzumeStop()
                        soundPlayer.karasuStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.yukiStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.izigennStop()
                        soundPlayer.suicyuuStop()
                        soundPlayer.kazannStop()
                        
                }) {
                    Image(systemName: "snow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.white)
                        .frame(width: 70, height: 70)
                }
                
                Button(action: {
                    
                    photoname = "雷"
                    soundPlayer.rakuraiPlay()
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
            }) {
                Image(systemName: "cloud.bolt.rain")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.yellow)
                    .frame(width: 70, height: 70)
            }
                
                }
                
                Group {
                Button(action: {
                    
                    photoname = "竜巻"
                    soundPlayer.kazePlay()
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
            }) {
                Image(systemName: "tornado")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: 40, height: 40)
            }
                
                
                Button(action: {
                    
                    photoname = "台風"
                    soundPlayer.tuyokazePlay()
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
            }) {
                Image(systemName: "tropicalstorm")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: 40, height: 40)
            }
                    
                    Button(action: {
                        
                        photoname = "ブラックホール"
                        soundPlayer.izigennPlay()
                        soundPlayer.suzumeStop()
                        soundPlayer.karasuStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.yukiStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.suicyuuStop()
                        soundPlayer.kazannStop()
                        
                }) {
                    Image(systemName: "tropicalstorm")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.black)
                        .frame(width: 40, height: 40)
                }
                    
                    Button(action: {
                        
                        photoname = "水中"
                        soundPlayer.suicyuuPlay()
                        soundPlayer.suzumeStop()
                        soundPlayer.karasuStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.yukiStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.izigennStop()
                        soundPlayer.kazannStop()
                        
                }) {
                    Image(systemName: "drop")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.blue)
                        .frame(width: 40, height: 40)
                }
                    
                    Button(action: {
                        
                        photoname = "草"
                        soundPlayer.suzumeStop()
                        soundPlayer.karasuStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.yukiStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.izigennStop()
                        soundPlayer.suicyuuStop()
                        soundPlayer.kazannStop()
                        
                }) {
                    Image(systemName: "leaf")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.green)
                        .frame(width: 40, height: 40)
                }
                    
                    Button(action: {
                        
                        photoname = "マグマ"
                        soundPlayer.kazannPlay()
                        soundPlayer.suzumeStop()
                        soundPlayer.karasuStop()
                        soundPlayer.tounrainStop()
                        soundPlayer.yukiStop()
                        soundPlayer.rakuraiStop()
                        soundPlayer.kazeStop()
                        soundPlayer.tuyokazeStop()
                        soundPlayer.izigennStop()
                        soundPlayer.suicyuuStop()
                      
                        
                        
                }) {
                    Image(systemName: "flame")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.red)
                        .frame(width: 40, height: 40)
                }
                }
            
            }
            }.frame(width: 360, height: 70)
            
//            ScrollView(.horizontal) {
//                ForEach(mData) { i in
//
//                    Button(action: {
//
//
//
//                }) {
//                    Image(i.systemweather)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 70, height: 70)
//                }
//
//                }
//
//            }
//            .frame(width: 360, height: 70)
//
            
            
            
            Button(action: {
                
                var invokeURL = ""
                if changetheweather == true {
                    basyo = "東小金井市の天気"
                    changetheweather.toggle()
                    invokeURL = "https://api.openweathermap.org/data/2.5/weather?q=koganei,jp&appid=\(self.KeyCode)&lang=ja&units=metric"
                    
                    ufomessagefirst = "稀にUFOが出現！！"
                    ufomessgaesecond =
                    "見つけられたら良いことあるかもね"
                    
                    
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
                    
                    randomnumber = Int.random(in: 1...100)
                     
                    if randomnumber == 10 {
                        ufo1 = "UFO"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = false
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 20 {
                        ufo1 = "　"
                        ufo2 = "UFO"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = false
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 30 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "UFO"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = false
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 40 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "UFO"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = false
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 50 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "UFO"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = false
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 60 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "UFO"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = false
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 70 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "UFO"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = false
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 80 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "UFO"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = false
                        off9 = true
                        off10 = true
                    } else if randomnumber == 90 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "UFO"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = false
                        off10 = true
                    } else if randomnumber == 100 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "UFO"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = false
                    } else {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                        
                    }
                   
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        if resultweatherMessage == "晴天" {
                            photoname = "晴れ"
                        } else if resultweatherMessage == "雲" {
                            photoname = "曇り"
                        } else if resultweatherMessage == "薄い雲" {
                            photoname = "薄い曇り"
                        } else if resultweatherMessage == "曇りがち" {
                            photoname = "薄い雨雲"
                        } else if resultweatherMessage == "厚い雲" {
                            photoname = "厚い曇り"
                        } else if resultweatherMessage == "雨" {
                            photoname = "雨"
                        } else if resultweatherMessage == "小雨" {
                            photoname = "雨"
                        } else if resultweatherMessage == "雷" {
                            photoname = "雷"
                        } else if resultweatherMessage == "雪" {
                            photoname = "雪"
                        }
                        
                     
                        
                        
                    }
                  
                  
                } else if changetheweather == false {
                    basyo = "新宿の天気"
                    changetheweather.toggle()
                    invokeURL = "https://api.openweathermap.org/data/2.5/weather?q=Shinjuku,jp&appid=\(self.KeyCode)&lang=ja&units=metric"
                    
                    ufomessagefirst = "稀にUFOが出現！！"
                    ufomessgaesecond =
                    "見つけられたら良いことあるかもね"
                    
                    soundPlayer.suzumeStop()
                    soundPlayer.karasuStop()
                    soundPlayer.tounrainStop()
                    soundPlayer.yukiStop()
                    soundPlayer.rakuraiStop()
                    soundPlayer.kazeStop()
                    soundPlayer.tuyokazeStop()
                    soundPlayer.izigennStop()
                    soundPlayer.suicyuuStop()
                    soundPlayer.kazannStop()
                    
                    randomnumber = Int.random(in: 0...100)
                     
                    if randomnumber == 10 {
                        ufo1 = "UFO"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = false
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 20 {
                        ufo1 = "　"
                        ufo2 = "UFO"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = false
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 30 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "UFO"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = false
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 40 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "UFO"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = false
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 50 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "UFO"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = false
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 60 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "UFO"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = false
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 70 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "UFO"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = false
                        off8 = true
                        off9 = true
                        off10 = true
                    } else if randomnumber == 80 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "UFO"
                        ufo9 = "　"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = false
                        off9 = true
                        off10 = true
                    } else if randomnumber == 90 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "UFO"
                        ufo10 = "　"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = false
                        off10 = true
                    } else if randomnumber == 100 {
                        ufo1 = "　"
                        ufo2 = "　"
                        ufo3 = "　"
                        ufo4 = "　"
                        ufo5 = "　"
                        ufo6 = "　"
                        ufo7 = "　"
                        ufo8 = "　"
                        ufo9 = "　"
                        ufo10 = "UFO"
                        off1 = true
                        off2 = true
                        off3 = true
                        off4 = true
                        off5 = true
                        off6 = true
                        off7 = true
                        off8 = true
                        off9 = true
                        off10 = false
                     } else {
                         ufo1 = "　"
                         ufo2 = "　"
                         ufo3 = "　"
                         ufo4 = "　"
                         ufo5 = "　"
                         ufo6 = "　"
                         ufo7 = "　"
                         ufo8 = "　"
                         ufo9 = "　"
                         ufo10 = "　"
                         off1 = true
                         off2 = true
                         off3 = true
                         off4 = true
                         off5 = true
                         off6 = true
                         off7 = true
                         off8 = true
                         off9 = true
                         off10 = true
                         
                     }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        if resultweatherMessage == "晴天" {
                            photoname = "晴れ"
                        } else if resultweatherMessage == "雲" {
                            photoname = "曇り"
                        } else if resultweatherMessage == "薄い雲" {
                            photoname = "薄い曇り"
                        } else if resultweatherMessage == "曇りがち" {
                            photoname = "薄い雨雲"
                        } else if resultweatherMessage == "厚い雲" {
                            photoname = "厚い曇り"
                        } else if resultweatherMessage == "雨" {
                            photoname = "雨"
                        } else if resultweatherMessage == "小雨" {
                            photoname = "雨"
                        } else if resultweatherMessage == "雷" {
                            photoname = "雷"
                        } else if resultweatherMessage == "雪" {
                            photoname = "雪"
                        }
                        
                      
                    }
                    
                   
                }
                
                self.obj.getWather(invoke_url: invokeURL, action: self.GetData)
               
                
                
            }) {
                
                Text(changetheweather ? "小金井市の天気を表示" : "日本電子専門学校の天気を表示")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                   
            }
            
           
            HStack {

                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo5)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(45)
            }
            .disabled(off5)

                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo8)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(45)
            }
            .disabled(off8)

                Button(action: {
                    
                   ufomessagefirst = "よく見つけられたね！"
                    ufomessgaesecond = "ガリガリ君もう一本当たるかも！？"
                    
            }) {
                Image("\(ufo2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(45)
            }
            .disabled(off2)

            }
            
            
           
          
            
        }
          
        }
    }
}

//               HStack{
//                   Text("天気 ")
//                       .padding()
//                   Text("\(resultMessage)")
//                   .padding()
//               }
//
//               HStack{
//                             Text("気温 ")
//                                 .padding()
//                             Text("\(tempMessage)")
//                             .padding()
//                         }
//                         HStack{
//                             Text("湿度 ")
//                                 .padding()
//                             Text("\(humidityMessage)")
//                             .padding()
//                         }
//                     }
//                 }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct MyData: Identifiable {
//    var id = UUID()
//    var systemweather: String
//}
//
//var mData = [
//    MyData(systemweather: "sun.max"),
//    MyData(systemweather: "cloud"),
//    MyData(systemweather: "cloud.drizzle"),
//    MyData(systemweather: "moon.stars"),
//    MyData(systemweather: "cloud.snow"),
//    MyData(systemweather: "cloud.bolt.rain"),
//    MyData(systemweather: "tropicalstorm"),
//]
