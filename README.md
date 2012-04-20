TiUIEx Module
=============

Titanium is fantastic for building cross-platform mobile apps, but there
are times when you absolutely need to get to a native property or method
in a UI component and can't wait for it to be added to the next version
of the SDK.  This has happened to me often enough that I created the
TiUIEx module to collect up these enhancements in one place.  Right now,
the module provides the following extensions for iOS:

**TabGroup**

* add `tintColor` property to set the bar tint
* add `selectedImageTintColor` property to set the tint of the select tab
  item image

**ImageView**

* add `contentMode` property to set scaling and image placement.
* add `clipsToBounds` property to control image clipping.

See the [iOS docs](mobile/iphone/documentation/index.md) for complete details
of the additions.
