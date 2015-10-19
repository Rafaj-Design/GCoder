//
//  ViewController.m
//  GCoder
//
//  Created by Ondrej Rafaj on 19/10/2015.
//  Copyright (c) 2015 Ridiculous Innovations. All rights reserved.
//

#import "RIHomeViewController.h"
#import "RIPresetFormView.h"


@interface RIHomeViewController ()

@property (nonatomic, weak) IBOutlet NSTableView *tableView;

@property (nonatomic, weak) IBOutlet NSButton *loadFileButton;
@property (nonatomic, weak) IBOutlet NSButton *exportGcodeButton;

@property (nonatomic, weak) IBOutlet NSScrollView *presetScrollView;
@property (nonatomic, weak) IBOutlet RIPresetFormView *presetFormView;

@end


@implementation RIHomeViewController


#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

#pragma mark Actions

- (IBAction)didClickLoadFileButton:(NSButton *)sender {
    
}

- (IBAction)didClickExportGcodeButton:(NSButton *)sender {
    
}


@end
