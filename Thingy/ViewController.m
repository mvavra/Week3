//
//  ViewController.m
//  Thingy
//
//  Created by Michelle Vavra on 2/10/15.
//  Copyright (c) 2015 Michelle Vavra. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // AFNetworking
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://headers.jsontest.com/" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *bla = responseObject;
        for(NSString *s  in [bla allKeys]){
            NSLog(@"KEY: %@ [VALUE:@, s, [dic objectForKey:s]");
                  
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
