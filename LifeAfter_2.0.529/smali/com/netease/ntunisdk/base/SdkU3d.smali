.class public Lcom/netease/ntunisdk/base/SdkU3d;
.super Ljava/lang/Object;
.source "SdkU3d.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnCodeScannerListener;
.implements Lcom/netease/ntunisdk/base/OnContinueListener;
.implements Lcom/netease/ntunisdk/base/OnControllerListener;
.implements Lcom/netease/ntunisdk/base/OnExitListener;
.implements Lcom/netease/ntunisdk/base/OnExtendFuncListener;
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;
.implements Lcom/netease/ntunisdk/base/OnLeaveSdkListener;
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;
.implements Lcom/netease/ntunisdk/base/OnLogoutDoneListener;
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;
.implements Lcom/netease/ntunisdk/base/OnProtocolFinishListener;
.implements Lcom/netease/ntunisdk/base/OnPushListener;
.implements Lcom/netease/ntunisdk/base/OnQRCodeListener;
.implements Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;
.implements Lcom/netease/ntunisdk/base/OnQuestListener;
.implements Lcom/netease/ntunisdk/base/OnReceiveMsgListener;
.implements Lcom/netease/ntunisdk/base/OnShareListener;
.implements Lcom/netease/ntunisdk/base/OnShowViewListener;
.implements Lcom/netease/ntunisdk/base/OnVerifyListener;
.implements Lcom/netease/ntunisdk/base/OnWebViewListener;
.implements Lcom/netease/ntunisdk/base/QueryFriendListener;
.implements Lcom/netease/ntunisdk/base/QueryRankListener;


# static fields
.field public static final CALLBACKTYPE_DL_OnFinish:Ljava/lang/String; = "DL_OnFinish"

.field public static final CALLBACKTYPE_DL_OnProgress:Ljava/lang/String; = "DL_OnProgress"

.field public static final CALLBACKTYPE_OnApplyFriend:Ljava/lang/String; = "OnApplyFriend"

.field public static final CALLBACKTYPE_OnCancelLocalPushFinished:Ljava/lang/String; = "OnCancelLocalPushFinished"

.field public static final CALLBACKTYPE_OnClosed:Ljava/lang/String; = "OnClosed"

.field public static final CALLBACKTYPE_OnCodeScannerFinish:Ljava/lang/String; = "OnCodeScannerFinish"

.field public static final CALLBACKTYPE_OnContinue:Ljava/lang/String; = "OnContinue"

.field public static final CALLBACKTYPE_OnCreateQRCodeDone:Ljava/lang/String; = "OnCreateQRCodeDone"

.field public static final CALLBACKTYPE_OnEnterGame:Ljava/lang/String; = "OnEnterGame"

.field public static final CALLBACKTYPE_OnExitView:Ljava/lang/String; = "OnExitView"

.field public static final CALLBACKTYPE_OnExitViewFailed:Ljava/lang/String; = "OnExitViewFailed"

.field public static final CALLBACKTYPE_OnExtendFuncCall:Ljava/lang/String; = "OnExtendFuncCall"

.field public static final CALLBACKTYPE_OnFailed:Ljava/lang/String; = "OnFailed"

.field public static final CALLBACKTYPE_OnFailure:Ljava/lang/String; = "OnFailure"

.field public static final CALLBACKTYPE_OnFinishInit:Ljava/lang/String; = "OnFinishInit"

.field public static final CALLBACKTYPE_OnGetUserPushFinished:Ljava/lang/String; = "OnGetUserPushFinished"

.field public static final CALLBACKTYPE_OnIsDarenUpdated:Ljava/lang/String; = "OnIsDarenUpdated"

.field public static final CALLBACKTYPE_OnLeaveSdk:Ljava/lang/String; = "OnLeaveSdk"

.field public static final CALLBACKTYPE_OnLoginDone:Ljava/lang/String; = "OnLoginDone"

.field public static final CALLBACKTYPE_OnLogoutDone:Ljava/lang/String; = "onLogoutDone"

.field public static final CALLBACKTYPE_OnOpened:Ljava/lang/String; = "OnOpened"

.field public static final CALLBACKTYPE_OnOrderCheck:Ljava/lang/String; = "OnOrderCheck"

.field public static final CALLBACKTYPE_OnProtocolFinish:Ljava/lang/String; = "OnProtocolFinish"

.field public static final CALLBACKTYPE_OnQueryAvailablesInvitees:Ljava/lang/String; = "OnQueryAvailablesInvitees"

.field public static final CALLBACKTYPE_OnQueryFriendList:Ljava/lang/String; = "OnQueryFriendList"

.field public static final CALLBACKTYPE_OnQueryFriendListInGame:Ljava/lang/String; = "OnQueryFriendListInGame"

.field public static final CALLBACKTYPE_OnQueryMyAccount:Ljava/lang/String; = "OnQueryMyAccount"

.field public static final CALLBACKTYPE_OnQueryRank:Ljava/lang/String; = "OnQueryRank"

.field public static final CALLBACKTYPE_OnQuerySkuDetails:Ljava/lang/String; = "OnQuerySkuDetails"

.field public static final CALLBACKTYPE_OnQuestCompleted:Ljava/lang/String; = "OnQuestCompleted"

.field public static final CALLBACKTYPE_OnReceivedNotification:Ljava/lang/String; = "OnReceivedNotification"

.field public static final CALLBACKTYPE_OnRewarded:Ljava/lang/String; = "OnRewarded"

.field public static final CALLBACKTYPE_OnSendLocalNotificationFinished:Ljava/lang/String; = "OnSendLocalNotificationFinished"

.field public static final CALLBACKTYPE_OnSendPushNotificationFinished:Ljava/lang/String; = "OnSendPushNotificationFinished"

.field public static final CALLBACKTYPE_OnSetUserPushFinished:Ljava/lang/String; = "OnSetUserPushFinished"

.field public static final CALLBACKTYPE_OnShare:Ljava/lang/String; = "OnShare"

.field public static final CALLBACKTYPE_OnSuccess:Ljava/lang/String; = "OnSuccess"

.field public static final CALLBACKTYPE_OnUpdateRank:Ljava/lang/String; = "OnUpdateRank"

.field public static final CALLBACKTYPE_OnWebViewNativeCall:Ljava/lang/String; = "OnWebViewNativeCall"

.field private static a:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String; = "Main Camera"

.field private static c:Lcom/netease/ntunisdk/base/callback/U3dDlCallback;

.field public static inst:Lcom/netease/ntunisdk/base/GamerInterface;

.field public static instU3d:Lcom/netease/ntunisdk/base/SdkU3d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 85
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->a:Ljava/lang/Class;

    .line 87
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b()Lcom/netease/ntunisdk/base/callback/U3dDlCallback;
    .locals 1

    .line 18
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->c:Lcom/netease/ntunisdk/base/callback/U3dDlCallback;

    return-object v0
.end method

.method public static callback(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    .line 279
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "callbackType"

    .line 280
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "code"

    .line 281
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "data"

    .line 282
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/base/SdkU3d;->unity3dSendMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static destroyInst()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    sput-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    return-void
.end method

.method public static extendFuncDL(Ljava/lang/String;)V
    .locals 1

    .line 774
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/base/SdkDownload;->extendFunc(Ljava/lang/String;)V

    return-void
.end method

.method public static getInst()Lcom/netease/ntunisdk/base/GamerInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    .line 102
    sput-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v1, "GAME_ENGINE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    .line 104
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V

    .line 105
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    .line 106
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setContinueListener(Lcom/netease/ntunisdk/base/OnContinueListener;I)V

    .line 107
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V

    .line 108
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V

    .line 109
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQueryRankListener(Lcom/netease/ntunisdk/base/QueryRankListener;I)V

    .line 110
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V

    .line 111
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQuerySkuDetailsListener(Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;I)V

    .line 112
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setControllerListener(Lcom/netease/ntunisdk/base/OnControllerListener;I)V

    .line 113
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPushListener(Lcom/netease/ntunisdk/base/OnPushListener;I)V

    .line 114
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQuestListener(Lcom/netease/ntunisdk/base/OnQuestListener;I)V

    .line 115
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setShowViewListener(Lcom/netease/ntunisdk/base/OnShowViewListener;I)V

    .line 116
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setReceiveMsgListener(Lcom/netease/ntunisdk/base/OnReceiveMsgListener;I)V

    .line 117
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    .line 118
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;I)V

    .line 119
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setVerifyListener(Lcom/netease/ntunisdk/base/OnVerifyListener;I)V

    .line 120
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V

    .line 121
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setOnProtocolFinishListener(Lcom/netease/ntunisdk/base/OnProtocolFinishListener;I)V

    .line 122
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQRCodeListener(Lcom/netease/ntunisdk/base/OnQRCodeListener;I)V

    .line 125
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->inst:Lcom/netease/ntunisdk/base/GamerInterface;

    return-object v0
.end method

.method public static getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;
    .locals 1

    .line 91
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->instU3d:Lcom/netease/ntunisdk/base/SdkU3d;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/netease/ntunisdk/base/SdkU3d;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/SdkU3d;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->instU3d:Lcom/netease/ntunisdk/base/SdkU3d;

    .line 94
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/SdkU3d;->instU3d:Lcom/netease/ntunisdk/base/SdkU3d;

    return-object v0
.end method

.method public static init()V
    .locals 2

    :try_start_0
    const-string v0, "UniSDK SdkU3d"

    const-string v1, "try SdkU3d init"

    .line 130
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->getInstU3d()Lcom/netease/ntunisdk/base/SdkU3d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-void

    :catch_2
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :catch_3
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void
.end method

.method public static initDL()V
    .locals 3

    .line 736
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkDownload;->setContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 740
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 738
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 748
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/base/SdkU3d$1;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/SdkU3d$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkDownload;->setDownloadCallback(Lcom/netease/download/listener/DownloadListener;)V

    return-void
.end method

.method public static ntCheckOrder(Ljava/lang/String;)V
    .locals 2

    .line 172
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "try SdkU3d ntCheckOrder: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkU3d"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "jsonStr is null"

    .line 174
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;

    move-result-object p0

    .line 178
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public static ntCheckOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 156
    :try_start_0
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UniSDK SdkU3d"

    const-string p2, "order create error"

    .line 160
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static ntConsume(Ljava/lang/String;)V
    .locals 2

    .line 211
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "try SdkU3d ntConsume: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkU3d"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "jsonStr is null"

    .line 213
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;

    move-result-object p0

    .line 217
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntConsume(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public static ntQueryRank(Ljava/lang/String;)V
    .locals 2

    .line 185
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "try SdkU3d ntQueryRank: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkU3d"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "jsonStr is null"

    .line 187
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/base/QueryRankInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/QueryRankInfo;

    move-result-object p0

    .line 191
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V

    return-void
.end method

.method public static ntQuerySkuDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "try SdkU3d ntQuerySkuDetails: itemType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jsonStr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkU3d"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "itemType is null"

    .line 228
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "jsonStr is null"

    .line 232
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 238
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 239
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQuerySkuDetails(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public static ntShare(Ljava/lang/String;)V
    .locals 2

    .line 198
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "try SdkU3d ntShare: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkU3d"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "jsonStr is null"

    .line 200
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/base/ShareInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/ShareInfo;

    move-result-object p0

    .line 204
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method

.method public static setCallbackModule(Ljava/lang/String;)V
    .locals 1

    .line 251
    sput-object p0, Lcom/netease/ntunisdk/base/SdkU3d;->b:Ljava/lang/String;

    .line 252
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdkU3d setCallbackModule:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NtUniSdk"

    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setU3dDlCallback(Lcom/netease/ntunisdk/base/callback/U3dDlCallback;)V
    .locals 0

    .line 778
    sput-object p0, Lcom/netease/ntunisdk/base/SdkU3d;->c:Lcom/netease/ntunisdk/base/callback/U3dDlCallback;

    return-void
.end method

.method public static unity3dSendMessage(Ljava/lang/String;)V
    .locals 8

    .line 262
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "UnitySendMessage"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 263
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkU3d;->a()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/netease/ntunisdk/base/SdkU3d;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "OnSdkMsgCallback"

    aput-object v3, v2, v6

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :catch_2
    move-exception p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_3
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void

    :catch_4
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public OnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "OnWebViewNativeCall"

    .line 665
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "action"

    .line 669
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    .line 670
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 672
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public codeScannerFinish(ILjava/lang/String;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "codeScannerFinish"

    .line 706
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    .line 710
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "extra"

    .line 711
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "OnCodeScannerFinish"

    const/4 p2, 0x1

    .line 712
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 714
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public continueGame()V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "continueGame"

    .line 363
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnContinue"

    const/4 v1, 0x1

    const-string v2, ""

    .line 364
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public createQRCodeDone(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "createQRCodeDone"

    .line 726
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnCreateQRCodeDone"

    const/4 v1, 0x1

    .line 727
    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public exitApp()V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "exitApp"

    .line 345
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnExitView"

    const/4 v1, 0x1

    const-string v2, ""

    .line 346
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public finishInit(I)V
    .locals 2

    .line 297
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishInit,code="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkU3d"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnFinishInit"

    const-string v1, ""

    .line 298
    invoke-static {v0, p1, v1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public leaveSdk(I)V
    .locals 2

    const-string v0, "OnLeaveSdk"

    const-string v1, ""

    .line 324
    invoke-static {v0, p1, v1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public loginDone(I)V
    .locals 2

    .line 306
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginDone,code="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkU3d"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnLoginDone"

    const-string v1, ""

    .line 307
    invoke-static {v0, p1, v1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public logoutDone(I)V
    .locals 2

    .line 315
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "logoutDone,code="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkU3d"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onLogoutDone"

    const-string v1, ""

    .line 316
    invoke-static {v0, p1, v1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onApplyFriendFinished(Z)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on apply friend finished"

    .line 429
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OnApplyFriend"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onCancelLocalPushFinished(Z)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onCancelLocalPushFinished"

    .line 623
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OnCancelLocalPushFinished"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onClosed()V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onClosed"

    .line 587
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnClosed"

    const/4 v1, 0x1

    const-string v2, ""

    .line 588
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onEnterGame"

    .line 532
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "op"

    .line 536
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "jsonParams"

    .line 538
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "JSONException"

    .line 540
    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 543
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "data:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 545
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OnEnterGame"

    invoke-static {v0, p1, p2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onExtendFuncCall(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onExtendFuncCall"

    .line 659
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnExtendFuncCall"

    const/4 v1, 0x1

    .line 660
    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onFailed()V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onFailed"

    .line 581
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnFailed"

    const/4 v1, 0x1

    const-string v2, ""

    .line 582
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onFailure"

    .line 692
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    .line 696
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 697
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "OnFailure"

    const/4 p2, 0x1

    .line 698
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 700
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public onGetUserPushFinished(Z)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onGetUserPushFinished"

    .line 611
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OnGetUserPushFinished"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onInviteFriendListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onInviterListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onIsDarenUpdated(Z)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on isDarenUpdated"

    .line 438
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OnIsDarenUpdated"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    return-void
.end method

.method public onKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    return-void
.end method

.method public onLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    return-void
.end method

.method public onOpenExitViewFailed()V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onOpenExitViewFailed"

    .line 354
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnExitViewFailed"

    const/4 v1, 0x1

    const-string v2, ""

    .line 355
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onOpened()V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onOpened"

    .line 575
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnOpened"

    const/4 v1, 0x1

    const-string v2, ""

    .line 576
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onProtocolFinish(I)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onProtocolFinish"

    .line 720
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "OnProtocolFinish"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onQueryAvailablesInviteesFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on query availables invitees finished"

    .line 395
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    .line 397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 398
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 399
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 402
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 405
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnQueryAvailablesInvitees"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onQueryFriendListFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on query friends finished"

    .line 372
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 375
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 376
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 382
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnQueryFriendList"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onQueryFriendListInGameFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on query friends inGame finished"

    .line 478
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    .line 480
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 481
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 482
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 485
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 488
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnQueryFriendListInGame"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on query myAccount finished"

    .line 418
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnQueryMyAccount"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onQueryRankFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on query rank finished"

    .line 447
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    .line 449
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 450
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 451
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 454
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 457
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnQueryRank"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onQuestCompleted(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onQuestCompleted"

    .line 593
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnQuestCompleted"

    const/4 v1, 0x1

    .line 594
    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onReceivedNotification()V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onReceivedNotification"

    .line 525
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnReceivedNotification"

    const/4 v1, 0x1

    const-string v2, ""

    .line 526
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onRewarded()V
    .locals 3

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onRewarded"

    .line 569
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnRewarded"

    const/4 v1, 0x1

    const-string v2, ""

    .line 570
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onRightStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    return-void
.end method

.method public onSendLocalNotificationFinished(I)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onSendLocalNotificationFinished"

    .line 605
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "OnSendLocalNotificationFinished"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onSendPushNotificationFinished(Z)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onSendPushNotificationFinished"

    .line 599
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OnSendPushNotificationFinished"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onSetUserPushFinished(Z)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onSetUserPushFinished"

    .line 617
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OnSetUserPushFinished"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onShareFinished(Z)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on share finished"

    .line 499
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OnShare"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onStateEvent(Lcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "onSuccess"

    .line 678
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    .line 682
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 683
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "OnSuccess"

    const/4 p2, 0x1

    .line 684
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 686
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public onUpdateAchievement(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateRankFinished(Z)V
    .locals 2

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "on update rank finished"

    .line 469
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "OnUpdateRank"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 4

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "begin check order done..."

    .line 332
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v1

    .line 334
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkOrderDone,code="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnOrderCheck"

    .line 337
    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public querySkuDetailsFinished(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/SkuDetailsInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UniSDK SdkU3d"

    const-string v1, "querySkuDetailsFinished"

    .line 550
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    .line 552
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 553
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 554
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->obj2Json(Lcom/netease/ntunisdk/base/SkuDetailsInfo;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 557
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 560
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnQuerySkuDetails"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkU3d;->callback(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
