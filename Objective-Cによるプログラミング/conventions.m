#import <Foundation/Foundation.h>

@interface OROKlass : NSObject
@property(nonatomic, getter=isSuccess) BOOL success;
@end
@implementation OROKlass
- (id)init
{
  self = [super init];
  if(self != nil){
    self.success = NO;
  }
  return self;
}
@end

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    OROKlass* object = [[OROKlass alloc] init];
    
    printf("# クラス \n");
    printf("- クラスプレフィックスは3文字以上 \n");
    NSString* className = NSStringFromClass([object class]);
    for (int i=0; i<className.length; i++) {
      unichar c = [className characterAtIndex:i];
      if(i < 4) assert(isupper(c)); // プレフィクス3文字以上+アッパーキャメルケースなので4文字目までは大文字のはず
    }
    

    printf("# プロパティ・メソッド \n");
    printf("- BOOLプロパティのゲッタはisなんとかにする \n");
    object.success = YES;
    assert(object.isSuccess);


    printf("# オブジェクト \n");
    printf("- alloc -> init を new にできる \n");
    NSArray* array = [NSArray new];
    assert(array);

  }

  return 0;
}

