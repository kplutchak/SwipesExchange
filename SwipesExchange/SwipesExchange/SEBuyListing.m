//
//  SEBuyListing.m
//  Bruin Swipes
//
//  Created by Matthew DeCoste on 11/2/13.
//  Copyright (c) 2013 CS130SwipesExchange. All rights reserved.
//

#import "SEBuyListing.h"
#import "SEReferences.h"

@implementation SEBuyListing

- (instancetype)init
{
	self = [super init];
	
	if (self)
	{
		//		_height = 44; // or 55 or 66?
		
		// go crazy to make a demo
		SEUser *demoUser = [[SEUser alloc] init];
		[demoUser setName:@"Matthew DeCoste"];
		[demoUser setRating:@"★★★★☆"];
		self.user = demoUser;
		self.time = @"4:00pm - 7:00pm";
		self.count = 5;
	}
	
	return self;
}

//- (UIView *)listing44pt
//{
//	return [self listing];
//}
//
//- (UIView *)listing55pt
//{
//	return [self listingTall:YES];
//}
//
//- (UIView *)listingTall:(BOOL)tall
//{
//	CGFloat topRowSize = (tall) ? 21.f : 18.f;
//	CGFloat bottomRowSize = (tall) ? 15.f : 12.f;
//	
//	UIView *view = (tall) ? [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 320.f, 55.f)] :
//							[[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 320.f, 44.f)];
//	
//	UILabel *name = (tall) ?	[[UILabel alloc] initWithFrame:CGRectMake(15.f, 0.f, 170.f, 30.f)] :
//								[[UILabel alloc] initWithFrame:CGRectMake(15.f, 0.f, 160.f, 30.f)];
//	[name setText:self.user.name];
//	[name setTextAlignment:NSTextAlignmentLeft];
//	[name setFont:[UIFont systemFontOfSize:topRowSize]];
//	
//	UILabel *num = (tall) ? [[UILabel alloc] initWithFrame:CGRectMake(180.f, 0.f, 105.f, 30.f)] :
//							[[UILabel alloc] initWithFrame:CGRectMake(180.f, 0.f, 105.f, 30.f)];
//	[num setText:[NSString stringWithFormat:@"%d requested", (int)self.count]];
//	[num setTextAlignment:NSTextAlignmentRight];
//	[num setFont:[UIFont systemFontOfSize:topRowSize]];
//	
//	UILabel *rating = (tall) ?	[[UILabel alloc] initWithFrame:CGRectMake(15.f, 28.f, 100.f, 20.f)] :
//								[[UILabel alloc] initWithFrame:CGRectMake(15.f, 24.f, 160.f, 20.f)];
//	[rating setText:self.user.rating];
//	[rating setTextAlignment:NSTextAlignmentLeft];
//	[rating setFont:[UIFont systemFontOfSize:bottomRowSize]];
//	
//	UILabel *time = (tall) ?	[[UILabel alloc] initWithFrame:CGRectMake(120.f, 28.f, 165.f, 20.f)] :
//								[[UILabel alloc] initWithFrame:CGRectMake(170.f, 24.f, 115.f, 20.f)];
//	[time setText:self.time];
//	[time setTextAlignment:NSTextAlignmentRight];
//	[time setFont:[UIFont systemFontOfSize:bottomRowSize]];
//	
//	
//	[view addSubview:name];
//	[view addSubview:num];
//	[view addSubview:rating];
//	[view addSubview:time];
//	
//	return view;
//}

- (UIView *)listing
{
	CGFloat topRowSize = 18.f;
	CGFloat bottomRowSize = 12.f;
	
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 320.f, 44.f)];
	
	UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(15.f, 0.f, 160.f, 30.f)];
	[name setText:self.user.name];
	[name setTextAlignment:NSTextAlignmentLeft];
	[name setFont:[UIFont systemFontOfSize:topRowSize]];
	
	UILabel *num = [[UILabel alloc] initWithFrame:CGRectMake(180.f, 0.f, 105.f, 30.f)];
	[num setText:[NSString stringWithFormat:@"%d requested", (int)self.count]];
	[num setTextAlignment:NSTextAlignmentRight];
	[num setFont:[UIFont systemFontOfSize:topRowSize]];
	
	UILabel *rating = [[UILabel alloc] initWithFrame:CGRectMake(15.f, 24.f, 160.f, 20.f)];
	[rating setText:self.user.rating];
	[rating setTextAlignment:NSTextAlignmentLeft];
	[rating setFont:[UIFont systemFontOfSize:bottomRowSize]];
//	[rating setTextColor:[SEReferences mainColor]];
	
	UILabel *time = [[UILabel alloc] initWithFrame:CGRectMake(170.f, 24.f, 115.f, 20.f)];
	[time setText:self.time];
	[time setTextAlignment:NSTextAlignmentRight];
	[time setFont:[UIFont systemFontOfSize:bottomRowSize]];
	
	
	[view addSubview:name];
	[view addSubview:num];
	[view addSubview:rating];
	[view addSubview:time];
	
	return view;
}

@end
