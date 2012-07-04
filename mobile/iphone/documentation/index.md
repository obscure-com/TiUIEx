# tiuiex Module

## Description

TODO: Enter your module description here

## Accessing the tiuiex Module

To access this module from JavaScript, you would do the following:

	var tiuiex = require("com.obscure.TiUIEx");

The tiuiex variable is a reference to the Module object.	

## Usage

    var TiUIEx = require('com.obscure.TiUIEx');
    var extendedTabGroup = TiUIEx.createTabGroup({
      tabs: [],
      /* other Ti.UI.TabGroup properties */
    })

## Reference

### TabGroup

#### Properties

**tintColor**

color, read/write.  The tint color to apply to the tab bar background.  NOTE: this property needs to be
set at the time of tab group creation.  If it is set after the tab group is created, it changes the
color of the unselected icons in the tab group, not the background of the whole bar.  Don't ask me why
this happens; it's still a mystery to me...

**selectedImageTintColor**

color, read/write.  The tint color to apply to the gradient image used when creating the selected image.

### ImageView

#### Properties

**clipsToBounds**

boolean, read/write.  Set whether the image is confined to the specified height and width. Setting this
value to true causes the image to be clipped to the height and width of the view.  If set to false, which
is the default value, the image will extend beyond the specified bounds.

**contentMode**

string, read/write.  An enumeration which determines how a the image is laid out within its specified
bounds.  Values are:

* scaletofill: scales the image to fit within the bounds by changing the aspect ratio of the image
  if necessary.
* aspectfit: scales the image to fit the bounds by maintaining the aspect ratio. Any remaining area
  of the bounds is transparent.
* aspectfill: scales the content to fill the bounds. Some portion of the image may be clipped to
  fill the bounds.
* center: centers the image in the bounds, keeping the proportions the same.
* top: centers the image aligned at the top in the bounds.
* bottom: centers the image aligned at the bottom in the bounds.
* left: aligns the image on the left of the bounds.
* right: aligns the image on the right of the bounds.
* topleft: aligns the image in the top-left corner of the bounds.
* topright: aligns the image in the top-right corner of the bounds.
* bottomleft: aligns the image in the bottom-left corner of the bounds.
* bottomright: aligns the image in the bottom-right corner of the bounds.
* center: aligns the image in the center of the bounds.

## Author

TODO: Enter your author name, email and other contact
details you want to share here. 

## License

TODO: Enter your license/legal information here.
