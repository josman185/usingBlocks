//
//  ViewController.m
//  Blocks-myexamples
//
//  Created by jose on 3/5/16.
//  Copyright © 2016 jose. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myArray = [[NSArray alloc]initWithObjects:@"Obj1",@"Obj2",@"Obj3",@"Obj4",@"Obj5", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnnormalforloop:(id)sender {
    self.myArray = [[NSArray alloc]initWithObjects:@"Obj1",@"Obj2",@"Obj3",@"Obj4",@"Obj5", nil];

    BOOL stop;
    for (int i = 0 ; i < [self.myArray count] ; i++) {
        NSLog(@"The object at index %d is %@",i,[self.myArray objectAtIndex:i]);
        if (stop)
            break;
    }
}
- (IBAction)btnusiongfastenumeration:(id)sender {
    BOOL stop;
    int idx = 0;
    for (id obj in self.myArray) {
        NSLog(@"The object at index %d is %@",idx,obj);
        idx++;
        if (stop)
            break;
    }
}
- (IBAction)btnwithblocks:(id)sender {
    [self.myArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        
        NSLog(@"The object at index %lu is %@",idx,obj);
    }];
}


@end
