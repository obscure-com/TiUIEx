var TiUIEx = require('com.obscure.TiUIEx');
var ImageExWindow = require('ImageExWindow');

var win1 = new ImageExWindow();
var tab1 = Ti.UI.createTab({
    window: win1,
    title: 'win1',
    icon: 'tabs/KS_nav_ui.png',
});



var win2 = Ti.UI.createWindow({ backgroundColor: 'white' });
win2.add(Ti.UI.createLabel({ text: 'win2' }));
var tab2 = Ti.UI.createTab({
    window: win2,
    title: 'win2',
    icon: 'tabs/KS_nav_platform.png',
})


// properties can be provided at the time of creation or set after
// the object is created.

var tabGroup = TiUIEx.createTabGroup({
    tabs: [tab1,tab2],
    tintColor: '#033',
});

tabGroup.selectedImageTintColor = "red";

tabGroup.open();