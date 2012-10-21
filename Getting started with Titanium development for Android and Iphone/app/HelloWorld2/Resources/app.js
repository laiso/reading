// 背景を白に
Titanium.UI.setBackgroundColor('#FFF');

var win = Titanium.UI.createWindow();
var label = Titanium.UI.createLabel({
    font : {
        fontSize : 100
    },
    top : 150
});
win.add(label);

var button = Titanium.UI.createButton({
    height : 50,
    width : 200,
    bottom : 100,
    title : "サイコロをふる"
});
win.add(button);
button.addEventListener('click', function(e) {
    var randomNumber = 1 + Math.floor(Math.random() * 6);
    label.text = randomNumber;
});

win.open();
