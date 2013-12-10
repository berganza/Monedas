//
//  ViewController.m
//  Monedas Por Region
//
//  Created by LLBER on 10/12/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    NSNumberFormatter *formatoMoneda = [[NSNumberFormatter alloc] init];
    [formatoMoneda setNumberStyle:NSNumberFormatterCurrencyStyle];
    
//    for (NSString *identificadorPais in @[@"en_US", @"es_ES", @"en_GB"]) {
//        formatoMoneda.locale = [NSLocale localeWithLocaleIdentifier:identificadorPais];
//        NSLog(@"%@: %@", identificadorPais, [formatoMoneda stringFromNumber:@(11111.1111)]);
    
    
    
    for (NSString *identificadorUS in @[@"en_US"]) {
    formatoMoneda.locale = [NSLocale localeWithLocaleIdentifier:identificadorUS];
        _us.text = [formatoMoneda stringFromNumber:@(33333.3333)];
    }
    
    
    for (NSString *identificadorSP in @[@"es_ES"]) {
        formatoMoneda.locale = [NSLocale localeWithLocaleIdentifier:identificadorSP];
        _sp.text = [formatoMoneda stringFromNumber:@(55555.5555)];
    }
    
    for (NSString *identificadorGB in @[@"en_GB"]) {
        formatoMoneda.locale = [NSLocale localeWithLocaleIdentifier:identificadorGB];
        _gb.text = [formatoMoneda stringFromNumber:@(77777.7777)];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
