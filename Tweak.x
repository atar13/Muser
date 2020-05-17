
@interface UINavigationBarLargeTitleView : UIView
@property (nonatomic, copy, readwrite) NSString *title;
@end

%hook UINavigationBarLargeTitleView

	-(void)setTitle:(id)arg1{
	%orig;
	
	UINavigationBarLargeTitleView *swift = self;
	if([swift.title isEqualToString:@"Library"]){
	 swift.title = @"bruh";
	}
	}
	

%end

%ctor {
	%init(_ungrouped, UINavigationBarLargeTitleView = NSClassFromString(@"_UINavigationBarLargeTitleView"));
	}