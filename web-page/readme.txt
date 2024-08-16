1. Performance Considerations

* Tailwind generally creates a lot of classes, which can be a bit slow to load. To avoid this, we can use the purge option with jit mode to remove unused classes.
* To improve the performance of images, we can have different sizes of images for different screen sizes and load the appropriate size based on the screen size using media queries.
* Apart from that, we can also use the lazy loading option to load images only when they are visible on the screen.
* We can also pass the scripts and styles through a minifier to reduce the size of the files.

2.  How I approached the project

* I divided the project into screens.
* In each screen, I wrote the content as plane text and then put the content in the divs and spans.
* Next I added the divs in appropriate flexboxes so I can change their positions.
* Once the divs and spans are in the flexboxes, I added the styles to the elements.
* In the end I used the device mode in firefox to emulate mobile device and changed the styles for a responsive design.
* I used tailwind from the cdn to avoid managing the css files.