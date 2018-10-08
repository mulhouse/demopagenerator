# Demo Page Generator
Some bands wants to share their music and don't want to be on big platforms.
This is a bash script to generate a single static mobile friendly html5 page from media files presents in /audio (and albums subdirs).

Examples : 
* [Albums list](https://mulhouse.github.io/mutantpillow/)
* [Random](https://mulhouse.github.io/moncheri/random.html)
* [Random + id3](https://mulhouse.github.io/moncheri/randomid3.html)
* [List + random](https://mulhouse.github.io/moncheri/)

## Features
* each track is playable and downloadable
* when a tracks ends, next tracks automatically plays
* playing a track pauses all others
* random playing available
* if hosted on github, link to master.zip to dl all tracks
* manifest and SW to be installed as a PWA on mobile
* opengraph tags for social sharing
* displays a CC license
* can read and display id3 tags and pics with https://github.com/leetreveil/musicmetadata
* can add social buttons without tracking with https://sharingbuttons.io/

## How to use
1. Fork/clone this project
2. Setup your audio dir :
    * 1 subdir per album
    * if you use id3, be sure all files are well tagged
    * name scheme for songs: 01-trackname.mp3
3. If you don't want share buttons, remove the line `SHAREBTNS=YES` at top of `genpage.sh`
4. Run the `./genpage` script
5. Customize the generate `index.html` page :
    * Band name, description, contact, links (share btns, mail contact, download all)
    * Icons ([PWA manifest](https://app-manifest.firebaseapp.com/), favicon), background picture
    * Style (colors, font)
    * Change the license
6. Put it online

## License
Do whatever you want
