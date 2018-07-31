//
//  Gallary_imageView.m
//  Patients
//
//  Created by Devesh on 17/07/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import "Gallary_imageView.h"

@interface Gallary_imageView ()<UIScrollViewDelegate>
{
    BOOL flag;
}
@end

@implementation Gallary_imageView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    flag=1;
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.delegate = self;
    self.scrollView.maximumZoomScale = 2;
    self.scrollView.autoresizingMask = self.view.autoresizingMask;
    [self.view addSubview:self.scrollView];
    
    UITapGestureRecognizer *tapOnce = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTap:)];
    [tapOnce setNumberOfTouchesRequired:1];
    [doubleTap setNumberOfTapsRequired:2];
    [tapOnce requireGestureRecognizerToFail:doubleTap];
    
    [self.scrollView addGestureRecognizer:tapOnce];
    [self.scrollView addGestureRecognizer:doubleTap];
}

- (void)handleDoubleTap:(UIGestureRecognizer *)gestureRecognizer
{
    if ( flag == 1 ){
        flag = 0;
        [self.scrollView setZoomScale:self.scrollView.maximumZoomScale animated:NO];
    }
    else {
        flag = 1;
        [self.scrollView setZoomScale:self.scrollView.minimumZoomScale animated:NO];
    }
    
}

- (void) handleSingleTap:(UIGestureRecognizer *)gestureRecognizer
{
    //single tap in full screen mode it will dismiss the view
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
