#import <UIKit/UIKit.h>
#import <UINavigationController/UINavigationController.h>

%hook UINavigationController


-(void)viewDidLoad {
	%orig;
	NSLOG(@"Testing if this is running");
	self.navigationItem.title = @"newtext";
}

%end
