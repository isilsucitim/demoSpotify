

import UIKit


extension UIImageView{
    
    func urlImageDownLoad(url:String)  {
        
        let urlx = URL(string: url)
        URLSession.shared.dataTask(with: urlx!) { (data, res, err) in
            
            
            if err == nil
            {
                
                DispatchQueue.main.async {
                    self.image = UIImage(data: data!)
                }
                
            }
            
            }.resume()
        
        
        
    }
    
    
}
