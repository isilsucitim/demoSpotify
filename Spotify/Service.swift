
import Foundation



class Service {
    
    func Get(handler:@escaping ([Music])->())  {
        
        let baseUrl = URL(string: "https://randomuser.me/api/?results=50")
        var jsonList = [Music]()
        
        URLSession.shared.dataTask(with: baseUrl!) { (data, ress, err) in
            if err == nil{
                
                let j = try! JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! JSON
                
                let jres = j["results"] as? [JSON]
                jres?.forEach({ (ss) in
                    
                    jsonList.append(Music.init(json: ss))
                    
                })
                
            }
            
            handler(jsonList)
            }.resume()
        
    }
    
    
}
