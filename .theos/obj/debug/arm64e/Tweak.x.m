#line 1 "Tweak.x"

@interface UINavigationBarLargeTitleView : UIView
@property (nonatomic, copy, readwrite) NSString *title;
@end


NSString *labelText = @"label";


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UINavigationBarLargeTitleView; @class UITableViewLabel; 
static void (*_logos_orig$_ungrouped$UINavigationBarLargeTitleView$setTitle$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableViewLabel$setFont$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableViewLabel$setFont$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); 

#line 9 "Tweak.x"


	static void _logos_method$_ungrouped$UINavigationBarLargeTitleView$setTitle$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
	_logos_orig$_ungrouped$UINavigationBarLargeTitleView$setTitle$(self, _cmd, arg1);
	
	UINavigationBarLargeTitleView *swift = self;
	
	if([swift.title isEqualToString:@"Library"]){
			swift.title = labelText;
		
	}
	}
	



@interface UITableViewLabel : UILabel
@property (nonatomic, strong, readwrite) UIFont *font;
@end


	

	static void _logos_method$_ungrouped$UITableViewLabel$setFont$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2){
			UITableViewLabel *tableViewSwift = self;
			UIFont *defaultFont = tableViewSwift.font;
		_logos_orig$_ungrouped$UITableViewLabel$setFont$(self, _cmd, arg2);



		if([tableViewSwift.font isEqual:defaultFont]){
			
					labelText = tableViewSwift.font.fontName;

		}
		

	}


static __attribute__((constructor)) void _logosLocalCtor_de956a09(int __unused argc, char __unused **argv, char __unused **envp) {
	{Class _logos_class$_ungrouped$UINavigationBarLargeTitleView = NSClassFromString(@"_UINavigationBarLargeTitleView"); MSHookMessageEx(_logos_class$_ungrouped$UINavigationBarLargeTitleView, @selector(setTitle:), (IMP)&_logos_method$_ungrouped$UINavigationBarLargeTitleView$setTitle$, (IMP*)&_logos_orig$_ungrouped$UINavigationBarLargeTitleView$setTitle$);Class _logos_class$_ungrouped$UITableViewLabel = NSClassFromString(@"UITableViewLabel"); MSHookMessageEx(_logos_class$_ungrouped$UITableViewLabel, @selector(setFont:), (IMP)&_logos_method$_ungrouped$UITableViewLabel$setFont$, (IMP*)&_logos_orig$_ungrouped$UITableViewLabel$setFont$);}
	
	}
