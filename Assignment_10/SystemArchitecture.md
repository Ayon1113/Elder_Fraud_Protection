# Elder Fraud Protection Architecture

! [Diagram 1](Diagram1.png)
The Diagram starts with the UI component allowing the user to scan either their outlook or gmail email.
The scanning itself is done by the frontend which sends this info through our API to the backend.
It gets stored as a piece of data and gets analyzed by our AI to see if it is spam or not, that result is then sent back to the user.

! [Diagram 2](Diagram2.JPG)
The Diagram describes the info stored in our database. For the time being we only plan to store email text that has been scanned by the user so that we may train our AI model using that data in the future.

! [Diagram 3](Diagram3.JPG)
The Diagram describes the call sequence for the actual spam analysis feature. If all goes smoothly then the body of an email should get extracted, sent to the api, analyzed, and have the results of that analysis returned to the user. Along the way a few errors can possibly occur such as there being no text to extract, or for whatever reason the scan feature not working.
