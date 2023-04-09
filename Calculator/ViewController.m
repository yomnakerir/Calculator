//
//  ViewController.m
//  Calculator
//
//  Created by yomna kerir  on 03/04/2023.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelTxt;


@end

@implementation ViewController



- (IBAction)doSomething:(id)sender {
    
    switch ([sender tag]) {
        case 0:
            _number = [_number stringByAppendingString:@"0"];
            [self printResult];
            break;
            
        case 1:
            _number = [_number stringByAppendingString:@"1"];
            [self printResult];
            break;
            
        case 2:
            _number = [_number stringByAppendingString:@"2"];
            [self printResult];
            break;
            
        case 3:
            _number = [_number stringByAppendingString:@"3"];
            [self printResult];
            break;
            
        case 4:
            _number = [_number stringByAppendingString:@"4"];
            [self printResult];
            break;
            
        case 5:
            _number = [_number stringByAppendingString:@"5"];
            [self printResult];
            break;
            
        case 6:
            _number = [_number stringByAppendingString:@"6"];
            [self printResult];
            break;
            
        case 7:
            _number = [_number stringByAppendingString:@"7"];
            [self printResult];
            break;
            
        case 8:
            _number = [_number stringByAppendingString:@"8"];
            [self printResult];
            break;
            
        case 9:
            _number = [_number stringByAppendingString:@"9"];
            [self printResult];
            break;
            
            
        case 10:
            [self saveNum1];
            _operand = DIV;
            break;
            
        case 11:
            [self saveNum1];
            _operand = MUL;
            break;
            
            
        case 12:
            [self saveNum1];
            _operand = MINUS;
            break;
            
        case 13:
            [self saveNum1];
            _operand = PLUS;
            break;
            
            // calc operations
        case 14:
            _num2 = [_number integerValue];
            _number = [NSString stringWithFormat:@"%.1f", [self calc:_num1 : _num2]];
            [self printResult];
            _num1 = 0;
            _num2 = 0;
            _result = 0.0;
            _number = @"";
            break;
            
         
            // clear
        case 15:
            _labelTxt.text = @"0";
            _number = @"";
            break;
            
            // how to deal with .  ??
        case 16:
            // like numbers
            _number = [_number stringByAppendingString:@"."];
            [self printResult];
            break;
            
            
            // handle - and + ???
        case 17:
            _number = [_number stringByAppendingString:@"-"];
            [self printResult];
            break;
            
            // handle operand %
        case 18:
            [self saveNum1];
            _operand = REMINDER;
            break;
            
            
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNum1: 0];
    [self setNum2: 0.0];
    [self setOperand:PLUS];
    [self setResult: 0.0];
    [self setNumber: @""];
    // here put the number after translate to string on label
    
    [self printResult];
    
}

-(void) printResult{
    _labelTxt.text = _number;
}

-(void) saveNum1{
    _num1 = [_number intValue];
    _number = @"";
    [self printResult];
}

-(double) calc: (double) m: (double) n{
    if(_operand == PLUS)
        _result =  m + n;
    
    else if (_operand == MINUS)
        _result = m - n;
    
    else if(_operand == DIV)
        _result = m / n;
    
   else if (_operand == MUL)
        _result = m * n;
    
    else if (_operand == REMINDER)
        _result = (int)m  % (int)n;
    
    return  _result;
}

@end
