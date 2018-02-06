# Radar-AVPlayer-4K-HDR-zapping-times

Project created to report bug on switching streams on the AVPlayerViewController when changing the playerItem with match content setting in the tvOS >11.2.

· Open radar: https://openradar.appspot.com/...

# Description
When having the 'Match Dynamic Range' setting is activated switching the playerItem (zapping) will have a delay between 2 and 5 seconds.

# Expected 
No delay as it is without this setting.

# Steps

Running the app and using the select gesture (press) will switch the "stream / channel". Just observe the initial adjustment and "lag".

# Environment

- Xcode Version 9.2 (9C40b)
- Apple TV 4K tvOS 11.2.5 (15K552)
