//
//  ViewController.m
//  SelfSizeCell
//
//  Created by LevyGG on 2018/4/12.
//  Copyright © 2018年 Levy. All rights reserved.
//

#import "ViewController.h"
#import "SelfSizeCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableview registerNib:[UINib nibWithNibName:@"SelfSizeCell" bundle:nil] forCellReuseIdentifier:@"SelfSizeCell"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SelfSizeCell *cell = [self.tableview dequeueReusableCellWithIdentifier:@"SelfSizeCell"];
    if (indexPath.row == 0) {
        cell.conent_Label.text = @"小王子";
    }
    if (indexPath.row == 1) {
        cell.conent_Label.text = @"小王子在沙漠见到狐狸。聪明的狐狸要求小王子驯养他，虽然狐狸在两者中显得更有知识，他使小王子明白什么是生活的本质。狐狸告诉小王子的秘密是：用心去看才看得清楚；是分离让小王子更思念他的玫瑰；爱就是责任。";
    }
    if (indexPath.row == 2) {
        cell.conent_Label.text = @"童话表现的不是常识而是真理。它是一种理想的艺术，使人能够从中捕捉到生命的真谛。《小王子》在表现人类精神家园的可贵的同时，还凸显了交往的真谛，即对爱与责任的感悟。作者通过小王子“对爱与责任不断的领悟升华，表达了对人生本真的坚守、对温情的向往乃至对完美人生价值孜孜不倦追求的终极理想”。它体现了人与人交往的本质，需要我们用灵性去理解、感悟、诠释。圣埃克絮佩里把生动的形象与深邃的寓意相结合，将爱与责任的主题直观的展现在读者面前，透射出交往的真谛。建立这种关系的本质在于你付出了真心和情感，在享受“驯养”关系带来的美妙感觉的同时，产生了一种牵系彼此心灵的责任感。这是一种以幸福和爱为前提的、人与人之间彼此需要的、独一无二的情感维系。对于小王子来说，玫瑰花之所以重要，是因为他为她付出了时间和心血，并倾注了最真挚的感情，使她在自己心里生根发芽。狐狸使小王子懂得了交往的真谛： 爱一个人，就要对他负有责任。这是“驯养”关系的切实保障，也是人与人交往的本质所在。";
    }
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}


@end
