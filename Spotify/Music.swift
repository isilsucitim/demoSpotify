
import Foundation

struct Music {
    var Name:String?
    var SubName:String?
    var Pic:String?
    
    init() {
        
    }
    
    init(json:JSON) {
        let n = json["name"] as? JSON ?? JSON()
        SubName = "\(n["first"] as? String ?? "") \(n["last"] as? String ?? "")"
        let l = json["location"] as? JSON ?? JSON()
        Name = "\(l["city"] as? String ?? "")"
        let p = json["picture"] as? JSON ?? JSON()
        Pic = p["large"] as? String ?? ""
        
    }
    
    
}
