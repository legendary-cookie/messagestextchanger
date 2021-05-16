#include "Tweak.h"

NSString * const replacement = @"Messages";


%hook _UINavigationBarLargeTitleView
	-(void)setTitle: (id)arg1 {
		%orig(replacement);
	}
%end

%hook _UINavigationBarContentView
	-(void)setTitle: (id)arg1 {
		%orig(replacement);
	}
%end