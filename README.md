

## Project Notes ##


The main.m function calls NSApplicationMain, but where is that?

    main.m
    11-int main(int argc, const char * argv[]) {
    12:    return NSApplicationMain(argc, argv);
    13-}

How would I programmatically set the labels on my tab view controller?

I can do the following in ViewController.m :: viewDidLoad

    NSStoryboard *sb = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
    
    NSWindowController *wc = [sb instantiateControllerWithIdentifier:@"Drawing Board Window Controller"];

but from here, how do I get to the tab view controller? (I set the
string "Drawing Board Window Controller" as the StoryBoard ID in
Identity Inspector.

---

To use a Tab View Controller, you probably need to delete the View
Controller that comes standard with the Window Controller.

The Tab View Controller comes with two tabs. To get a third, just search
for View Controller in the UI palette and drag another View Controller
out, then connect the Tab View Controller to it.


*** END ***

