//
//  ViewController.h
//  Calculator
//
//  Created by yomna kerir  on 03/04/2023.
//

#import <UIKit/UIKit.h>
#define PLUS 0
#define MINUS 1
#define MUL 2
#define DIV 3


@interface ViewController : UIViewController

@property NSInteger operand;
@property double num1;
@property double num2;
@property double result;
@property NSString *number;


-(void) printResult;
-(void) saveNum1;
-(double) calc: (double) m: (double) n;

@end

