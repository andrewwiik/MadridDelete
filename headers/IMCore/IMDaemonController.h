#import <Foundation/NSObject.h>

#import "IMRemoteDaemonProtocol-Protocol.h"

@interface IMDaemonController : NSObject
- (BOOL)isConnected;
+ (instancetype)sharedInstance;
+ (id)sharedController;
- (void)_connectToDaemonWithLaunch:(BOOL)arg1 capabilities:(unsigned)arg2;
- (id<IMRemoteDaemonProtocol>)_remoteObject;
- (BOOL)connectToDaemonWithLaunch:(BOOL)arg1;
- (BOOL)isConnecting;
@end