module.exports = function() {
  
  var result = Ti.UI.createWindow({
    title: 'ImageView',
    backgroundColor: 'white',
  });

  var view = Ti.UI.createScrollView({
    height: Ti.UI.FILL,
    contentHeight: 'auto',
    layout: 'vertical'
  });

  view.add(Ti.UI.createLabel({
    height: 20,
    text: "aspectfill"
  }));

  view.add(TiUIEx.createImageView({
    height: 80,
    width: 80,
    contentMode: 'aspectfill',
    borderWidth: 1,
    borderColor: 'red',
    hires: true,
    image: 'http://images2.wikia.nocookie.net/__cb20090714124530/firefly/images/1/11/Firefly_class_ship.jpg'
  }));

  view.add(Ti.UI.createLabel({
    height: 20,
    text: "aspectfit"
  }));

  view.add(TiUIEx.createImageView({
    height: 80,
    width: 80,
    contentMode: 'aspectfit',
    borderWidth: 1,
    borderColor: 'red',
    hires: true,
    image: 'http://images2.wikia.nocookie.net/__cb20090714124530/firefly/images/1/11/Firefly_class_ship.jpg'
  }));

  view.add(Ti.UI.createLabel({
    height: 20,
    text: "aspectfit, clipped"
  }));

  view.add(TiUIEx.createImageView({
    height: 80,
    width: 80,
    contentMode: 'aspectfill',
    clipsToBounds: true,
    borderWidth: 1,
    borderColor: 'red',
    hires: true,
    image: 'http://images2.wikia.nocookie.net/__cb20090714124530/firefly/images/1/11/Firefly_class_ship.jpg'
  }));

  view.add(Ti.UI.createLabel({
    height: 20,
    text: "center, clipped"
  }));

  view.add(TiUIEx.createImageView({
    height: 80,
    width: 80,
    contentMode: 'center',
    clipsToBounds: true,
    borderWidth: 1,
    borderColor: 'red',
    hires: true,
    image: 'http://images2.wikia.nocookie.net/__cb20090714124530/firefly/images/1/11/Firefly_class_ship.jpg'
  }));

  view.add(Ti.UI.createLabel({
    height: 20,
    text: "bottomright, clipped"
  }));

  view.add(TiUIEx.createImageView({
    height: 80,
    width: 80,
    contentMode: 'bottomright',
    clipsToBounds: true,
    borderWidth: 1,
    borderColor: 'red',
    hires: true,
    image: 'http://images2.wikia.nocookie.net/__cb20090714124530/firefly/images/1/11/Firefly_class_ship.jpg'
  }));

  result.add(view);

  return result;
};
