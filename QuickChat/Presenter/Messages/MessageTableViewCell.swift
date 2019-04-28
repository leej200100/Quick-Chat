//  MIT License

//  Copyright (c) 2019 Haik Aslanyan

//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.


import UIKit

protocol MessageTableViewCellDelegate: class {
  func messageTableViewCell(didSelect message: ObjectMessage)
}

class MessageTableViewCell: UITableViewCell {
  
  @IBOutlet weak var messageTextView: UITextView!
  @IBOutlet weak var attachmentImageView: UIImageView!
  @IBOutlet weak var attachmentImageViewHeightConstraint: NSLayoutConstraint!
  weak var delegate: MessageTableViewCellDelegate?
  
  override func prepareForReuse() {
    super.prepareForReuse()
    messageTextView.text = nil
//    attachmentImageView.cancelDownload()
//    attachmentImageView.image = nil
//    attachmentImageViewHeightConstraint.constant = 0
  }
  
  func set(_ message: ObjectMessage) {
    messageTextView.text = message.message
  }
  
  
}

class UserMessageTableViewCell: MessageTableViewCell {
  
  @IBOutlet weak var profilePic: UIImageView!

  override func set(_ message: ObjectMessage) {
    super.set(message)
//    profilePic.
  }
}



/*
 
 class SenderCell: UITableViewCell {
 
 @IBOutlet weak var profilePic: RoundedImageView!
 @IBOutlet weak var message: UITextView!
 @IBOutlet weak var messageBackground: UIImageView!
 
 func clearCellData()  {
 self.message.text = nil
 self.message.isHidden = false
 self.messageBackground.image = nil
 }
 
 override func awakeFromNib() {
 super.awakeFromNib()
 self.selectionStyle = .none
 self.message.textContainerInset = UIEdgeInsetsMake(5, 5, 5, 5)
 self.messageBackground.layer.cornerRadius = 15
 self.messageBackground.clipsToBounds = true
 }
 }
 
 class ReceiverCell: UITableViewCell {
 
 @IBOutlet weak var message: UITextView!
 @IBOutlet weak var messageBackground: UIImageView!
 
 func clearCellData()  {
 self.message.text = nil
 self.message.isHidden = false
 self.messageBackground.image = nil
 }
 
 override func awakeFromNib() {
 super.awakeFromNib()
 self.selectionStyle = .none
 self.message.textContainerInset = UIEdgeInsetsMake(5, 5, 5, 5)
 self.messageBackground.layer.cornerRadius = 15
 self.messageBackground.clipsToBounds = true
 }
 }
*/
