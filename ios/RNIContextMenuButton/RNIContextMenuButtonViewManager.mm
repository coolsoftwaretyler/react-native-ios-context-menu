//
//  RNIContextMenuButtonViewManager.m
//  react-native-ios-context-menu
//
//  Created by Dominic Go on 8/24/24.
//

#import "RNIContextMenuButton.h"
#import <objc/runtime.h>

#if __has_include(<react_native_ios_utilities/RNIBaseViewUtils.h>)
#import <react_native_ios_utilities/RNIBaseViewUtils.h>

#else
#import <react-native-ios-utilities/RNIBaseViewUtils.h>
#endif

#import "RCTBridge.h"
#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>


@interface RNIContextMenuButtonViewManager : RCTViewManager
@end

@implementation RNIContextMenuButtonViewManager

RCT_EXPORT_MODULE(RNIContextMenuButton)

#ifndef RCT_NEW_ARCH_ENABLED
- (UIView *)view
{
  return [[RNIContextMenuButton alloc] initWithBridge:self.bridge];
}
#endif

RNI_EXPORT_VIEW_PROPERTY(menuConfig, NSDictionary)
RNI_EXPORT_VIEW_PROPERTY(isContextMenuEnabled, BOOL)
RNI_EXPORT_VIEW_PROPERTY(isMenuPrimaryAction, BOOL)

RNI_EXPORT_VIEW_EVENT(onDidSetViewID, RCTBubblingEventBlock)
RNI_EXPORT_VIEW_EVENT(onMenuWillShow, RCTBubblingEventBlock)
RNI_EXPORT_VIEW_EVENT(onMenuWillHide, RCTBubblingEventBlock)
RNI_EXPORT_VIEW_EVENT(onMenuWillCancel, RCTBubblingEventBlock)
RNI_EXPORT_VIEW_EVENT(onMenuDidShow, RCTBubblingEventBlock)
RNI_EXPORT_VIEW_EVENT(onMenuDidHide, RCTBubblingEventBlock)
RNI_EXPORT_VIEW_EVENT(onMenuDidCancel, RCTBubblingEventBlock)
RNI_EXPORT_VIEW_EVENT(onPressMenuItem, RCTBubblingEventBlock)
RNI_EXPORT_VIEW_EVENT(onRequestDeferredElement, RCTBubblingEventBlock)

@end
