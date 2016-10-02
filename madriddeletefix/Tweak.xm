#import "./headers/imagent/IMDaemon.h"
#import "./headers/IMDaemonCore/IMDMessageStore.h"

%hook IMDaemon
-(void)deleteMessageWithGUIDs:(NSArray *)arg1 queryID:(id)arg2 messageContext:(id)arg3 {
	[[NSClassFromString(@"IMDMessageStore") sharedInstance] deleteMessageGUIDs:arg1];
	[[self broadcasterForChatListenersWithMessageContext:arg3] historicalMessageGUIDsDeleted:arg1 chatGUIDs:nil queryID:arg2];
}
%end