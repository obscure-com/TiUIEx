var TiUIEx = require('com.obscure.TiUIEx'),
    ImageExWindow = require('ImageExWindow'),
    TabColorWindow = require('TabColorWindow');

var win1 = new ImageExWindow();
var tab1 = Ti.UI.createTab({
    window: win1,
    title: 'image view',
    icon: 'tabs/KS_nav_ui.png',
});



var win2 = new TabColorWindow();
var tab2 = Ti.UI.createTab({
    window: win2,
    title: 'tab colors',
    icon: 'tabs/KS_nav_views.png',
})


// properties can be provided at the time of creation or set after
// the object is created.

var tabGroup = TiUIEx.createTabGroup({
    tabs: [tab1,tab2],
    tintColor: '#33f',
});

win2.tabGroup = tabGroup;

tabGroup.open();