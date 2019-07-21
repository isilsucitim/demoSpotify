

import UIKit

class MusicCell: BaseCell<Music> {

    @IBOutlet var lblSubTitle: UILabel!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var imgMusic: UIImageView!
    
    
    
    override func SetupUI() {
        if let data = data{
         
            lblTitle.text = data.Name
            lblSubTitle.text = data.SubName
            imgMusic.urlImageDownLoad(url: data.Pic!)

        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
