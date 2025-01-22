The solution lies in using `weak` references instead of `strong` where appropriate:

```objectivec
@interface MyClass : NSObject
@property (weak, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [[NSString alloc] initWithString:@