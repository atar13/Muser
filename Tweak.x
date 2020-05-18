
@interface UINavigationBarLargeTitleView : UIView
@property (nonatomic, copy, readwrite) NSString *title;
@end


NSString *labelText = @"label";

%hook UINavigationBarLargeTitleView

	-(void)setTitle:(id)arg1{
	%orig;
	
	UINavigationBarLargeTitleView *swift = self;
	// NSLOG(@"TEXT");
	if([swift.title isEqualToString:@"Library"]){
			swift.title = labelText;
		
	}
	}
	

%end

@interface UITableViewLabel : UILabel
@property (nonatomic, strong, readwrite) UIFont *font;
@end

%hook UITableViewLabel
	

	-(void)setFont:(id)arg2{
			UITableViewLabel *tableViewSwift = self;
			UIFont *defaultFont = tableViewSwift.font;
		%orig;



		if([tableViewSwift.font isEqual:defaultFont]){
			// tableViewSwift.font = [tableViewSwift.font fontWithSize:(CGFloat)12];
					labelText = tableViewSwift.font.fontName;

		}
		

	}
%end

%ctor {
	%init(_ungrouped, UINavigationBarLargeTitleView = NSClassFromString(@"_UINavigationBarLargeTitleView"), UITableViewLabel = NSClassFromString(@"UITableViewLabel"));
	
	}