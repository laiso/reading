framework 'cocoa'

app = NSApplication.sharedApplication
win = NSWindow.alloc.init

label = NSTextField.alloc.initWithFrame win.frame
label.frameOrigin = NSPoint.new

win.contentView.addSubView(label)

win.title = 'Hello World'
win.display
win.orderFrontRegardless
win.makeKeyWindow

app.run
