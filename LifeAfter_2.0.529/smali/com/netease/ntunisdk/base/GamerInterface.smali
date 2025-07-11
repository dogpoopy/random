.class public interface abstract Lcom/netease/ntunisdk/base/GamerInterface;
.super Ljava/lang/Object;
.source "GamerInterface.java"


# virtual methods
.method public abstract DRPF(Ljava/lang/String;)I
.end method

.method public abstract exit()V
.end method

.method public abstract getAppChannel()Ljava/lang/String;
.end method

.method public abstract getAuthType()I
.end method

.method public abstract getAuthTypeName()Ljava/lang/String;
.end method

.method public abstract getCCPerformance()I
.end method

.method public abstract getCCTypeByImsi()Ljava/lang/String;
.end method

.method public abstract getCCWindowState()I
.end method

.method public abstract getChannel()Ljava/lang/String;
.end method

.method public abstract getChannelByImsi()Ljava/lang/String;
.end method

.method public abstract getChannelByImsiEx()Ljava/lang/String;
.end method

.method public abstract getFFChannelByPid(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPayChannel()Ljava/lang/String;
.end method

.method public abstract getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPlatform()Ljava/lang/String;
.end method

.method public abstract getPropInt(Ljava/lang/String;I)I
.end method

.method public abstract getPropStr(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSDKVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUdid()Ljava/lang/String;
.end method

.method public abstract getUserInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleOnActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract handleOnBackPressed()V
.end method

.method public abstract handleOnConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract handleOnCreate(Landroid/os/Bundle;)V
.end method

.method public abstract handleOnKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract handleOnLowMemory()V
.end method

.method public abstract handleOnNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract handleOnPause()V
.end method

.method public abstract handleOnRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract handleOnRestart()V
.end method

.method public abstract handleOnResume()V
.end method

.method public abstract handleOnSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract handleOnStart()V
.end method

.method public abstract handleOnStop()V
.end method

.method public abstract handleOnUserLeaveHint()V
.end method

.method public abstract handleOnWindowFocusChanged(Z)V
.end method

.method public abstract hasFeature(Ljava/lang/String;)Z
.end method

.method public abstract hasLogin()Z
.end method

.method public abstract isBinded(Ljava/lang/String;)Z
.end method

.method public abstract isCCRecordMic()Z
.end method

.method public abstract isCCRecording()Z
.end method

.method public abstract ntAntiAddiction(Ljava/lang/String;)V
.end method

.method public abstract ntApplyFriend(Ljava/lang/String;)V
.end method

.method public abstract ntCCStartService()V
.end method

.method public abstract ntCCStopService()V
.end method

.method public abstract ntCallbackFail(Ljava/lang/String;)V
.end method

.method public abstract ntCallbackSuccess(Ljava/lang/String;)V
.end method

.method public abstract ntCancelLocalNotification(I)V
.end method

.method public abstract ntCheckArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z
.end method

.method public abstract ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end method

.method public abstract ntCloseFlash()V
.end method

.method public abstract ntCloseWebView()V
.end method

.method public abstract ntCollectEvent(Ljava/lang/String;)V
.end method

.method public abstract ntConnectToChannel()V
.end method

.method public abstract ntConsume(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end method

.method public abstract ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ntDeleteInviters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ntDisConnectFromChannel()V
.end method

.method public abstract ntDisplayAchievement()V
.end method

.method public abstract ntDisplayLeaderboard(Ljava/lang/String;)V
.end method

.method public abstract ntDisplayQuests([I)V
.end method

.method public abstract ntDoSdkRealNameRegister()V
.end method

.method public abstract ntExtendFunc(Ljava/lang/String;)V
.end method

.method public varargs abstract ntExtendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract ntFlushCustomEvents()V
.end method

.method public abstract ntGameLoginSuccess()V
.end method

.method public abstract ntGetAnnouncementInfo()V
.end method

.method public abstract ntGetChannelID()Ljava/lang/String;
.end method

.method public abstract ntGetCheckedOrders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ntGetNotice(Z)V
.end method

.method public abstract ntGetUsePushNotification()V
.end method

.method public abstract ntGuestBind()V
.end method

.method public abstract ntHasChannelConnected()Z
.end method

.method public abstract ntHasNotification()Z
.end method

.method public abstract ntHasPlatform(Ljava/lang/String;)Z
.end method

.method public abstract ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
.end method

.method public abstract ntInviteFriendList(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ntIsDarenUpdated()V
.end method

.method public abstract ntLogin()V
.end method

.method public abstract ntLogout()V
.end method

.method public abstract ntMoreGame()V
.end method

.method public abstract ntOpenEchoes()V
.end method

.method public abstract ntOpenExitView()V
.end method

.method public abstract ntOpenManager()V
.end method

.method public abstract ntOpenNearby()V
.end method

.method public abstract ntOpenPauseView()V
.end method

.method public abstract ntOpenWebView(Ljava/lang/String;)V
.end method

.method public abstract ntPrePay()V
.end method

.method public abstract ntPresentQRCodeScanner()V
.end method

.method public abstract ntPresentQRCodeScanner(Ljava/lang/String;I)V
.end method

.method public abstract ntQueryAvailablesInvitees()V
.end method

.method public abstract ntQueryFriendList()V
.end method

.method public abstract ntQueryFriendListInGame()V
.end method

.method public abstract ntQueryInventory()V
.end method

.method public abstract ntQueryInviterList()V
.end method

.method public abstract ntQueryMyAccount()V
.end method

.method public abstract ntQueryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V
.end method

.method public abstract ntQuerySkuDetails(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ntRemoveCheckedOrders(Ljava/lang/String;)V
.end method

.method public abstract ntScannerQRCode(Ljava/lang/String;)V
.end method

.method public abstract ntSelectChannelOption(I)V
.end method

.method public abstract ntSendLocalNotification(Ljava/lang/String;)V
.end method

.method public abstract ntSendProfile(Ljava/lang/String;Z)V
.end method

.method public abstract ntSendPushNotification(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ntSetFloatBtnVisible(Z)V
.end method

.method public abstract ntSetUsePushNotification(Z)V
.end method

.method public abstract ntSetUserIdentifier(Ljava/lang/String;)V
.end method

.method public abstract ntSetZone(Ljava/lang/String;)V
.end method

.method public abstract ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V
.end method

.method public abstract ntShowBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ntShowCompactView(Z)V
.end method

.method public abstract ntShowConversation()V
.end method

.method public abstract ntShowDaren()V
.end method

.method public abstract ntShowFAQs()V
.end method

.method public abstract ntShowRewardView(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ntShowWeb(Ljava/lang/String;)V
.end method

.method public abstract ntSwitchAccount()V
.end method

.method public abstract ntTrackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ntUpLoadUserInfo()V
.end method

.method public abstract ntUpdateAchievement(Ljava/lang/String;I)V
.end method

.method public abstract ntUpdateApi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ntUpdateEvent(Ljava/lang/String;I)V
.end method

.method public abstract ntUpdateRank(Ljava/lang/String;D)V
.end method

.method public abstract ntVerifyMobile(I)V
.end method

.method public abstract ntVerifyOrder()V
.end method

.method public abstract ntvGenericFunctionCall(Ljava/lang/String;)V
.end method

.method public abstract setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V
.end method

.method public abstract setConnectListener(Lcom/netease/ntunisdk/base/OnConnectListener;I)V
.end method

.method public abstract setContinueListener(Lcom/netease/ntunisdk/base/OnContinueListener;I)V
.end method

.method public abstract setControllerListener(Lcom/netease/ntunisdk/base/OnControllerListener;I)V
.end method

.method public abstract setDebugMode(Z)V
.end method

.method public abstract setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V
.end method

.method public abstract setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V
.end method

.method public abstract setGlView(Landroid/opengl/GLSurfaceView;)V
.end method

.method public abstract setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V
.end method

.method public abstract setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V
.end method

.method public abstract setOnProtocolFinishListener(Lcom/netease/ntunisdk/base/OnProtocolFinishListener;I)V
.end method

.method public abstract setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V
.end method

.method public abstract setPropInt(Ljava/lang/String;I)V
.end method

.method public abstract setPropStr(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPushListener(Lcom/netease/ntunisdk/base/OnPushListener;I)V
.end method

.method public abstract setQRCodeListener(Lcom/netease/ntunisdk/base/OnQRCodeListener;I)V
.end method

.method public abstract setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V
.end method

.method public abstract setQueryRankListener(Lcom/netease/ntunisdk/base/QueryRankListener;I)V
.end method

.method public abstract setQuerySkuDetailsListener(Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;I)V
.end method

.method public abstract setQuestListener(Lcom/netease/ntunisdk/base/OnQuestListener;I)V
.end method

.method public abstract setReceiveMsgListener(Lcom/netease/ntunisdk/base/OnReceiveMsgListener;I)V
.end method

.method public abstract setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V
.end method

.method public abstract setShowViewListener(Lcom/netease/ntunisdk/base/OnShowViewListener;I)V
.end method

.method public abstract setStartupListener(Lcom/netease/ntunisdk/base/OnStartupListener;I)V
.end method

.method public abstract setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVerifyListener(Lcom/netease/ntunisdk/base/OnVerifyListener;I)V
.end method

.method public abstract setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;I)V
.end method
