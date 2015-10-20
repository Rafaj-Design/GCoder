//
//  ViewController.m
//  GCoder
//
//  Created by Ondrej Rafaj on 19/10/2015.
//  Copyright (c) 2015 Ridiculous Innovations. All rights reserved.
//

#import "RIHomeViewController.h"
#import "RIAppDelegate.h"
#import "Masonry.h"
#import "RIPresetFormView.h"
#import "RIGCodeLib.h"
#import "RIGcodeTableViewDataController.h"


@interface RIHomeViewController ()

@property (nonatomic, readonly) RIGcodeTableViewDataController *tableViewController;
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

    _tableViewController = [[RIGcodeTableViewDataController alloc] init];
    [_tableView setDataSource:_tableViewController];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

#pragma mark Actions

- (IBAction)didClickLoadFileButton:(NSButton *)sender {
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    
    openPanel.title = @"Choose an .SVG file";
    openPanel.showsResizeIndicator = YES;
    openPanel.showsHiddenFiles = NO;
    openPanel.canChooseDirectories = NO;
    openPanel.canCreateDirectories = YES;
    openPanel.allowsMultipleSelection = NO;
    openPanel.allowedFileTypes = @[@"svg"];
    
    [openPanel beginWithCompletionHandler:^(NSInteger result) {
        if (result == NSModalResponseOK) {
            
            NSURL *selection = openPanel.URLs[0];
            NSString *path = [selection.path stringByResolvingSymlinksInPath];
            
            [_tableViewController loadSVGFile:path];
        }
    }];
}

- (IBAction)didClickExportGcodeButton:(NSButton *)sender {
    
}


@end
