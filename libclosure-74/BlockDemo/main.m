//
//  main.m
//  BlockDemo
//
//  Created by Tian on 2021/4/27.
//

#import <Foundation/Foundation.h>

// typedef 定义 blk_t
typedef int (^blk_t)(int);

blk_t block() {
    return ^(int a) {
        return a+1;
    };
}

int callBlock(blk_t blk) {
    return blk(333);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // 1
        void (^blk)(void) = ^{
            NSLog(@"======== block =======");
        };
        blk();
        
        // 2
        int (^blk2)(int) = ^int(int a) {
            return a+1;
        };
        NSLog(@"%d", blk2(10));
        
        // 3
        int sum = callBlock(block());
        NSLog(@"%d", sum);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
