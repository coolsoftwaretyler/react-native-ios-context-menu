//
//  RNIContextMenuView.mm
//  react-native-ios-context-menu
//
//  Created by Dominic Go on 8/24/24.
//

#import "RNIContextMenuView.h"

#if __has_include(<react_native_ios_context_menu/Swift.h>)
#import "react_native_ios_context_menu/Swift.h"

#import <react_native_ios_utilities/RNIBaseView.h>
#import <react_native_ios_utilities/RNIContentViewParentDelegate.h>
#import <react_native_ios_utilities/UIApplication+RNIHelpers.h>
#import <react_native_ios_utilities/RNIObjcUtils.h>
#else
#import "react-native-ios-context-menu/Swift.h"

#import <react-native-ios-utilities/RNIBaseView.h>
#import <react-native-ios-utilities/RNIContentViewParentDelegate.h>
#import <react-native-ios-utilities/UIApplication+RNIHelpers.h>
#import <react-native-ios-utilities/RNIObjcUtils.h>
#endif

#if RCT_NEW_ARCH_ENABLED
#include "RNIContextMenuViewComponentDescriptor.h"

#if __has_include(<react_native_ios_utilities/RNIBaseViewState.h>)
#include <react_native_ios_utilities/RNIBaseViewState.h>
#include <react_native_ios_utilities/RNIBaseViewProps.h>

#else
#include <react-native-ios-utilities/RNIBaseViewState.h>
#include <react-native-ios-utilities/RNIBaseViewProps.h>
#endif

#import <React/RCTConversions.h>
#import <React/RCTFabricComponentsPlugins.h>
#import <React/RCTRootComponentView.h>
#import <React/RCTSurfaceTouchHandler.h>

#include <react/renderer/core/ComponentDescriptor.h>
#include <react/renderer/core/ConcreteComponentDescriptor.h>
#include <react/renderer/graphics/Float.h>
#include <react/renderer/core/graphicsConversions.h>

#import <react/renderer/components/RNIContextMenuViewSpec/EventEmitters.h>
#import <react/renderer/components/RNIContextMenuViewSpec/RCTComponentViewHelpers.h>
#else
#import <React/RCTTouchHandler.h>
#import <React/RCTInvalidating.h>
#endif

#ifdef RCT_NEW_ARCH_ENABLED
using namespace facebook::react;
#endif


@interface RNIContextMenuView () <
  RNIContentViewParentDelegate,
#ifdef RCT_NEW_ARCH_ENABLED
  RCTRNIContextMenuViewViewProtocol
#else
  RCTInvalidating
#endif
> {
  // TBA
}
@end

@implementation RNIContextMenuView {
}

// MARK: - RNIBaseView
// -------------------

+ (Class)viewDelegateClass
{
  return [RNIContextMenuViewContent class];
}

// MARK: - Fabric-Only
// -------------------

#if RCT_NEW_ARCH_ENABLED
+ (ComponentDescriptorProvider)componentDescriptorProvider
{
  return concreteComponentDescriptorProvider<RNIContextMenuViewComponentDescriptor>();
}

Class<RCTComponentViewProtocol> RNIContextMenuViewCls(void)
{
  return RNIContextMenuView.class;
}
#endif
@end



