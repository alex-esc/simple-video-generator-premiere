# Premiere pro static video generator

## What is this preset for?

This preset transforms 50 images into an animated video that is 00:04:10:00 long


# How to use it

## What do you need

* windows os (tested with windows 10)
* premiere pro cc (tested with premiere pro cc 2017)
* 2 images in jpg format
* autohotkey installed (not yet tested without ahk)


# Steps

* run the script 'macros.ahk'
* find your 2 images
* place them inside the folder 'PUT YOUR IMAGES HERE'
* click on 'imageresize.bat' and wait a moment
* open the newly created 'output' folder
* press 'WINDOWS KEY + 1' on your keyboard
* open 'WORKS.prproj'
* select all clips from the timeline and right click on them
* select 'link media'
* click on 'locate'
* navigate to '...\PUT NEW IMAGES HERE\output'
* select one image
* hit enter
* render the timeline

done!

# automation to-do-list

status in progress
priority high

[X] apply to 10 images
[ ] apply to 50 images
[ ] apply to 100 images


upscale this preset, apply this basic concept to combining 10 images, then scale to 50 and finally 100


--------------------------------------------------------------

status open
priority low

> open 'WORKS.prproj'
> select all clips from the timeline and right click on them
>
> select 'link media'
>
> click on 'locate'
>
> navigate to '...\PUT NEW IMAGES HERE\output'
> select one image
>
> hit enter
>
> render the timeline

can be binded to a keystroke with ahk, maybe win 2



