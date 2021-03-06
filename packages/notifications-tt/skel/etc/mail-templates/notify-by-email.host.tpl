#
# Mail Template used for Host Notifications
#
#
# Mail starts here --->
SUBJECT: *** [% NOTIFICATIONTYPE %] *** [% HOSTNAME %] is [% HOSTSTATE %]
TO: [% CONTACTEMAIL %]
#FROM: omd@domain.com
#REPLY-TO: support@domain.com

--HOST-ALERT----------------------
- Hostname:    [% HOSTNAME %]
- Hostaddress: [% HOSTADDRESS %]
- - - - - - - - - - - - - - - - -
- State:       [% HOSTSTATE %]
- Date:        [% SHORTDATETIME %]
- Output:      [% HOSTOUTPUT %]
-              [% LONGHOSTOUTPUT %]
[% IF NOTIFICATIONTYPE == 'ACKNOWLEDGEMENT' %]
----------------------------------
- Author:      [% ACKAUTHOR %]
- Comment:     [% ACKCOMMENT %]
[% END %]
----------------------------------
[% IF NOTIFICATIONCOMMENT %]
- Comment:     [% NOTIFICATIONCOMMENT %]
----------------------------------
[% END %]
