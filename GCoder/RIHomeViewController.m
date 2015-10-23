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
    [_tableView reloadData];
    
    [self createPresets];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

#pragma mark Creating elements

- (void)createPresets {
    
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
    
    __weak typeof(self) weakSelf = self;
    [openPanel beginWithCompletionHandler:^(NSInteger result) {
        if (result == NSModalResponseOK) {
            
            NSURL *selection = openPanel.URLs[0];
            NSString *path = [selection.path stringByResolvingSymlinksInPath];
            
            // TODO: Add an asynchronous success block to loadSVGFile and put reload in it
            [weakSelf.tableViewController loadSVGFile:path];
            [weakSelf.tableView reloadData];
        }
    }];
}

- (IBAction)didClickExportGcodeButton:(NSButton *)sender {
    NSString *gcode = [_tableViewController.gcodeLib getGCode];
    NSLog(@"GCODE: %@", gcode);
}


@end
