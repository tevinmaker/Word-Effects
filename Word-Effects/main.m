//
//  main.m
//  Word Effects
//
//  Created by Tevin Maker on 2016-09-05.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char run = 'y';
        NSString *inputString;
        
        // 255 unit long array of characters
        char inputChars[255];
        
        int caseNum;
        
        
        
        while (run == 'y') {
            
            
            printf("Input a string\n");
            //limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            //print as a c string
            printf("Your string is %s\n", inputChars);
            
            //convert char array to an NSString object
            inputString = [NSString stringWithUTF8String:inputChars];
            
            //print NSString object
            NSLog(@"Input was: %@", inputString);
            
            NSLog(@"%p inputString, %p inputChars", inputString, inputChars);
            
            NSLog(@"Menu:\n 1. Uppercase\n 2. Lowercase\n 3. Numberize\n 4. Canadianize\n 5. Respond\n 6. De-Space-It");
            scanf(" %d", &caseNum);
            
            NSLog(@"%p inputString, %p inputChars", inputString, inputChars);
            
            
            // Uppercase
            NSString *uppercaseString = [inputString uppercaseString];
            
            //Lowercase
            
            NSString *lowercaseString = [inputString lowercaseString];
            
            //Numberize
            int stringToInt = [inputString intValue];
            
            //Canadianize
            
            NSString *eh = @" EH?";
            NSString *canadianString = [inputString stringByAppendingString:eh];
            
            
            
            switch (caseNum) {
                    
                case 1:
                    // Uppercase
                    
                    NSLog(@"%@", uppercaseString);
                    
                    break;
                    
                case 2:
                    //Lowercase
                    
                    
                    NSLog(@"%@", lowercaseString);
                    
                    break;
                    
                case 3:
                    //Numberize
                    NSLog(@"Your string equals %d", stringToInt);
                    
                    break;
                case 4:
                    //Canadianize
                    
                    NSLog(@"%@",canadianString);
                    
                    break;
                    
                case 5:
                    //Respond
                    
                    if ([inputString containsString:@"?"]) {
                        NSLog(@"I don't know");
                    }
                    
                    if ([inputString containsString:@"!"]) {
                        NSLog(@"Whoa, calm down");
                    }
                    break;
                    
                case 6:
                    //De-space-it
                    
                    inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"%@", inputString);
                    
                    break;
            }
            NSLog(@"Do you want to enter another string? y/n");
            fgets(&run, 1, stdin);
        }
        
    }
    return 0;
}