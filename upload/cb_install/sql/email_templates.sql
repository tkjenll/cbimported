
--
-- Dumping data for table `email_templates`
--

INSERT INTO `{tbl_prefix}email_templates` (`email_template_id`, `email_template_name`, `email_template_code`, `email_template_subject`, `email_template`, `email_template_allowed_tags`) VALUES
(1, 'Share Video Template', 'share_video_template', '[{website_title}] - {username} wants to share a video with you', '<html>\r\n<head>\r\n<style type="text/css">\r\n<!--\r\n.title {\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	padding: 5px;\r\n	font-weight:bold;\r\n	color: #FFFFFF;\r\n	font-size: 16px;\r\n}\r\n.title2 {\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	padding: 5px;\r\n	font-weight:bold;\r\n	color: #000000;\r\n	font-size: 14px;\r\n}\r\n.messege {\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	padding: 5px;\r\n	font-weight:bold;\r\n	color: #000000;\r\n	font-size: 12px;\r\n}\r\n#videoThumb{\r\n	width: 120px;\r\n	padding: 2px;\r\n	margin: 3px;\r\n	border: 1px solid #F0F0F0;\r\n	text-align: center;\r\n	vertical-align: middle;\r\n}\r\n#videoThumb img{border:0px}\r\nbody,td,th {\r\n	font-family: tahoma;\r\n	font-size: 11px;\r\n	color: #FFFFFF;\r\n}\r\n.text {\r\n	font-family: tahoma;\r\n	font-size: 11px;\r\n	color: #000000;\r\n	padding: 5px;\r\n}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="5">\r\n  <tr>\r\n    <td bgcolor="#53baff" ><span class="title">{website_title}</span>share video</td>\r\n  </tr>\r\n  <tr>\r\n    <td height="20" class="messege">{username} wants to share Video With You\r\n      <div id="videoThumb"><a href="{video_link}"><img src="{video_thumb}"><br>\r\n    watch video</a></div></td>\r\n  </tr>\r\n  <tr>\r\n    <td class="text" ><span class="title2">Video Description</span><br>\r\n      <span class="text">{video_description}</span></td>\r\n  </tr>\r\n  <tr>\r\n    <td><span class="title2">Personal Message</span><br>\r\n      <span class="text">{user_message}\r\n      </span><br>\r\n      <br>\r\n<span class="text">Thanks,</span><br> \r\n<span class="text">{username}</span></td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor="#53baff">copyrights {date_year} {website_title}</td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>', '{website_title},{'),
(2, 'Email Verification Template', 'email_verify_template', '[{website_title}] - Account activation email', 'Hello {username},\r\nThank you for joining {website_title}, one last step is required in order to activate your account\r\n\r\n<a href=''{baseurl}/activation.php?av_username={username}&avcode={avcode}''>Click Here</a>\r\n{baseurl}/activation.php?av_username={username}&avcode={avcode}\r\n\r\nEmail           : {email}\r\nUsername        : {username}\r\nActivation code : {avcode}\r\n\r\nif above given is not working , please go here and activate it\r\n<a href=''{baseurl}/activation.php''>{baseurl}/activation.php</a>\r\n\r\n====================\r\nRegards\r\n{website_title}', ''),
(3, 'Private Message Notification', 'pm_email_message', '[{website_title}] - {sender} has sent you a private message', '{sender} has sent you a private message, \r\n\r\n{subject}\r\n"{content}"\r\n\r\nclick here to view your inbox <a href="{baseurl}/private_message.php?mode=inbox&mid={msg_id}">{baseurl}/private_message.php?mode=inbox&mid={msg_id}</a>\r\n\r\n{website_title}', ''),
(4, 'Acitvation code request template', 'avcode_request_template', '[{website_title}] - Account activation code request', 'Hello {username},\r\n\r\nYour Activation Code is : {avcode}\r\n<a href=''{baseurl}/activation.php?av_username={username}&avcode={avcode}''>Click Here</a> To goto Activation Page\r\n\r\nDirect Activation\r\n==========================================\r\nClick Here or Copy & Paste the following link in your browser\r\n{baseurl}/activation.php?av_username={username}&avcode={avcode}\r\n\r\nif above given links are not working, please go here and activate it\r\n\r\nEmail           : {email}\r\nUsername        : {username}\r\nActivation code : {avcode}\r\n\r\nif above given is not working , please go here and activate it\r\n<a href=''{baseurl}/activation.php''>{baseurl}/activation.php</a>\r\n\r\n----------------\r\nRegards\r\n{website_title}', 'username,email,avcode,doj'),
(5, 'Welcome Message Template', 'welcome_message_template', 'Welcome {username} to {website_title}', 'Hello {username},\r\nThanks for joining at {website_title}!, you are now part of our community and we hope you will enjoy your stay\r\n\r\nAll the best,\r\n{website_title}', 'username,email'),
(6, 'Password Reset Request', 'password_reset_request', '[{website_title}] - Password reset confirmation', 'Dear {username}\r\nyou have requested a password reset, please follow the link in order to reset your password\r\n<a href="{baseurl}/forgot.php?mode=reset_pass&user={userid}&avcode={avcode}">{baseurl}/forgot.php?mode=reset_pass&user={userid}&avcode={avcode}</a>\r\n\r\n-----------------------------------------\r\nIF YOU HAVE NOT REQUESTED A PASSWORD RESTE - PLEASE IGNORE THIS MESSAGE\r\n-----------------------------------------\r\nRegards\r\n{website_title}', 'username,userid,avcode'),
(7, 'Password Reset Details', 'password_reset_details', '[{website_title}] - Password reset details', 'Dear {username}\r\nyour password has been reset\r\nyour new password is : {password}\r\n\r\n<a href="{login_link}">click here to login to website</a>\r\n<{login_link}>\r\n\r\n---------------\r\nRegards\r\n{website_title}', 'username,password'),
(8, 'Forgot username request', 'forgot_username_request', '[{website_title}] - your {website_title} username', 'Hello,\r\nyour {website_title} username is : {username}\r\n\r\n--------------\r\nRegards\r\n{website_title}', '{username}'),
(9, 'Friend Request Email', 'friend_request_email', '[{website_title}] {username} add you as friend', 'Hi {reciever},\r\n{sender} added you as a friend on {website_title}. We need to confirm that you know {sender} in order for you to be friends on {website_title}.\r\n\r\n<a href="{sender_link}">View profile of {sender}</a> \r\n<a href="{request_link}">click here to respond to friendship request</a>\r\n\r\nThanks,\r\n{website_title} Team', 'reciever,sender,sender_link,request_link'),
(10, 'Friend Confirmation Email', 'friend_confirmation_email', '[{website_title}] - {sender} has confirmed you as a friend', 'Hi {reciever},\r\n{sender} confirmed you as a friend on {website_title}.\r\n\r\n<a href="{sender_link}">View {sender} profile</a>\r\n\r\nThanks,\r\nThe {website_title} Team', 'sender,reciever,sender_link'),
(11, 'Group Invitation', 'group_invitation', '[{website_title}] {sender} has invited you to join group �{group_name}�', '{sender} invited you to join the {website_title} group "{group_name}".\r\n\r\n{group_description}\r\n\r\nTo see more details and confirm this group invitation, follow the link below:\r\n<a href="{group_url}">{group_url}</a>\r\n\r\nThanks,\r\n{website_title}', 'sender,reciever,group_name,group_url'),
(12, 'Contact Form', 'contact_form', '[{website_title} - Contact] {reason} from {name}', 'Name : {name}\r\nEmail : {email}\r\nReason : {reason}\r\n\r\nMessage:\r\n{message}\r\n\r\n===============\r\nIp : {ip_address}\r\ndate : {now}', ''),
(13, 'Video Acitvation Email', 'video_activation_email', '[{website_title}] - Your video has been activated', 'Hello {username},\r\nYour video has been reviewed and activated by one of our staff, thanks for uploading this video. You can view this video here.\r\n{video_link}\r\n\r\nThanks\r\n{website_title} Team', ''),
(14, 'User Comment Email', 'user_comment_email', '[{website_title}] {username} made comment on your {obj}', '{username} has commented on your {obj}\r\n"{comment}"\r\n\r\n<a href="{obj_link}">{obj_link}</a>\r\n\r\n{website_title} team', ''),
(15, 'Photo Share Template', 'photo_share_template', '{username} wants to share photo with you', '<html>\r\n<head>\r\n<style type="text/css">\r\n<!--\r\n.title {\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	padding: 5px;\r\n	font-weight:bold;\r\n	color: #FFFFFF;\r\n	font-size: 16px;\r\n}\r\n.title2 {\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	padding: 5px;\r\n	font-weight:bold;\r\n	color: #000000;\r\n	font-size: 14px;\r\n}\r\n.messege {\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	padding: 5px;\r\n	font-weight:bold;\r\n	color: #000000;\r\n	font-size: 12px;\r\n}\r\n#videoThumb{\r\n	float:left;\r\n	padding: 2px;\r\n	margin: 3px;\r\n	border: 1px solid #F0F0F0;\r\n	text-align: center;\r\n	vertical-align: middle;\r\n}\r\n#videoThumb img{border:0px}\r\nbody,td,th {\r\n	font-family: tahoma;\r\n	font-size: 11px;\r\n	color: #FFFFFF;\r\n}\r\n.text {\r\n	font-family: tahoma;\r\n	font-size: 11px;\r\n	color: #000000;\r\n	padding: 5px;\r\n}\r\n-->\r\n</style>\r\n</head>\r\n<body>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="5">\r\n  <tr>\r\n    <td bgcolor="#0099cc" ><span class="title">{website_title}</span></td>\r\n  </tr>\r\n\r\n  <tr>\r\n    <td height="20" class="messege">{username} wants to share this photo with you<br>\r\n      <div id="videoThumb"><a class="text" title="{photo_title}" href="{photo_link}"><img src="{photo_thumb}"><br>\r\n    View Photo</a></div></td>\r\n  </tr>\r\n  <tr>\r\n    <td class="text" ><span class="title2">Photo Description</span><br>\r\n      <span class="text">{photo_description}</span></td>\r\n  </tr>\r\n  <tr>\r\n    <td><span class="title2">Personal Message</span><br>\r\n      <span class="text">{user_message}\r\n      </span><br>\r\n      <br>\r\n<span class="text">Thanks,</span><br> \r\n<span class="text">{website_title}</span></td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor="#0099cc">copyrights {date_year} {website_title}</td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>', ''),
(
NULL , 'Video Subscription Email', 'video_subscription_email', '{uploader} has uploaded new video on {website_title}', 'Hello {username} You have been notified by {website_title} that {uploader} has uploaded new video Video Title : {video_title} Video Description : {video_description} <a href="{video_link}"> <img src="{video_thumb" border="0" height="90" width="120"><br> click here to watch this video</a> You are notified because you are subscribed to {uploader}, you can manage your subscriptions by going to your account and click on manage subscriptions. {website_title}', ''
);



INSERT INTO `{tbl_prefix}email_templates` (`email_template_id`, `email_template_name`, `email_template_code`, `email_template_subject`, `email_template`, `email_template_allowed_tags`) VALUES (NULL, 'Collection Share Template', 'collection_share_template', '{username} wants to share collection with you', '<html>
<head>
<style type="text/css">
<!--
.title {
	font-family: Arial, Helvetica, sans-serif;
	padding: 5px;
	font-weight:bold;
	color: #FFFFFF;
	font-size: 16px;
}
.title2 {
	font-family: Arial, Helvetica, sans-serif;
	padding: 5px;
	font-weight:bold;
	color: #000000;
	font-size: 14px;
}
.messege {
	font-family:Tahoma, Geneva, sans-serif;
	padding: 5px;
	font-weight:bold;
	color: #000000;
	font-size: 11px;
}
#videoThumb{
	float:left;
	padding: 2px;
	margin: 3px;
	border: 1px solid #F0F0F0;
	text-align: center;
	vertical-align: middle;
}
#videoThumb img{border:0px}
body,td,th {
	font-family: tahoma;
	font-size: 11px;
	color: #FFFFFF;
}
.text, .text2 {
	font-family: tahoma;
	font-size: 11px;
	color: #000000;
	padding: 5px;
}

.text2 {
	font-size: 10px;
	padding: 0px;
}
-->
</style>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td bgcolor="#0099cc" ><span class="title">{website_title}</span></td>
  </tr>

  <tr>
    <td height="20" class="messege">{username} wants to share this collection with you.<br>
      <div id="videoThumb"><a class="text" title="{name}" href="{collection_link}"><img src="{collection_thumb}"><br>
    View Collection <small class=''text2''>({total_items} {type})</small></a></div></td>
  </tr>
  <tr>
    <td class="text" ><span class="title2">Collection Description</span><br>
      <span class="text">{description}</span></td>
  </tr>
  <tr>
    <td><span class="title2">Personal Message</span><br>
      <span class="text">{user_message}
      </span><br>
      <br>
<span class="text">Thanks,</span><br> 
<span class="text">{website_title}</span></td>
  </tr>
  <tr>
    <td bgcolor="#0099cc">copyrights {date_year} {website_title}</td>
  </tr>
</table>
</body>
</html>', '');