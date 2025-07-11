.class public abstract Lcom/netease/ntunisdk/base/SdkBase;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/netease/ntunisdk/base/GamerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/SdkBase$a;
    }
.end annotation


# static fields
.field public static final DRPF_ERR_INVALID_INPUT_JSON:I = 0x5

.field public static final DRPF_ERR_JSON:I = 0x4

.field public static final DRPF_ERR_NO_PROJECT:I = 0x1

.field public static final DRPF_ERR_NO_SOURCE:I = 0x2

.field public static final DRPF_ERR_NO_TYPE:I = 0x3

.field public static final DRPF_SUCCESS:I = 0x0

.field public static final HTTP_QUEUE_UNISDK:Ljava/lang/String; = "UniSDK"

.field protected static IMEI:Ljava/lang/String; = null

.field private static L:I = 0x0

.field protected static final ORDERS_CREATED_PREFIX:Ljava/lang/String; = "OrdersCreated_"

.field protected static final ORDERS_ENCRYPTED_PREFIX:Ljava/lang/String; = "OrdersEncrypted_"

.field protected static final ORDER_TTL:J = 0x93a80L

.field private static P:Ljava/lang/String; = "\u4e3a\u652f\u6301\u8ba1\u8d39\u7cfb\u7edf\u7684\u652f\u4ed8\u5bf9\u8d26, UniSDK\u4f1a\u4e0a\u4f20\u9996\u6b21\u6253\u5f00\u6e38\u620f\u65e5\u5fd7\u548c\u5145\u503c\u6210\u529f\u65e5\u5fd7\u5230\u8ba1\u8d39 \n\u6e38\u620f\u9700\u8981\u5728UniPack\u9879\u76ee\u53c2\u6570\u4e2d\u914d\u7f6e\u8ba1\u8d39\u76f8\u5173\u53c2\u6570\u6216\u8005\u5728\u6bcd\u5305\u91cc\u9762SdkMgr.init()\u4e4b\u540e\uff0cSdkMgr.getInst().ntInit()\u4e4b\u524d\u8c03\u7528\u4e0b\u9762\u7684\u63a5\u53e3\uff1a \nSdkMgr.getInst().setPropStr(ConstProp.JF_GAMEID, \"\u4ece\u8ba1\u8d39Jelly\u83b7\u53d6\u7684gameid\"); \nSdkMgr.getInst().setPropStr(ConstProp.JF_LOG_KEY, \"\u4ece\u8ba1\u8d39Jelly\u83b7\u53d6\u7684log_key\"); \n"

.field protected static final SDK_MODE_GAMESERVER:I = 0x0

.field protected static final SDK_MODE_NO_GAMESERVER:I = 0x1

.field protected static final UNISDK_FIRST_OPEN:Ljava/lang/String; = "UniSDK_FirstOpen"

.field public static hasChangeLocation:Z


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/netease/ntunisdk/base/OnProtocolFinishListener;

.field private C:J

.field private D:J

.field private E:J

.field private F:J

.field private G:J

.field private H:J

.field private I:Z

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lcom/netease/ntunisdk/base/PayChannelManager;

.field private M:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

.field private N:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/netease/ntunisdk/base/OnStartupListener;

.field private b:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

.field private c:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

.field private d:Lcom/netease/ntunisdk/base/OnLeaveSdkListener;

.field private e:Lcom/netease/ntunisdk/base/OnContinueListener;

.field private f:Lcom/netease/ntunisdk/base/OnReceiveMsgListener;

.field private g:Lcom/netease/ntunisdk/base/OnExitListener;

.field private h:Lcom/netease/ntunisdk/base/QueryFriendListener;

.field protected hasInit:Z

.field private i:Lcom/netease/ntunisdk/base/QueryRankListener;

.field private j:Lcom/netease/ntunisdk/base/OnQuestListener;

.field private k:Lcom/netease/ntunisdk/base/OnShareListener;

.field private l:Lcom/netease/ntunisdk/base/OnPushListener;

.field private loginListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

.field protected loginSdkInstMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation
.end field

.field private logoutListener:Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

.field private m:Lcom/netease/ntunisdk/base/OnControllerListener;

.field protected myCtx:Landroid/content/Context;

.field private n:Lcom/netease/ntunisdk/base/OnShowViewListener;

.field private o:Lcom/netease/ntunisdk/base/OnConnectListener;

.field private orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

.field private p:Lcom/netease/ntunisdk/base/OnVerifyListener;

.field private q:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

.field private querySkuDetailsListener:Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;

.field private r:Lcom/netease/ntunisdk/base/OnQRCodeListener;

.field private s:Lcom/netease/ntunisdk/base/OnExtendFuncListener;

.field protected sdkInstMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/opengl/GLSurfaceView;

.field private u:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected uiThreadId:J

.field private v:Z

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    .line 96
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    .line 97
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    .line 98
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->b:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    .line 99
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    .line 100
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->c:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    .line 101
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->logoutListener:Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

    .line 102
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->d:Lcom/netease/ntunisdk/base/OnLeaveSdkListener;

    .line 103
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->e:Lcom/netease/ntunisdk/base/OnContinueListener;

    .line 104
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->f:Lcom/netease/ntunisdk/base/OnReceiveMsgListener;

    .line 105
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->g:Lcom/netease/ntunisdk/base/OnExitListener;

    .line 106
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    .line 107
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->i:Lcom/netease/ntunisdk/base/QueryRankListener;

    .line 108
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->j:Lcom/netease/ntunisdk/base/OnQuestListener;

    .line 109
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->k:Lcom/netease/ntunisdk/base/OnShareListener;

    .line 110
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    .line 111
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->querySkuDetailsListener:Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;

    .line 112
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    .line 113
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->n:Lcom/netease/ntunisdk/base/OnShowViewListener;

    .line 114
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->o:Lcom/netease/ntunisdk/base/OnConnectListener;

    .line 115
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->p:Lcom/netease/ntunisdk/base/OnVerifyListener;

    .line 116
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->q:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    .line 117
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->r:Lcom/netease/ntunisdk/base/OnQRCodeListener;

    .line 118
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->s:Lcom/netease/ntunisdk/base/OnExtendFuncListener;

    const-wide/16 v0, 0x0

    .line 119
    iput-wide v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->uiThreadId:J

    .line 120
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->t:Landroid/opengl/GLSurfaceView;

    .line 122
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->u:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->v:Z

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->w:Ljava/util/Map;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->y:Ljava/util/Map;

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->z:Ljava/util/Map;

    .line 148
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->B:Lcom/netease/ntunisdk/base/OnProtocolFinishListener;

    .line 177
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->I:Z

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->J:Ljava/util/List;

    .line 2973
    new-instance p1, Lcom/netease/ntunisdk/base/SdkBase$82;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/base/SdkBase$82;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->M:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 3500
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    .line 4324
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->hasInit:Z

    .line 4874
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->O:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic A(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnControllerListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    return-object p0
.end method

.method static synthetic B(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->h()V

    return-void
.end method

.method static synthetic C(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnCodeScannerListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->q:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    return-object p0
.end method

.method static synthetic D(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnQRCodeListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->r:Lcom/netease/ntunisdk/base/OnQRCodeListener;

    return-object p0
.end method

.method static synthetic E(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnVerifyListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->p:Lcom/netease/ntunisdk/base/OnVerifyListener;

    return-object p0
.end method

.method static synthetic F(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnExtendFuncListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->s:Lcom/netease/ntunisdk/base/OnExtendFuncListener;

    return-object p0
.end method

.method static synthetic G(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnProtocolFinishListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->B:Lcom/netease/ntunisdk/base/OnProtocolFinishListener;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;J)J
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->E:J

    return-wide p1
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .line 2287
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 50

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "wifiArray"

    const-string v3, "sys_language"

    const-string v4, "timezone"

    const-string v5, "ntesid"

    const-string v6, "engine_ver"

    const-string v7, "jf_gameid"

    const-string v8, "aaid"

    const-string v9, "vaid"

    const-string v10, "msa_oaid"

    const-string v11, "oaid"

    const-string v12, "unisdk_deviceid"

    const-string v13, "network"

    const-string v14, "common_sdk_ver"

    const-string v15, "sdk_ver"

    move-object/from16 v16, v2

    const-string v2, "app_channel"

    move-object/from16 v17, v3

    const-string v3, "idfa"

    move-object/from16 v18, v4

    const-string v4, "mac_addr"

    move-object/from16 v19, v5

    const-string v5, "os_ver"

    move-object/from16 v20, v6

    const-string v6, "device_model"

    move-object/from16 v21, v7

    const-string v7, "time"

    move-object/from16 v22, v8

    const-string v8, "transid"

    move-object/from16 v23, v9

    .line 7188
    new-instance v9, Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v10

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v25, v11

    const-string v11, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v9, v11, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7189
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 7191
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel()Ljava/lang/String;

    move-result-object v10

    .line 7192
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileVersion()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v12

    .line 7193
    iget-object v12, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v27, v13

    .line 7194
    iget-object v13, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v13}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v28, v14

    .line 7195
    iget-object v14, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v29, v15

    .line 7196
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v2

    .line 7197
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v3

    .line 7198
    iget-object v3, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/NetConnectivity;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v4

    .line 7199
    iget-object v4, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v33, v4

    .line 7200
    iget-object v4, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v34, v4

    const-string v4, "MSA_OAID"

    .line 7201
    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v35, v4

    const-string v4, "VAID"

    .line 7202
    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    const-string v4, "AAID"

    .line 7203
    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    .line 7204
    iget-object v4, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v5

    .line 7205
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDeviceRooted()Z

    move-result v5

    move-object/from16 v39, v6

    .line 7206
    iget-object v6, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v6

    move-object/from16 v40, v7

    const-string v7, "ENGINE_VERSION"

    .line 7207
    invoke-virtual {v1, v7}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v41, v8

    const-string v8, "JF_GAMEID"

    .line 7208
    invoke-virtual {v1, v8}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7209
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getBaseVersion()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    const-string v0, "ntes_id"

    .line 7210
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    .line 7211
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSystemTimeZone()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    .line 7212
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSystemLanguage()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    const-string v0, "WIFI_INFO_LIST"

    .line 7213
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v46, 0x0

    .line 7216
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v46, v1

    .line 7220
    :catch_0
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v47, v0

    const-string v0, "project="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7221
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v48, v7

    const-string v7, "source="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7222
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "type="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7223
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "timeString="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7225
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "device_model="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7226
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "os_ver="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7227
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "mac_addr="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7228
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "idfa="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7229
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "imei="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7230
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "app_channel="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7231
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "sdk_ver="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7232
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "network="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7233
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "transid="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7234
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "is_root="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7235
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "is_emulator="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7236
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "jf_gameid="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7237
    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "engine_ver="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7238
    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "common_sdk_ver="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7239
    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "ntes_id="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7240
    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "timezone="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7241
    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "sys_language="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7242
    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "wifiArray="

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v0, "os_name"

    const-string v1, "android"

    move-object/from16 v7, p1

    move-object/from16 v49, v42

    move-object/from16 v42, v8

    move-object/from16 v8, v49

    .line 7246
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, p0

    .line 7247
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v41

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v40

    .line 7248
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_0

    .line 7249
    invoke-virtual {v7, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    move-object/from16 v0, v39

    .line 7254
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 7255
    invoke-virtual {v7, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    move-object/from16 v0, v38

    .line 7257
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 7258
    invoke-virtual {v7, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    move-object/from16 v0, v32

    .line 7260
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 7261
    invoke-virtual {v7, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    move-object/from16 v0, v31

    .line 7263
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 7264
    invoke-virtual {v7, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v0, "imei"

    .line 7267
    invoke-virtual {v7, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v30

    .line 7269
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 7270
    invoke-virtual {v7, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    move-object/from16 v0, v29

    .line 7272
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 7273
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    move-object/from16 v0, v28

    .line 7275
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 7276
    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    move-object/from16 v0, v27

    .line 7278
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 7279
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    move-object/from16 v0, v26

    .line 7281
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v2, v33

    .line 7282
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    move-object/from16 v0, v25

    .line 7284
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v2, v34

    .line 7285
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    move-object/from16 v0, v24

    .line 7287
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v2, v35

    .line 7288
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    move-object/from16 v0, v23

    .line 7290
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v2, v36

    .line 7291
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    move-object/from16 v0, v22

    .line 7293
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v2, v37

    .line 7294
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7296
    :cond_d
    invoke-virtual {v7, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_root"

    .line 7297
    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "is_emulator"

    .line 7298
    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v0, v21

    .line 7299
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v1, v42

    .line 7300
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    move-object/from16 v0, v20

    .line 7302
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object/from16 v1, v48

    .line 7303
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    move-object/from16 v0, v19

    .line 7305
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    move-object/from16 v1, v43

    .line 7306
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    move-object/from16 v0, v18

    .line 7308
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    move-object/from16 v1, v44

    .line 7309
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    move-object/from16 v0, v17

    .line 7311
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    move-object/from16 v1, v45

    .line 7312
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    move-object/from16 v0, v16

    .line 7314
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz v46, :cond_13

    invoke-virtual/range {v46 .. v46}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_13

    move-object/from16 v1, v46

    .line 7315
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7317
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/util/Hashtable;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    return-object p0
.end method

.method private a(I)V
    .locals 9

    .line 1246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->F:J

    const/16 v0, 0xd

    if-eqz p1, :cond_1

    const-string v1, ""

    if-ne p1, v0, :cond_0

    const/16 v2, 0x26

    .line 1249
    invoke-virtual {p0, v2, p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getDetectData(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SdkBase;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 1251
    invoke-virtual {p0, v2, p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getDetectData(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SdkBase;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/16 v1, 0xa

    if-ne v1, p1, :cond_2

    .line 1256
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UNISDK_LOGIN_ERR_MSG"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1257
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "sdk login error"

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->genClientLoginSn()V

    .line 1261
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "WEB_LOGIN_STATUS"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->setLoginSauthInfo()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x82

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 1265
    :goto_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->useNewSdkProcedure()Z

    move-result v3

    const-string v4, "UNI_SAUTH_FALLBACK"

    .line 1266
    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "ENABLE_CLIENT_SAUTH"

    .line 1267
    invoke-virtual {p0, v5, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v2, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    const-string v6, "OVERSEA_PROJECT"

    .line 1268
    invoke-virtual {p0, v6}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "ENABLE_UNI_SAUTH"

    .line 1269
    invoke-virtual {p0, v7}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v8, "ENABLE_OVERSEA_CHILD_PROTECT"

    invoke-interface {v7, v8, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v7, 0x1

    :goto_5
    if-nez v3, :cond_9

    if-nez v4, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    if-nez v4, :cond_a

    if-eqz v7, :cond_a

    :cond_9
    const/4 v1, 0x1

    .line 1273
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "isNoah:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", uniSauthFallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", overseaProject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniSDK Base"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "should UniSauth: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_d

    if-nez v1, :cond_b

    if-eqz v5, :cond_d

    :cond_b
    if-eqz v1, :cond_c

    .line 1278
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/netease/ntunisdk/base/function/h;->a(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;I)V

    return-void

    .line 1281
    :cond_c
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->c(I)V

    return-void

    .line 1285
    :cond_d
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->b(I)V

    return-void
.end method

.method private a(ILcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 7

    .line 4579
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "DEBUG_MODE"

    const-string v2, "UniSDK Base"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p1, v0, :cond_3

    .line 4581
    invoke-virtual {p0, v1, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v3, p1, :cond_0

    .line 4583
    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->setDebugMode(Z)V

    goto :goto_0

    .line 4585
    :cond_0
    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->setDebugMode(Z)V

    .line 4588
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "SPLASH_SECOND"

    invoke-interface {p1, v0, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    .line 4589
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConstProp.SPLASH_SECOND:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, p1, :cond_1

    .line 4591
    new-instance p1, Lcom/netease/ntunisdk/base/SdkBase$104;

    invoke-direct {p1, p0, p2}, Lcom/netease/ntunisdk/base/SdkBase$104;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    goto :goto_1

    .line 4614
    :cond_1
    new-instance p1, Lcom/netease/ntunisdk/base/SdkBase$105;

    invoke-direct {p1, p0, p2}, Lcom/netease/ntunisdk/base/SdkBase$105;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    .line 4630
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4632
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->g()V

    .line 4633
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p2, "ENABLE_CHANGE_LOCATION"

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "UniSDK_FirstOpen"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4634
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->saveLogToJFOnOpen()V

    .line 4635
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void

    .line 4642
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 4643
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    goto :goto_2

    .line 4645
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    sub-int v6, p1, v6

    aget-object v5, v5, v6

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4649
    :goto_2
    invoke-virtual {v0, v1, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_5

    .line 4651
    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->setDebugMode(Z)V

    goto :goto_3

    .line 4653
    :cond_5
    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->setDebugMode(Z)V

    .line 4656
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ntInit"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "INNER_MODE_SECOND_CHANNEL_NO_INIT"

    .line 4657
    invoke-virtual {v0, v1, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 4658
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$106;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$106;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ILcom/netease/ntunisdk/base/OnFinishInitListener;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    goto :goto_4

    .line 4668
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ship init:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr p1, v3

    .line 4671
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->a(ILcom/netease/ntunisdk/base/OnFinishInitListener;)V

    .line 4673
    :goto_4
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/netease/ntunisdk/base/OrderInfo;Z)V
    .locals 8

    .line 1724
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 1725
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1726
    new-instance v7, Lcom/netease/ntunisdk/base/SdkBase$35;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/base/SdkBase$35;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLcom/netease/ntunisdk/base/OrderInfo;Z)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;ILcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->a(ILcom/netease/ntunisdk/base/OnFinishInitListener;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnFinishInitListener;I)V
    .locals 2

    .line 18678
    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    .line 18699
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "methodId"

    const-string v1, "sdkInitFinish"

    .line 18700
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "code"

    .line 18701
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18702
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string p1, "DEEP_LINK_FROM_LAUNCH"

    .line 19687
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19688
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "deeplinkCallbackFromLaunch: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "UniSDK Base"

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19689
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 19690
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .line 22178
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22179
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "modulesManager extendFunc sync callback\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22181
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22182
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :try_start_1
    const-string v0, "respCode"

    const/4 v2, 0x0

    .line 22185
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "respMsg"

    const-string v2, "succ"

    .line 22186
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "result"

    .line 22187
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22188
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 22190
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ModulesManager extendFuncCall exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "drpf_headers"

    .line 20372
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20373
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drpf_headers="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK Base"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20375
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20376
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "jsonToSend="

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 20381
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p3

    const-string p4, "UNISDK_DRPF_URL"

    invoke-interface {p3, p4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 20382
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 20383
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p3

    const-string p4, "EB"

    invoke-interface {p3, p4}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p3

    const-string p4, "https://drpf-"

    if-eqz p3, :cond_0

    .line 20384
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".proxima.nie.easebar.com"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 20386
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".proxima.nie.netease.com"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 20390
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p0, "null or empty url, drpf will not go on"

    .line 20391
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20395
    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "url="

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20398
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p4, "methodId"

    const-string v1, "MessengerPostData"

    .line 20400
    invoke-virtual {p2, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "channel"

    const-string v1, "messengerKit"

    .line 20401
    invoke-virtual {p2, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "source"

    const-string v1, "drpf"

    .line 20402
    invoke-virtual {p2, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "header"

    .line 20403
    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "logurl"

    .line 20404
    invoke-virtual {p2, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "log"

    .line 20405
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cached"

    const/4 p3, 0x1

    .line 20406
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20407
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 20409
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/netease/ntunisdk/base/SdkBase;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 9068
    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/ExtendFunc;->getInst(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9069
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9071
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9072
    invoke-virtual {v1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;)V

    goto :goto_0

    .line 9076
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "UniSDK Base"

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9077
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ntExtendFunc key1="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9078
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz p1, :cond_2

    .line 9079
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9080
    :cond_2
    invoke-virtual {v1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;)V

    goto :goto_1

    .line 9083
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9084
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ntExtendFunc key2="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9085
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz p1, :cond_5

    .line 9086
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 9087
    :cond_5
    invoke-virtual {v1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 9091
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 9092
    :cond_7
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 9097
    invoke-static {p1}, Lcom/netease/ntunisdk/base/function/ExtendFunc;->getInst(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9098
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9100
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9101
    invoke-virtual {v1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9105
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "UniSDK Base"

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9106
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ntExtendFunc key1="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9107
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz p1, :cond_2

    .line 9108
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9109
    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 9112
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9113
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ntExtendFunc key2="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9114
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz p1, :cond_5

    .line 9115
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 9116
    :cond_5
    invoke-virtual {v1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 9119
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 9120
    :cond_7
    invoke-virtual {p0, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 5

    .line 8986
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p0, v0, p1, p2}, Lcom/netease/ntunisdk/base/function/ExtendFunc;->extendFuncForInner(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 8989
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "UniSDK Base"

    if-eqz v2, :cond_0

    const-string p1, "methodId invalid."

    .line 8990
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8992
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v4, "pharos"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "ntExtendFunc \u8c03\u7528\u6bcd\u5305\u706f\u5854\u63a5\u53e3\u7c7b\u7684extendFunc"

    .line 8994
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8995
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKPharos;->getInstance()Lcom/netease/ntunisdk/base/SDKPharos;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SDKPharos;->extendFunc(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_1
    const-string v2, "fromAiDetect"

    .line 8998
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8999
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "src"

    .line 9000
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "aiDetect4GameLoginSuc"

    .line 9001
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9002
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->f()V

    goto :goto_0

    :cond_2
    const-string v2, "getAllChannelVersions"

    .line 9006
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9008
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "base"

    .line 9009
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getBaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9010
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9011
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9012
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9013
    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 9016
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9017
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9018
    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const-string v0, "respCode"

    const/4 v2, 0x0

    .line 9021
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "respMsg"

    const-string v2, "succ"

    .line 9022
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "result"

    .line 9023
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9024
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 9026
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :goto_3
    return v0
.end method

.method private varargs a(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;)Z
    .locals 1

    .line 9042
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/function/ExtendFunc;->extendFuncForInner(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/SdkBase;J)J
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->G:J

    return-wide p1
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnStartupListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 278
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "com.netease.apk_distro/config.json"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "distro_id"

    .line 287
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "UID"

    .line 3407
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UIN"

    goto/16 :goto_0

    :cond_0
    const-string v0, "FULL_UID"

    .line 3409
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "FULL_UIN"

    goto/16 :goto_0

    :cond_1
    const-string v0, "USERINFO_REGION_ID"

    .line 3411
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "region_id"

    goto/16 :goto_0

    :cond_2
    const-string v0, "USERINFO_REGION_NAME"

    .line 3413
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "region_name"

    goto/16 :goto_0

    :cond_3
    const-string v0, "CURRENCY"

    .line 3415
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "currency"

    goto/16 :goto_0

    :cond_4
    const-string v0, "RATE"

    .line 3417
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "rate"

    goto/16 :goto_0

    :cond_5
    const-string v0, "APP_DATA"

    .line 3419
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "app_data"

    goto/16 :goto_0

    :cond_6
    const-string v0, "JF_OVERSEA_FF_LOG_URL"

    .line 3421
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "JF_OVERSEA_PAY_LOG_URL"

    goto :goto_0

    :cond_7
    const-string v0, "JF_FF_LOG_URL"

    .line 3423
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "JF_PAY_LOG_URL"

    goto :goto_0

    :cond_8
    const-string v0, "HAS_FF_CB"

    .line 3425
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "HAS_PAY_CB"

    goto :goto_0

    :cond_9
    const-string v0, "FF_CB_URL"

    .line 3427
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "PAY_CB_URL"

    goto :goto_0

    :cond_a
    const-string v0, "JF_CLIENT_KEY"

    .line 3429
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "JF_LOG_KEY"

    goto :goto_0

    :cond_b
    const-string v0, "X_LBS_TOKEN"

    .line 3431
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "X-LBS-TOKEN"

    goto :goto_0

    :cond_c
    const-string v0, "MODE_HAS_CC_RECORD"

    .line 3433
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "FEATURE_HAS_CCRECORD"

    goto :goto_0

    :cond_d
    if-eqz p0, :cond_e

    const-string v0, "MODE_"

    .line 3435
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "FEATURE_"

    .line 3436
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_e
    if-eqz p0, :cond_f

    const-string v0, "NT_"

    .line 3437
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    .line 3438
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_f
    :goto_0
    return-object p0
.end method

.method private b(I)V
    .locals 5

    const-string v0, "SAUTH_JSON"

    if-eqz p1, :cond_0

    const/16 v1, 0xd

    if-eq v1, p1, :cond_0

    const/16 v1, 0x82

    if-ne v1, p1, :cond_1

    .line 1291
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UNISDK_LOGIN_ERR_MSG"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->getInstance(Landroid/app/Activity;)Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dismiss()V

    .line 1296
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    const-string v2, "UniSDK Base"

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    const-string v3, "LOGIN_CALLER_THREAD"

    .line 1297
    invoke-virtual {p0, v3, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1298
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$124;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$124;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1306
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "runOnUIThread, loginDone: code="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current thread="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    invoke-interface {v1, p1}, Lcom/netease/ntunisdk/base/OnLoginDoneListener;->loginDone(I)V

    goto :goto_0

    :cond_3
    const-string v1, "OnLoginDoneListener not set"

    .line 1310
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1315
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1316
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v0, "step"

    const-string v3, "loginDone_base"

    .line 1319
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "unisdk_code"

    .line 1320
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "extraJson:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    .line 1324
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "UTF-8"

    if-nez v2, :cond_0

    return-void

    .line 2789
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v4

    .line 2790
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "queryMpayResult, sn="

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "UniSDK Base"

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2794
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v6, "UNISDK_QUERYORDER_URL"

    invoke-interface {v0, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2795
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ConstProp.UNISDK_QUERYORDER_URL is empty"

    .line 2796
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2799
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v8, "UNISDK_SERVER_KEY"

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2800
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/netease/ntunisdk/base/GamerInterface;->getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2801
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 2803
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v11, "UIN"

    invoke-interface {v0, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2804
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "0"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    const-string v0, "GAS3_UID"

    .line 2805
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v12, v0

    .line 2808
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v13, "USERINFO_UID"

    invoke-interface {v0, v13}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2810
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getQrCodeParams()Ljava/lang/String;

    move-result-object v0

    .line 2811
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 2812
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v12

    const-string v12, "qrCodeParams="

    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2817
    :try_start_1
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v11

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v11

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v12, v16

    .line 2819
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "\u6570\u636eqrCodeParams json\u89e3\u6790\u9519\u8bef"

    .line 2820
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v16, v12

    move-object/from16 v12, v16

    .line 2825
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2826
    invoke-virtual {v2, v12}, Lcom/netease/ntunisdk/base/OrderInfo;->setUid(Ljava/lang/String;)V

    goto :goto_2

    .line 2828
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v12

    .line 2830
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2831
    invoke-virtual {v2, v14}, Lcom/netease/ntunisdk/base/OrderInfo;->setUserName(Ljava/lang/String;)V

    goto :goto_3

    .line 2833
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v14

    :goto_3
    const-string v0, "uid"

    .line 2836
    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkBase;->a()Ljava/lang/String;

    move-result-object v0

    const-string v11, "loginchannel"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "paychannel"

    .line 2838
    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPlatform()Ljava/lang/String;

    move-result-object v0

    const-string v11, "platform"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "sn"

    .line 2840
    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "state"

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "roleid"

    .line 2842
    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    .line 2844
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v13, "timestamp"

    invoke-interface {v10, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "google_play"

    .line 2845
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    .line 2846
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderEtc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v9, "receipt"

    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    const-string v9, "sign"

    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/netease/ntunisdk/base/SdkBase;->getJfQueryOrderlMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;

    move-result-object v0

    .line 2852
    iget-object v9, v1, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    check-cast v9, Ljava/lang/String;

    move-object/from16 v18, v6

    .line 2853
    iget-object v6, v1, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v6, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getJfQueryOrderlMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;

    move-result-object v6

    if-eqz v0, :cond_9

    if-eqz v6, :cond_a

    .line 2856
    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_5

    :cond_9
    move-object v0, v6

    :cond_a
    :goto_5
    move-object/from16 v6, v18

    move-object/from16 v9, v19

    goto :goto_4

    :cond_b
    move-object/from16 v18, v6

    if-eqz v0, :cond_c

    .line 2862
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2863
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v19, v6

    .line 2864
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v10, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v19

    goto :goto_6

    .line 2868
    :cond_c
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v6, "UNISDK_SERVER_MODE"

    const/4 v9, 0x0

    invoke-interface {v0, v6, v9}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v6, v0, :cond_f

    .line 2870
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v0, "ConstProp.UNISDK_SERVER_KEY is empty"

    .line 2871
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2874
    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "sdkmode"

    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2875
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/Crypto;->genAESKey()Ljava/lang/String;

    move-result-object v9

    const-string v0, "sdkkey"

    .line 2876
    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2878
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrdersCreated_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v10

    const-string v10, ""

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2879
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v21, v1

    .line 2881
    :try_start_2
    new-instance v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v22, v7

    const/4 v7, 0x0

    :try_start_3
    invoke-static {v0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2882
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->jsonToMapSet(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v22, v7

    .line 2884
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v1, v21

    .line 2886
    :goto_8
    invoke-interface {v1, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2887
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2888
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "orders_created="

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v5

    const-string v5, "OrdersEncrypted_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2892
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 2893
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "encrypted"

    .line 2894
    invoke-interface {v7, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    :cond_e
    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2897
    invoke-static {v7}, Lcom/netease/ntunisdk/base/utils/StrUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2899
    :try_start_4
    invoke-static {v1, v8}, Lcom/netease/ntunisdk/base/utils/Crypto;->rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2909
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 2910
    invoke-interface {v7, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2911
    invoke-interface {v7, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2913
    invoke-static {v7}, Lcom/netease/ntunisdk/base/utils/StrUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2915
    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v9}, Lcom/netease/ntunisdk/base/utils/Crypto;->aesEncrypt([BLjava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 2916
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2923
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2924
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2925
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2926
    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2927
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v1, v21

    goto :goto_9

    :catch_4
    move-exception v0

    .line 2918
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2919
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryMpayResult, aesEncrypt error:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_5
    move-exception v0

    move-object/from16 v1, v21

    move-object v2, v0

    .line 2901
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "queryMpayResult rsaEncrypt error:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_f
    move-object v1, v5

    move-object/from16 v22, v7

    move-object/from16 v20, v10

    :goto_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v22, v0, v2

    const/4 v2, 0x1

    aput-object v20, v0, v2

    const-string v2, "/queryorder url=%s, bodyPairs=%s"

    .line 2930
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v1, "POST"

    .line 2933
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    move-object/from16 v1, v22

    .line 2934
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 2935
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    const/16 v1, 0x32

    .line 2936
    iput v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    move-object/from16 v1, v20

    .line 2937
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/util/Map;)V

    .line 2938
    iput-object v8, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->keyRSA:Ljava/lang/String;

    move-object/from16 v1, v18

    .line 2939
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 2940
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$81;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase$81;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    const-string v1, "PAY"

    .line 2969
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResend()V

    .line 2970
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "drpf_headers"

    .line 21328
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21329
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drpf_headers="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK Base"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21331
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21332
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "jsonToSend="

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21333
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 21337
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p3, "UNISDK_DRPF_URL"

    invoke-interface {p1, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 21339
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p3, "EB"

    invoke-interface {p1, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    const-string p3, "https://drpf-"

    if-eqz p1, :cond_0

    .line 21340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".proxima.nie.easebar.com"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 21342
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".proxima.nie.netease.com"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21346
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p0, "null or empty url, drpf will not go on"

    .line 21347
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21351
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "url="

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21352
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object p2

    const-string p3, "POST"

    .line 21353
    iput-object p3, p2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 21354
    iput-object p1, p2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 21355
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 21356
    invoke-virtual {p2, p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    .line 21357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 21359
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->jsonToStrMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "drpf_headers json parse error"

    .line 21361
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21362
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    const-string p0, "DRPF"

    .line 21365
    iput-object p0, p2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    const-string p0, "UniSDK"

    .line 21366
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResend()V

    .line 21367
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/netease/ntunisdk/base/SdkBase;J)J
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->D:J

    return-wide p1
.end method

.method static synthetic c(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    return-object p0
.end method

.method private c(I)V
    .locals 10

    const-string v0, "UniSDK Base"

    const-string v1, "clientSauth"

    .line 1328
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UNISDK_JF_GAS3_URL"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1330
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_0

    const-string p1, "UNISDK_JF_GAS3_URL is empty"

    .line 1331
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->b(I)V

    return-void

    .line 1335
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UNISDK_JF_GAS3_URL:"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    .line 1337
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "client_sauth"

    .line 1338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "/client_sauth"

    .line 1340
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1345
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "SAUTH_JSON"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1348
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "hostid"

    .line 1349
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v6, "USERINFO_HOSTID"

    invoke-interface {v2, v6, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1350
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "LOCAL_IP"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "127.0.0.1"

    :cond_2
    const-string v2, "ip"

    .line 1354
    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1356
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "DISABLE_UPLOAD_LOCAL_IP"

    invoke-interface {v1, v2, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1357
    invoke-static {v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->traverseJSONObject2removeIP(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v5

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1360
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sauthJson exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    :cond_3
    :goto_2
    if-nez v5, :cond_4

    const-string p1, "clientSauth bodyJson is empty"

    .line 1364
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->b(I)V

    return-void

    .line 1369
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v1

    const-string v2, "POST"

    .line 1370
    iput-object v2, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 1371
    iput-object v7, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 1372
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 1373
    iput v4, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 1374
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    const-string v2, "UNISDK_CLIENT_SAUTH"

    .line 1375
    iput-object v2, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 1376
    new-instance v2, Lcom/netease/ntunisdk/base/SdkBase$135;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$135;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    iput-object v2, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 1409
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v2, "JF_LOG_KEY"

    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1412
    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1413
    iget-object v6, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->addSecureHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1414
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    const-string p1, "PAY"

    .line 1415
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 1417
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hmacSHA256Signature exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->b(I)V

    return-void

    :cond_5
    const-string p1, "JF_CLIENT_KEY empty"

    .line 1421
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->b(I)V

    return-void
.end method

.method private c(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "UniSDK Base"

    const-string v0, "createOrder"

    .line 1989
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "UNISDK_CREATEORDER_URL"

    .line 1990
    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1992
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConstProp.UNISDK_CREATEORDER_URL is empty"

    .line 1993
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1994
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    const-string v0, "create order fail"

    .line 1995
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1996
    invoke-virtual/range {p0 .. p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    :cond_0
    const-string v0, "UIN"

    .line 2000
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2001
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "0"

    if-nez v7, :cond_1

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const-string v6, "GAS3_UID"

    .line 2002
    invoke-virtual {v1, v6}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v7, "USERINFO_UID"

    .line 2004
    invoke-virtual {v1, v7}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "USERINFO_HOSTID"

    .line 2005
    invoke-virtual {v1, v10}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "USERINFO_NAME"

    .line 2006
    invoke-virtual {v1, v12}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "USERINFO_GRADE"

    .line 2007
    invoke-virtual {v1, v14}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v6

    const-string v6, "UNISDK_EXT_INFO"

    .line 2008
    invoke-virtual {v1, v6}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v8

    .line 2010
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v9

    const-string v9, "USERINFO_AID"

    move-object/from16 v20, v11

    const/4 v11, -0x1

    move-object/from16 v21, v13

    invoke-virtual {v1, v9, v11}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2012
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getQrCodeParams()Ljava/lang/String;

    move-result-object v13

    .line 2013
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 2014
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v23, v8

    const-string v8, "qrCodeParams="

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2019
    :try_start_1
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2020
    :try_start_2
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2021
    :try_start_3
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v16, v7

    const/4 v7, 0x0

    .line 2022
    :try_start_4
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 2023
    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 2025
    :cond_3
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2026
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v0, "4"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v6, v0

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v11

    move-object/from16 v9, v16

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v16, v7

    move-object v6, v11

    move-object/from16 v9, v16

    move-object/from16 v13, v21

    :goto_0
    move-object/from16 v8, v23

    move-object v11, v10

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    move-object v6, v11

    move-object/from16 v9, v16

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v6, v11

    goto :goto_1

    :catch_4
    move-exception v0

    move-object/from16 v6, v16

    :goto_1
    move-object/from16 v9, v19

    :goto_2
    move-object/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v8, v23

    .line 2029
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "\u6570\u636eqrCodeParams json\u89e3\u6790\u9519\u8bef"

    .line 2030
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    move-object/from16 v0, v17

    move-object v11, v6

    move-object/from16 v6, v18

    goto :goto_5

    :cond_4
    move-object/from16 v23, v8

    move-object/from16 v11, v16

    move-object/from16 v0, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v13, v21

    :goto_4
    move-object/from16 v8, v23

    .line 2035
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2036
    invoke-virtual {v2, v11}, Lcom/netease/ntunisdk/base/OrderInfo;->setUid(Ljava/lang/String;)V

    goto :goto_6

    .line 2038
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v11

    .line 2040
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2041
    invoke-virtual {v2, v8}, Lcom/netease/ntunisdk/base/OrderInfo;->setAid(Ljava/lang/String;)V

    goto :goto_7

    .line 2043
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object v8

    .line 2045
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2046
    invoke-virtual {v2, v10}, Lcom/netease/ntunisdk/base/OrderInfo;->setServerId(Ljava/lang/String;)V

    goto :goto_8

    .line 2048
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object v10

    .line 2050
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2051
    invoke-virtual {v2, v9}, Lcom/netease/ntunisdk/base/OrderInfo;->setUserName(Ljava/lang/String;)V

    goto :goto_9

    .line 2053
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v9

    .line 2055
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2056
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfExtInfo(Ljava/lang/String;)V

    goto :goto_a

    .line 2058
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v0

    .line 2061
    :goto_a
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 2062
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/netease/ntunisdk/base/SdkBase;->getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v6

    .line 2064
    iget-object v6, v1, Lcom/netease/ntunisdk/base/SdkBase;->K:Lcom/netease/ntunisdk/base/PayChannelManager;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/PayChannelManager;->allyPayEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v14, "allysdk"

    .line 2067
    invoke-virtual {v2, v14}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    :cond_a
    const-string v6, "VIRTUAL_ORDER"

    .line 2070
    invoke-virtual {v1, v6}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v14, "basechannel"

    .line 2072
    invoke-virtual {v2, v14}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 2075
    :cond_b
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v4

    const-string v4, "paychannel="

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "paychannel"

    .line 2076
    invoke-interface {v7, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "uid"

    .line 2077
    invoke-interface {v7, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkBase;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "loginchannel"

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v4

    const-string v6, "platform"

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v4

    const-string v6, "appchannel"

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "bid"

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "count"

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "aid"

    .line 2083
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "LOCAL_IP"

    const-string v6, "127.0.0.1"

    .line 2084
    invoke-virtual {v1, v4, v6}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ip"

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    invoke-virtual {v1, v14}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "sdkversion"

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getUdid()Ljava/lang/String;

    move-result-object v4

    const-string v8, "udid"

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "roleid"

    .line 2087
    invoke-interface {v7, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "DEVICE_ID"

    .line 2088
    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "deviceid"

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "serverid"

    .line 2089
    invoke-interface {v7, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "rolename"

    .line 2090
    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "rolelevel"

    .line 2091
    invoke-interface {v7, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    iget-object v8, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "macaddr"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel()Ljava/lang/String;

    move-result-object v8

    const-string v9, "devname"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "devversion"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDeviceRooted()Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "1"

    goto :goto_b

    :cond_c
    move-object/from16 v8, v18

    :goto_b
    const-string v9, "rooted"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    long-to-int v10, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "timestamp"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v8

    .line 2098
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v8, "UNISDK_SERVER_PRIVATEPARAM"

    .line 2099
    invoke-virtual {v1, v8}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_d
    const-string v9, "privateparam"

    .line 2101
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "UNISDK_SERVER_EXTPARAM"

    .line 2102
    invoke-virtual {v1, v8}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "extparam"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "ext_info"

    .line 2103
    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    .line 2107
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v8

    .line 2108
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v0, "SOURCE_APP_CHANNEL"

    .line 2109
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "SOURCE_PLATFORM"

    .line 2110
    invoke-virtual {v1, v8}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2112
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_f

    move-object v0, v10

    :cond_f
    const-string v9, "source_app_channel"

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v8, v10

    :cond_10
    const-string v0, "source_platform"

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wo_app"

    .line 2115
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "extra pair for wo_app"

    .line 2116
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "feename"

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2120
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const-string v4, "serviceid"

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v0, "channelid"

    .line 2122
    invoke-interface {v7, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "appversion"

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "imei"

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_12
    const-string v0, "youxiqun_sdk"

    .line 2125
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "SESSION"

    const-string v9, "sessionid"

    if-eqz v0, :cond_13

    .line 2126
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_13
    const-string v0, "myapp"

    .line 2127
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2128
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v4, "LOGIN_TYPE"

    invoke-interface {v0, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "logintype"

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v4, "PAY_TOKEN"

    invoke-interface {v0, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "paytoken"

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v4, "PF"

    invoke-interface {v0, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pf"

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v4, "PFKEY"

    invoke-interface {v0, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pfkey"

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_14
    const-string v0, "yixin"

    .line 2133
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2134
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v4, "APP_VERSION"

    invoke-interface {v0, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "channelversion"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "yixin channelversion="

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    const-string v0, "zqgame"

    .line 2137
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2138
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v8, "CPID"

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    :cond_16
    :goto_c
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 2143
    invoke-static {}, Lcom/netease/ntunisdk/base/function/c;->a()Ljava/lang/String;

    move-result-object v8

    .line 2146
    invoke-virtual/range {p0 .. p1}, Lcom/netease/ntunisdk/base/SdkBase;->getJfPaylMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;

    move-result-object v0

    .line 2147
    iget-object v9, v1, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_17
    move-object v10, v0

    :cond_18
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2148
    iget-object v11, v1, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getJfPaylMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;

    move-result-object v0

    if-eqz v10, :cond_17

    if-eqz v0, :cond_18

    .line 2151
    invoke-interface {v10, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_d

    .line 2158
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtraJson()Ljava/lang/String;

    move-result-object v0

    .line 2159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 2161
    :try_start_5
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->jsonToStrMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2163
    invoke-interface {v10, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    .line 2166
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1a
    :goto_e
    if-eqz v10, :cond_1c

    .line 2169
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2170
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2171
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "order_type"

    .line 2172
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 2173
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Ljava/lang/String;

    goto :goto_f

    :cond_1c
    move-object/from16 v0, v16

    const-string v9, "packagename"

    .line 2176
    invoke-interface {v7, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "region"

    .line 2177
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string v4, "ordertype"

    .line 2178
    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v8, "DISABLE_UPLOAD_LOCAL_IP"

    const/4 v9, 0x0

    invoke-interface {v0, v8, v9}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1f

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2182
    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_1e
    const/4 v9, 0x0

    :cond_1f
    :goto_10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v9

    aput-object v7, v0, v4

    const-string v4, "/createorder url=%s, bodyPairs=%s"

    .line 2185
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v3, "POST"

    .line 2188
    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 2189
    iput-object v5, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 2190
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 2191
    iput v9, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 2192
    invoke-virtual {v0, v7}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/util/Map;)V

    .line 2193
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "UNISDK_SERVER_KEY"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->keyRSA:Ljava/lang/String;

    move-object/from16 v3, v17

    .line 2194
    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 2195
    new-instance v3, Lcom/netease/ntunisdk/base/SdkBase$68;

    invoke-direct {v3, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase$68;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    const-string v2, "PAY"

    .line 2283
    invoke-static {v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 4

    .line 4776
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UniSDK Base"

    if-eqz v0, :cond_0

    const-string p0, "detect jsonStr is empty"

    .line 4777
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4780
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "SDK_DETECT_URL"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4781
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4782
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v2, -0x1

    const-string v3, "EB"

    invoke-interface {v0, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "https://data-detect.nie.easebar.com/client/mobile_upload"

    goto :goto_0

    :cond_1
    const-string v0, "https://data-detect.nie.netease.com/client/mobile_upload"

    .line 4790
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "null or empty url, detect will not go on"

    .line 4791
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4795
    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v1

    const-string v2, "POST"

    .line 4796
    iput-object v2, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 4797
    iput-object v0, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 4798
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 4799
    invoke-virtual {v1, p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    const-string p0, "DETECT"

    .line 4800
    iput-object p0, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    const-string p0, "UniSDK"

    .line 4801
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResend()V

    .line 4802
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method private c()Z
    .locals 6

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasFeature(ConstProp.REQUEST_CMCC_PAYTYPE)="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "REQUEST_CMCC_PAYTYPE"

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UniSDK Base"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getCCTypeByImsi()="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getCCTypeByImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contain_mm="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v4, "mm_10086"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contain_g="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v5, "g_10086"

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 311
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 313
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getCCTypeByImsi()Ljava/lang/String;

    move-result-object v1

    const-string v5, "CCTYPE_CMCC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return v3

    :cond_6
    return v2
.end method

.method static synthetic d(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->b:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 11

    const-string v0, "JF_AIM_INFO"

    const-string v1, "UniSDK Base"

    .line 1081
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "JF_GAMEID"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1082
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 1083
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const-string v5, "\u8bf7\u5728assets\\xxx_data\u4e2d\u914d\u7f6eJF_GAMEID"

    invoke-static {v3, v4, v5}, Lcom/netease/ntunisdk/base/utils/StrUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "SESSION"

    .line 1085
    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1086
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v7, "gameid=%s&login_channel=%s&app_channel=%s&platform=%s&username=%s&udid=%s&sessionid=%s&sdk_version=%s"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    .line 1090
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UIN"

    .line 1091
    invoke-virtual {p0, v10}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".win.163.com"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x5

    .line 1092
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getUdid()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    const-string v9, "null"

    const-string v10, "UTF-8"

    if-nez v3, :cond_1

    move-object v3, v9

    goto :goto_0

    .line 1093
    :cond_1
    :try_start_1
    invoke-static {v3, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v8, v2

    const/4 v2, 0x7

    if-nez v5, :cond_2

    goto :goto_1

    .line 1094
    :cond_2
    invoke-static {v5, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    aput-object v9, v8, v2

    .line 1089
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LOCAL_IP"

    const-string v3, "127.0.0.1"

    .line 1097
    invoke-virtual {p0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&ip="

    .line 1098
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "&aim_info="

    .line 1101
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "&"

    .line 1105
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->z:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1107
    :cond_4
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->hasGuestLogined()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "&is_unisdk_guest=1"

    .line 1108
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "&client_login_sn="

    .line 1110
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "CLIENT_LOGIN_SN"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PRI_SAC"

    .line 1113
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PRI_SP"

    .line 1114
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&source_app_channel="

    .line 1115
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v4

    :cond_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&source_platform="

    .line 1116
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object v4, v2

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "ENABLE_CHANGE_LOCATION"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1120
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "PLAYER_REGION"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "PLAYER_COUNTRYCODE"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1122
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "PLAYER_PROVINCECODE"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "&law_region_code="

    .line 1124
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "&country_code="

    .line 1127
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "&province_code="

    .line 1130
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :cond_a
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SAUTH_STR:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .line 9493
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->hasGuestLogined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9494
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->guestNotAllowCallback(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic e(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/PayChannelManager;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->K:Lcom/netease/ntunisdk/base/PayChannelManager;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 4223
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->I:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4224
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->I:Z

    .line 4225
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->J:Ljava/util/List;

    monitor-enter v0

    .line 4226
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4227
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_0

    .line 4229
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/util/Map;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->w:Ljava/util/Map;

    return-object p0
.end method

.method private f()V
    .locals 5

    const-string v0, "UniSDK Base"

    const-string v1, "unisdk"

    const/16 v2, 0x26

    const/4 v3, 0x0

    const-string v4, ""

    .line 5823
    invoke-virtual {p0, v2, v3, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getDetectData(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/base/SdkBase;->c(Ljava/lang/String;)V

    .line 17809
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "project"

    .line 17811
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "source"

    .line 17812
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v3, "device_info"

    .line 17813
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_model"

    .line 17814
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    .line 17815
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    .line 17816
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "idfa"

    .line 17817
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "game_project"

    .line 17818
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "JF_GAMEID"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_name"

    const-string v3, "android"

    .line 17819
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ntesid"

    .line 17820
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "ntes_id"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_channel"

    .line 17821
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_ver"

    .line 17822
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "common_sdk_ver"

    .line 17823
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getBaseVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "unisdk_deviceid"

    .line 17824
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "UNISDK_DEVICE_ID"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17825
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 17826
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "oaid"

    .line 17827
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17829
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "MSA_OAID"

    invoke-interface {v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17830
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "msa_oaid"

    .line 17831
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17833
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "VAID"

    invoke-interface {v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17834
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "vaid"

    .line 17835
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17837
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "AAID"

    invoke-interface {v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17838
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "aaid"

    .line 17839
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "device_info parse error"

    .line 17843
    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17844
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 17846
    :cond_3
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "SDC_DEVICE_INFO_URL"

    invoke-interface {v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17847
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17848
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const/4 v3, -0x1

    const-string v4, "EB"

    invoke-interface {v1, v4, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const-string v1, "https://unisdk.proxima.nie.easebar.com"

    goto :goto_1

    :cond_4
    const-string v1, "https://unisdk.proxima.nie.netease.com"

    .line 17856
    :cond_5
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "null or empty url, postDevInfo2SDC will not go on"

    .line 17857
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 17861
    :cond_6
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v3, "POST"

    .line 17862
    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 17863
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 17864
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 17865
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    const-string v1, "SDC"

    .line 17866
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    const-string v1, "UniSDK"

    .line 17867
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResend()V

    .line 17868
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    .line 5826
    :goto_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5827
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5828
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->gameLoginSuccess()V

    .line 5829
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->anonymousLogin()V

    goto :goto_3

    .line 5831
    :cond_7
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->gameLoginSuccess()V

    .line 5832
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->anonymousLogin()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 8685
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 8689
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 8690
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no JF_GAMEID \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/netease/ntunisdk/base/SdkBase;->P:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/StrUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8693
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "JF_LOG_KEY"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8694
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no JF_LOG_KEY \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/netease/ntunisdk/base/SdkBase;->P:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/StrUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/netease/ntunisdk/base/SdkBase;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->c()Z

    move-result p0

    return p0
.end method

.method private getJFSauthJson()Ljava/lang/String;
    .locals 7

    const-string v0, "UniSDK Base"

    const-string v1, "JF_GAMEID"

    .line 1146
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 1148
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v4, "\u8bf7\u5728assets\\xxx_data\u4e2d\u914d\u7f6eJF_GAMEID"

    invoke-static {v2, v3, v4}, Lcom/netease/ntunisdk/base/utils/StrUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "SESSION"

    .line 1150
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1151
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1153
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "gameid"

    .line 1155
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "login_channel"

    .line 1156
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_channel"

    .line 1157
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform"

    .line 1158
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkuid"

    const-string v6, "UIN"

    .line 1159
    invoke-virtual {p0, v6}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    .line 1160
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getUdid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sessionid"

    .line 1161
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    .line 1162
    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_unisdk_guest"

    .line 1163
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->hasGuestLogined()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ip"

    const-string v2, "LOCAL_IP"

    const-string v4, "127.0.0.1"

    .line 1164
    invoke-virtual {p0, v2, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aim_info"

    const-string v2, "JF_AIM_INFO"

    .line 1165
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PRI_SAC"

    .line 1167
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PRI_SP"

    .line 1168
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "source_app_channel"

    .line 1169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v3

    :cond_2
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source_platform"

    .line 1170
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1171
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->z:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1172
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->z:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const-string v1, "client_login_sn"

    .line 1174
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "CLIENT_LOGIN_SN"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1176
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "ENABLE_CHANGE_LOCATION"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1177
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "PLAYER_REGION"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "PLAYER_COUNTRYCODE"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1179
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "PLAYER_PROVINCECODE"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "law_region_code"

    .line 1181
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1183
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "country_code"

    .line 1184
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1186
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "province_code"

    .line 1187
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sauthJson JSONException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1195
    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAUTH_JSON:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->A:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized h()V
    .locals 5

    monitor-enter p0

    .line 9450
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 9451
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 9452
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v4, v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    .line 9453
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "a terrible step error occur!!!"

    .line 9454
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9459
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnOrderCheckListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnOrderCheckListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->c:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnLogoutDoneListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->logoutListener:Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnReceiveMsgListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->f:Lcom/netease/ntunisdk/base/OnReceiveMsgListener;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnContinueListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->e:Lcom/netease/ntunisdk/base/OnContinueListener;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnExitListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->g:Lcom/netease/ntunisdk/base/OnExitListener;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnLeaveSdkListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->d:Lcom/netease/ntunisdk/base/OnLeaveSdkListener;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/QueryFriendListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/QueryRankListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->i:Lcom/netease/ntunisdk/base/QueryRankListener;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnQuestListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->j:Lcom/netease/ntunisdk/base/OnQuestListener;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 3

    .line 19800
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_JF_GAS3"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19801
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_JF_GAS3_WEB"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19802
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/base/JfGas;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/JfGas;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/JfGas;->queryProduct(Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;)V

    .line 19806
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v1, "allysdk"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->K:Lcom/netease/ntunisdk/base/PayChannelManager;

    if-nez v0, :cond_2

    .line 19807
    new-instance v0, Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/PayChannelManager;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->K:Lcom/netease/ntunisdk/base/PayChannelManager;

    .line 19808
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->initAsync()V

    .line 19811
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19812
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 19813
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->queryInventory()V

    goto :goto_0

    .line 19815
    :cond_3
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->queryInventory()V

    return-void
.end method

.method static synthetic t(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->f()V

    return-void
.end method

.method static synthetic u(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 4

    const-string v0, "UNISDK_LOGIN_JSON"

    .line 19753
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19754
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->setBackSauthLoginJson(Ljava/lang/String;)V

    .line 19756
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 19758
    :try_start_0
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "step"

    const-string v1, "ntGameLoginSuccess_sauthCallback"

    .line 19759
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19761
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "extraJson:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 19763
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShareListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->k:Lcom/netease/ntunisdk/base/OnShareListener;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnPushListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnConnectListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->o:Lcom/netease/ntunisdk/base/OnConnectListener;

    return-object p0
.end method

.method static synthetic y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->n:Lcom/netease/ntunisdk/base/OnShowViewListener;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->querySkuDetailsListener:Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;

    return-object p0
.end method


# virtual methods
.method public DRPF(Ljava/lang/String;)I
    .locals 6

    const-string v0, "UniSDK Base"

    const-string v1, "DRPF"

    .line 7107
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7108
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "strJson="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7115
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    const/4 p1, 0x1

    :try_start_1
    const-string v2, "project"

    .line 7124
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7125
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-object v2, v0

    :catch_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x2

    :try_start_3
    const-string v4, "source"

    .line 7135
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 7136
    :try_start_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v5, :cond_2

    goto :goto_2

    :catch_3
    move-object v4, v0

    :catch_4
    :goto_2
    const/4 v3, 0x2

    :cond_2
    if-eqz v3, :cond_3

    return p1

    :cond_3
    const/4 p1, 0x3

    :try_start_5
    const-string v5, "type"

    .line 7146
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v5, :cond_4

    :catch_5
    const/4 v3, 0x3

    :cond_4
    if-eqz v3, :cond_5

    return p1

    .line 7157
    :cond_5
    invoke-virtual {p0, v1, v2, v4, v0}, Lcom/netease/ntunisdk/base/SdkBase;->dispatchDrpf(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method final a(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 2

    .line 1812
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1813
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$57;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$57;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public anonymousLogin()V
    .locals 2

    .line 6535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->E:J

    return-void
.end method

.method public antiAddiction(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public applyFriend(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public applyFriendFinished(Z)V
    .locals 2

    .line 5057
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryFriendListener not set"

    .line 5058
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "FRIEND_CALLER_THREAD"

    .line 5061
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5062
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$112;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$112;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5070
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5071
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$114;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$114;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public callbackFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public callbackSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected cancelLocalNotification(I)V
    .locals 0

    return-void
.end method

.method public cancelLocalPushFinished(Z)V
    .locals 2

    .line 6104
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "pushListener not set"

    .line 6105
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "PUSH_CALLER_THREAD"

    .line 6108
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6109
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$156;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$156;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6117
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6118
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$158;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$158;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ccStartService()V
    .locals 0

    return-void
.end method

.method public ccStopService()V
    .locals 0

    return-void
.end method

.method protected channelSpecialParams(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end method

.method public checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 4

    .line 2717
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SHOW_ORDER_LOADING"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->getInstance(Landroid/app/Activity;)Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dismissAndRemoveMessage()V

    .line 2720
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->H:J

    .line 2722
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "step"

    const-string v2, "checkOrderDone_call"

    .line 2724
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2726
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extraJson:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK Base"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 2730
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v1, v0, :cond_2

    if-eq v2, v0, :cond_2

    const/16 v1, 0xa

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x9

    .line 2735
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderErrReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getDetectData(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0x27

    .line 2732
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderErrReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getDetectData(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->c(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->saveLogToJFOnPay(Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 2738
    :goto_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_JF_GAS3"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2739
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_JF_GAS3_WEB"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 2741
    new-instance v0, Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/JfGas;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/JfGas;->b(Lcom/netease/ntunisdk/base/OrderInfo;)V

    goto :goto_4

    .line 2742
    :cond_5
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "REQUEST_UNISDK_SERVER"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2743
    :cond_6
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->b(Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 2746
    :cond_7
    :goto_4
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->innerOrderCallback(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public checkRealName(I)V
    .locals 0

    return-void
.end method

.method protected checkRealName(Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V
    .locals 0

    .line 8970
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/base/RealNameUpdate;->b(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V

    return-void
.end method

.method public choosePayChannel(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2294
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    .line 2302
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultChannel: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK Base"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 2304
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2307
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2308
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdkInstMap is empty, use  defaultPayChannel: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2313
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2314
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2316
    invoke-virtual {p0, v5}, Lcom/netease/ntunisdk/base/SdkBase;->isTelecomChannel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2320
    :cond_3
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->isTelecomChannel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 2323
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "telecomInstCnt: "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2326
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2327
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2329
    iget-object v5, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v5, :cond_5

    .line 2334
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->isTelecomChannel(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    .line 2336
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->isValidTelecomChannel(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "HAS_3N"

    .line 2337
    invoke-virtual {v5, v7, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 2338
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "choose payChannel: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 2343
    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdkInstMap dont match, use  defaultPayChannel: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2305
    :cond_8
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdkPids is null, use  defaultPayChannel: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected codeScannerDone(ILjava/lang/String;)V
    .locals 2

    .line 8027
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->q:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string p2, "OnCodeScannerListener not set"

    .line 8028
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CODESCANNER_CALLER_THREAD"

    .line 8031
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8032
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$54;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$54;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 8040
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8041
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$55;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$55;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected collectEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected connectToChannel()V
    .locals 0

    return-void
.end method

.method public connectToChannelFinished(I)V
    .locals 2

    .line 6133
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->o:Lcom/netease/ntunisdk/base/OnConnectListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "connectListener not set"

    .line 6134
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "PUSH_CALLER_THREAD"

    .line 6137
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6138
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$159;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$159;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6146
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6147
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$160;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$160;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected consume(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public consumeOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 2

    .line 7684
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "OnOrderCheckListener not set"

    .line 7685
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "ORDER_CALLER_THREAD"

    .line 7688
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7689
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$42;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$42;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 7696
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnOrderCheckListener;->orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public continueDone()V
    .locals 2

    .line 3110
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->e:Lcom/netease/ntunisdk/base/OnContinueListener;

    if-nez v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "continueListener not set"

    .line 3111
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTINUE_CALLER_THREAD"

    .line 3114
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3115
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$89;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase$89;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 3122
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->e:Lcom/netease/ntunisdk/base/OnContinueListener;

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnContinueListener;->continueGame()V

    return-void
.end method

.method public continueOrderSetting(Lcom/netease/ntunisdk/base/OrderInfo;Z)V
    .locals 4

    .line 1765
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SHOW_ORDER_LOADING"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->getInstance(Landroid/app/Activity;)Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    move-result-object v0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "CHECK_ORDER_INTERVAL"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->show(Ljava/lang/String;)V

    .line 1768
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->useNewSdkProcedure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1769
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/function/e;->a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 1773
    :cond_1
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Lcom/netease/ntunisdk/base/OrderInfo;)Z

    move-result v0

    const-string v1, "UNISDK_JF_GAS3_WEB"

    const-string v2, "UNISDK_JF_GAS3"

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 1775
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1776
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1777
    :cond_2
    new-instance p2, Lcom/netease/ntunisdk/base/JfGas;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/base/JfGas;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$46;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$46;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {p2, v0}, Lcom/netease/ntunisdk/base/JfGas;->queryProduct(Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;)V

    return-void

    .line 1784
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isCartOrder()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1785
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u9053\u5177\u7f16\u53f7 "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u4e0d\u5b58\u5728\uff0c\u4f7f\u7528gas3\u7684\u6e38\u620f\uff0c\u8bf7\u68c0\u67e5jelly\u4e0a\u9762\u662f\u5426\u5df2\u7ecf\u914d\u7f6e\u597d\u5546\u54c1\u4ee5\u53caUNISDK_JF_GAS3_URL\u662f\u5426\u8bbe\u7f6e\u6b63\u786e\uff1b\u4f7f\u7528gas2\u7684\u6e38\u620f\uff0c\u8bf7\u5148\u901a\u8fc7regProduct\u6ce8\u518c\u5546\u54c1"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "UniSDK Base"

    invoke-static {v2, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 1786
    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1787
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 1797
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1798
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 1800
    :cond_5
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "REQUEST_UNISDK_SERVER"

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    .line 1803
    :cond_6
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 1801
    :cond_7
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->c(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 1799
    :cond_8
    :goto_1
    new-instance p2, Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p2, v0}, Lcom/netease/ntunisdk/base/JfGas;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    const/4 v0, 0x0

    .line 12569
    invoke-virtual {p2, p1, v0}, Lcom/netease/ntunisdk/base/JfGas;->createOrder(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;)V

    return-void
.end method

.method public createQRCode(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public createQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected createQRCodeDone(Ljava/lang/String;)V
    .locals 2

    .line 8057
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->r:Lcom/netease/ntunisdk/base/OnQRCodeListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "OnQRCodeListener not set"

    .line 8058
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CODESCANNER_CALLER_THREAD"

    .line 8061
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8062
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$56;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$56;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 8070
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8071
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$58;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$58;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected deleteInviters(Ljava/util/List;)V
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

.method public disConnectFromChannel()V
    .locals 0

    return-void
.end method

.method public disConnectToChannelFinished(I)V
    .locals 2

    .line 6162
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->o:Lcom/netease/ntunisdk/base/OnConnectListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "connectListener not set"

    .line 6163
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "PUSH_CALLER_THREAD"

    .line 6166
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6167
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$161;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$161;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6175
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6176
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$162;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$162;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchDrpf(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sdk_p1"

    const-string v1, "XM_GAMEID"

    .line 7163
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "project"

    .line 7165
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source"

    .line 7166
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    .line 7167
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7170
    :catch_0
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->dispatchDrpf(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchDrpf(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 7174
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object v0

    new-instance v7, Lcom/netease/ntunisdk/base/SdkBase$27;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/base/SdkBase$27;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayAchievement()V
    .locals 0

    return-void
.end method

.method public displayLeaderboard(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public displayQuests([I)V
    .locals 0

    return-void
.end method

.method protected doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 370
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method protected doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "UniSDK Base"

    .line 375
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 379
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "no tag:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 383
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doConfigVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 386
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p3, "APP_CHANNEL"

    .line 390
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 393
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public doSdkRealNameRegister()V
    .locals 0

    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public exit()V
    .locals 3

    .line 3193
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3194
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 3195
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->exit()V

    goto :goto_0

    .line 3197
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->close()V

    const-string v0, "UniSDK"

    .line 3198
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->close()V

    const-string v0, "PAY"

    .line 3199
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->close()V

    .line 3200
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->resetFields()V

    return-void
.end method

.method public exitDone()V
    .locals 2

    .line 3130
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->g:Lcom/netease/ntunisdk/base/OnExitListener;

    if-nez v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "exitViewListener not set"

    .line 3131
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "EXIT_CALLER_THREAD"

    .line 3134
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3135
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$90;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase$90;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 3142
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->g:Lcom/netease/ntunisdk/base/OnExitListener;

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnExitListener;->exitApp()V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public extendFuncCall(Ljava/lang/String;)V
    .locals 4

    .line 9270
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->I:Z

    if-nez v0, :cond_0

    .line 9271
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->J:Ljava/util/List;

    monitor-enter v0

    .line 9272
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->J:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9276
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->s:Lcom/netease/ntunisdk/base/OnExtendFuncListener;

    if-nez v0, :cond_1

    const-string p1, "UniSDK Base"

    const-string v0, "extendFuncListener is null"

    .line 9277
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "EXTEND_FUNC_CALLER_THREAD"

    const/4 v1, 0x1

    .line 9280
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 9281
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$169;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$169;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string v0, "UniSDK Base"

    .line 9291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runOnUIThread/runOnCallerThread, onExtendFuncCall: json="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d2(Ljava/lang/String;Ljava/lang/String;)V

    .line 9292
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->s:Lcom/netease/ntunisdk/base/OnExtendFuncListener;

    if-eqz v0, :cond_3

    .line 9293
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnExtendFuncListener;->onExtendFuncCall(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public finishLoginDone(I)V
    .locals 2

    .line 1469
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1470
    check-cast v0, Landroid/app/Activity;

    .line 1471
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$157;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$157;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected flushCustomEvents()V
    .locals 0

    return-void
.end method

.method protected gameLoginSuccess()V
    .locals 0

    return-void
.end method

.method protected genClientLoginSn()V
    .locals 7

    .line 1225
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDeviceUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1227
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const v6, 0x3b9aca00

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%09d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UIN"

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SESSION"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD5"

    .line 1229
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/utils/HashUtil;->calculateStrHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "CLIENT_LOGIN_SN"

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAnnouncementInfo()V
    .locals 0

    return-void
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 3

    .line 3822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APP_CHANNEL:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "APP_CHANNEL"

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UniSDK Base"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAuthTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "native"

    return-object v0
.end method

.method public getCCPerformance()I
    .locals 2

    const-string v0, "CC_PERFORMANCE"

    const/4 v1, -0x1

    .line 6983
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCCTypeByImsi()Ljava/lang/String;
    .locals 3

    .line 2405
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCTYPE_UNKNOW"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "46000"

    .line 2411
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "46001"

    .line 2413
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "460006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "46003"

    .line 2415
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "460005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "460011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    const-string v0, "CCTYPE_CTCC"

    return-object v0

    :cond_5
    :goto_1
    const-string v0, "CCTYPE_CUCC"

    return-object v0

    :cond_6
    :goto_2
    const-string v0, "CCTYPE_CMCC"

    return-object v0
.end method

.method public getCCWindowState()I
    .locals 2

    const-string v0, "CC_WINDOW_STATE"

    const/4 v1, 0x0

    .line 6991
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public abstract getChannel()Ljava/lang/String;
.end method

.method public getChannelByImsi()Ljava/lang/String;
    .locals 2

    .line 2353
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getCCTypeByImsi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCTYPE_CMCC"

    .line 2354
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "mm_10086"

    return-object v0

    :cond_0
    const-string v1, "CCTYPE_CUCC"

    .line 2356
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "wo_app"

    return-object v0

    :cond_1
    const-string v1, "CCTYPE_CTCC"

    .line 2358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "play_telecom"

    return-object v0

    :cond_2
    const-string v0, "CHANNEL_UNKNOW"

    return-object v0
.end method

.method public getChannelByImsiEx()Ljava/lang/String;
    .locals 3

    .line 2375
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getCCTypeByImsi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCTYPE_CMCC"

    .line 2376
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2377
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->A:Ljava/lang/String;

    return-object v0

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v1, "mm_10086"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2381
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v2, "g_10086"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v2

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    const-string v1, "CCTYPE_CUCC"

    .line 2386
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "wo_app"

    return-object v0

    :cond_6
    const-string v1, "CCTYPE_CTCC"

    .line 2388
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "play_telecom"

    return-object v0

    :cond_7
    const-string v0, "CHANNEL_UNKNOW"

    return-object v0
.end method

.method protected getChannelID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCheckedOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ">;"
        }
    .end annotation

    .line 9342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getDetectData(IILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 4712
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "NOT_ENABLE_DETECT"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "UniSDK Base"

    if-eqz v0, :cond_0

    .line 4713
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4716
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    const-string v5, "error_log"

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 4729
    :pswitch_0
    :try_start_0
    iget-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->F:J

    iget-wide v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->E:J

    goto :goto_0

    .line 4732
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SDK Pay failed. errorCode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", reason: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4736
    :pswitch_1
    iget-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->H:J

    iget-wide v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->G:J

    :goto_0
    sub-long v3, p2, v3

    goto :goto_1

    :cond_2
    const-string p3, "SDK Login failed. STATE : "

    .line 4725
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4726
    iget-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->F:J

    iget-wide v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->E:J

    goto :goto_0

    .line 4722
    :cond_3
    :pswitch_2
    iget-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->D:J

    iget-wide v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->C:J

    goto :goto_0

    :goto_1
    const-string p2, "collect_condition"

    .line 4739
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "transid"

    .line 4740
    iget-object p3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "user_name"

    .line 4741
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p3

    const-string v1, "USERINFO_NAME"

    invoke-interface {p3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "user_id"

    .line 4742
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p3

    const-string v1, "UIN"

    invoke-interface {p3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4743
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string p3, "XM_GAMEID"

    invoke-interface {p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4744
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4745
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string p3, "JF_GAMEID"

    invoke-interface {p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    const-string p3, "product"

    .line 4747
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "push_time"

    .line 4748
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "data_source"

    const-string p3, "unisdk"

    .line 4749
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p2, 0x3c

    if-eq p1, p2, :cond_5

    const-string p1, "time_cost"

    .line 4751
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string p1, "os"

    const-string p2, "Android"

    .line 4753
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "os_version"

    .line 4754
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mobile_type"

    .line 4755
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "network_type"

    .line 4756
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/utils/NetConnectivity;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_id"

    .line 4757
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDeviceUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channel_name"

    .line 4758
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "engine_version"

    .line 4759
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string p3, "ENGINE_VERSION"

    invoke-interface {p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "res_version"

    .line 4760
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string p3, "RESOURCE_VERSION"

    invoke-interface {p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version_code"

    .line 4761
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "bundle_version"

    .line 4762
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "detect jsonStr parse error"

    .line 4765
    invoke-static {v2, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4766
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4768
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    const-string v0, "DEVICE_ID"

    .line 3397
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown_device"

    :cond_0
    return-object v0
.end method

.method public getFFChannelByPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3855
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getGlView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .line 3791
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->t:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getInnerGameId()Ljava/lang/String;
    .locals 2

    .line 353
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "YY_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getJfPaylMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8953
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->y:Ljava/util/Map;

    return-object p1
.end method

.method public getJfQueryOrderlMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getJfSauthChannelMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8935
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->z:Ljava/util/Map;

    return-object v0
.end method

.method public getLoginListener()Lcom/netease/ntunisdk/base/OnLoginDoneListener;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    return-object v0
.end method

.method public getLoginSdkInstMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getLoginSession()Ljava/lang/String;
.end method

.method public abstract getLoginUid()Ljava/lang/String;
.end method

.method public getLogoutListener()Lcom/netease/ntunisdk/base/OnLogoutDoneListener;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->logoutListener:Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

    return-object v0
.end method

.method protected getNotice(Z)V
    .locals 0

    return-void
.end method

.method public getNoticeMsgDone(Ljava/lang/String;)V
    .locals 2

    .line 8124
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "startupListener not set"

    .line 8125
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTINUE_CALLER_THREAD"

    .line 8128
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8129
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$60;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$60;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 8136
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnStartupListener;->getNoticeMsgDone(Ljava/lang/String;)V

    return-void
.end method

.method public getOrderListener()Lcom/netease/ntunisdk/base/OnOrderCheckListener;
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 6

    const-string v0, "VIRTUAL_ORDER"

    .line 3831
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "basechannel"

    return-object v0

    .line 3835
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->K:Lcom/netease/ntunisdk/base/PayChannelManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->allyPayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "allysdk"

    return-object v0

    .line 3839
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3840
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3841
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "INNER_MODE_NO_PAY"

    .line 3842
    invoke-virtual {v2, v5, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 3843
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "+"

    .line 3844
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3846
    :cond_3
    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3849
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "VIRTUAL_ORDER"

    .line 3865
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "basechannel"

    return-object p1

    .line 3868
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->K:Lcom/netease/ntunisdk/base/PayChannelManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->allyPayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "allysdk"

    return-object p1

    .line 3872
    :cond_1
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, ""

    return-object p1

    .line 3875
    :cond_2
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object p1

    .line 3894
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "g_10086"

    .line 3895
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mm_10086"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3896
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->A:Ljava/lang/String;

    :cond_4
    return-object p1
.end method

.method public getPayChannelManager()Lcom/netease/ntunisdk/base/PayChannelManager;
    .locals 1

    .line 5836
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->K:Lcom/netease/ntunisdk/base/PayChannelManager;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    const-string v0, "ad"

    return-object v0
.end method

.method public getPropInt(Ljava/lang/String;I)I
    .locals 0

    .line 3695
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 3701
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 3508
    invoke-static {p1}, Lcom/netease/ntunisdk/base/SdkBase;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDC_LOG"

    .line 3510
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const-string v0, "SDC_LOG_DEVICE_WIDTH"

    .line 14445
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14446
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDisplayPixels(Landroid/content/Context;)[I

    move-result-object p1

    .line 14447
    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "SDC_LOG_DEVICE_HEIGHT"

    .line 14448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14449
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDisplayPixels(Landroid/content/Context;)[I

    move-result-object p1

    .line 14450
    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "SDC_LOG_OS_NAME"

    .line 14451
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "android"

    return-object p1

    :cond_2
    const-string v0, "SDC_LOG_OS_VER"

    .line 14453
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14454
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "SDC_LOG_MAC_ADDR"

    .line 14455
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14456
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "SDC_LOG_DEVICE_MODEL"

    .line 14457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14458
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel2()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "SDC_LOG_UDID"

    .line 14459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14460
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getUdid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "SDC_LOG_APP_CHANNEL"

    .line 14461
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14462
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "SDC_LOG_APP_NETWORK"

    .line 14463
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14464
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/NetConnectivity;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "SDC_LOG_APP_ISP"

    .line 14465
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14466
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v0, "SDC_LOG_APP_VER"

    .line 14467
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14468
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v0, "SDC_LOG_MOBILE_MODEL"

    .line 14469
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 14470
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-string v0, "SDC_LOG_MOBILE_SDKVERSION"

    .line 14471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileSDKVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-string v0, "SDC_LOG_MOBILE_MANUFACTURER"

    .line 14473
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 14474
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileManufacturer()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "SDC_LOG_MOBILE_BRAND"

    .line 14475
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14476
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobildBrand()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const-string v0, "SDC_LOG_APP_PACKAGENAME"

    .line 14477
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 14478
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const-string v0, "SDC_LOG_APP_VERSIONCODE"

    .line 14479
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 14480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    const-string v0, "SDC_LOG_SYSTEMLANGUAGE"

    .line 14481
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14482
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSystemLanguage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v0, "SDC_LOG_SIM_COUNTRY"

    .line 14483
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 14484
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const-string v0, "SDC_LOG_CPU_MHZ"

    .line 14485
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 14486
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuMhz()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const-string v0, "SDC_LOG_CPU_CORE"

    .line 14487
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14488
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuCore()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    const-string v0, "SDC_LOG_CPU_NAME"

    .line 14489
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 14490
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const-string v0, "SDC_LOG_CPU_CURFREQ"

    .line 14491
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 14492
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCurCpuFreq()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const-string p1, ""

    return-object p1

    .line 3514
    :cond_17
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    const-string v3, "ENABLE_CLIENT_CHECK_REALNAME"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    .line 3515
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_0

    :cond_18
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_19

    const-string v0, "sdk_token"

    goto :goto_1

    :cond_19
    const-string v0, "gas_token"

    :goto_1
    const-string v3, "SAUTH_STR"

    .line 3518
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "UniSDK Base"

    const-string v5, "UNISDK_JF_GAS_TOKEN"

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v6, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&step="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1, v2, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&step2="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    .line 3520
    invoke-static {p1, v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3521
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3522
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3523
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    :try_start_0
    const-string v2, "UTF-8"

    .line 3525
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 3527
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "UnsupportedEncodingException"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1a
    return-object p1

    :cond_1b
    const-string v3, "SAUTH_JSON"

    .line 3535
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3537
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3538
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "step2"

    const-string v6, "step"

    const/4 v7, 0x2

    if-nez v4, :cond_1c

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    aput-object v6, v8, v2

    aput-object v5, v8, v1

    aput-object v0, v8, v7

    new-array v0, v4, [Ljava/lang/String;

    .line 3540
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v4, v2, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object v3, v0, v7

    goto :goto_3

    :cond_1c
    new-array v8, v7, [Ljava/lang/String;

    aput-object v6, v8, v2

    aput-object v5, v8, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 3543
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v3, v2, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3545
    :goto_3
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v8, v0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->getAppendedJsonStr(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    const-string v0, "DCTOOL_DEVICEINFO"

    .line 3548
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3549
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3550
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->ntGetNetworktype(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3551
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getRamMemory(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 3552
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->ntGetCpuName()Ljava/lang/String;

    move-result-object v5

    .line 3553
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCurCpuFreq()Ljava/lang/String;

    move-result-object v6

    .line 3554
    iget-object v7, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDeviceUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    :try_start_1
    const-string v8, "network_type"

    .line 3556
    invoke-virtual {p1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mem_total"

    .line 3557
    aget-object v2, v3, v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mem_idle"

    .line 3558
    aget-object v1, v3, v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cpu_model"

    .line 3559
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cpu_clockspeed"

    .line 3560
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device_id"

    .line 3561
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3563
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobildBrand()Ljava/lang/String;

    move-result-object v0

    .line 3564
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile_type"

    .line 3565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    const-string v1, "Android"

    .line 3566
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os_version"

    .line 3567
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "transid"

    .line 3568
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 3570
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3573
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SdkBase [getPropStr] json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string v0, "UDID"

    .line 3577
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3578
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDeviceUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    const-string v0, "UNISDK_DEVICE_ID"

    .line 3581
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3582
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    const-string v0, "ORI_DEVICE_ID"

    .line 3585
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3586
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->b(Landroid/content/Context;Lcom/netease/ntunisdk/base/GamerInterface;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    const-string v0, "ORI_ADVERTISING_ID"

    .line 3589
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3590
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->c(Landroid/content/Context;Lcom/netease/ntunisdk/base/GamerInterface;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_22
    const-string v0, "OAID"

    .line 3593
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3594
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3597
    :cond_23
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "UNISDK_JF_ACCESS_TOKEN"

    .line 3598
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3599
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->refreshToken()V

    .line 3601
    :cond_24
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_25
    const-string v0, "TRANS_ID"

    .line 3604
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3605
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_26
    const-string v0, "WIFI_INFO_LIST"

    .line 3608
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 3610
    :try_start_2
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getWifiListJson()Ljava/lang/String;

    move-result-object p1

    .line 3611
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "wifi"

    .line 3612
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 3614
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3630
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 6486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6487
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6488
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6490
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getLoginSdkInstMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    const-string v2, "+"

    if-eqz v1, :cond_3

    .line 6492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 6493
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6495
    :cond_2
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6497
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6498
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6499
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 6501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6503
    :cond_5
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6506
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdkInstMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    return-object v0
.end method

.method public getShareListener()Lcom/netease/ntunisdk/base/OnShareListener;
    .locals 1

    .line 6009
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->k:Lcom/netease/ntunisdk/base/OnShareListener;

    return-object v0
.end method

.method protected getSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    .line 8901
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v1, "UniSDK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;
    .locals 3

    .line 8906
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v1, "UniSDKServer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 2

    const-string v0, "UDID"

    const-string v1, "unknown"

    .line 345
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getUsePushNotification()V
    .locals 0

    return-void
.end method

.method public getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4895
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserPushFinished(Z)V
    .locals 2

    .line 6075
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "pushListener not set"

    .line 6076
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "PUSH_CALLER_THREAD"

    .line 6079
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6080
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$154;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$154;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6088
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6089
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$155;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$155;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public guestBind()V
    .locals 0

    return-void
.end method

.method protected guestNotAllowCallback(Ljava/lang/String;)V
    .locals 2

    .line 9505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"methodId\": \"guestNotAllow\", \"from\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    return-void
.end method

.method public handleOnActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 4283
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4284
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4285
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4286
    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 4289
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4290
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4291
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4292
    :cond_4
    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 4295
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4296
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnActivityResult(IILandroid/content/Intent;)V

    .line 4299
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public handleOnBackPressed()V
    .locals 6

    .line 4062
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4063
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4064
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4065
    :cond_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnBackPressed()V

    goto :goto_0

    .line 4068
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4069
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4070
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4071
    :cond_4
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnBackPressed()V

    goto :goto_1

    .line 4074
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4075
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnBackPressed()V

    .line 4078
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onBackPressed()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public handleOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const-string v0, "UniSDK Base"

    const-string v1, "handleOnConfigurationChanged..."

    .line 6380
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6381
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6382
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6383
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6384
    :cond_1
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 6387
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6388
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6389
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6390
    :cond_4
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 6393
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6394
    :cond_6
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6397
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->onConfigChange(Landroid/content/res/Configuration;)V

    .line 6398
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public handleOnCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 6612
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6613
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6614
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6615
    :cond_1
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 6618
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6619
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6620
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6621
    :cond_4
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnCreate(Landroid/os/Bundle;)V

    goto :goto_1

    .line 6624
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6625
    :cond_6
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnCreate(Landroid/os/Bundle;)V

    .line 6628
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public handleOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "CALL_LIFECYCLE_AFTER_INIT"

    const/4 v1, 0x0

    .line 4307
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 4308
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public handleOnLowMemory()V
    .locals 6

    .line 6642
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6643
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6644
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6645
    :cond_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnLowMemory()V

    goto :goto_0

    .line 6648
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6649
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6650
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6651
    :cond_4
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnLowMemory()V

    goto :goto_1

    .line 6654
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6655
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnLowMemory()V

    .line 6658
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onLowMemory()V

    return-void
.end method

.method public handleOnNewIntent(Landroid/content/Intent;)V
    .locals 6

    .line 6412
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6413
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6414
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6415
    :cond_1
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 6418
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6419
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6420
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6421
    :cond_4
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 6424
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6425
    :cond_6
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnNewIntent(Landroid/content/Intent;)V

    .line 6428
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public handleOnPause()V
    .locals 6

    .line 4027
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4028
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4029
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4030
    :cond_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnPause()V

    goto :goto_0

    .line 4033
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4034
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4035
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4036
    :cond_4
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnPause()V

    goto :goto_1

    .line 4039
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4040
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnPause()V

    .line 4043
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onPause()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4048
    :catch_0
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->onPause()V

    return-void
.end method

.method public handleOnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 4096
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4097
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4098
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4099
    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 4102
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4103
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4104
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4105
    :cond_4
    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1

    .line 4108
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4109
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4112
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public handleOnRestart()V
    .locals 6

    .line 4245
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4246
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4247
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4248
    :cond_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRestart()V

    goto :goto_0

    .line 4251
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4252
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4253
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4254
    :cond_4
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRestart()V

    goto :goto_1

    .line 4257
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4258
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRestart()V

    .line 4261
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onRestart()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public handleOnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 6581
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6582
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6583
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6584
    :cond_1
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 6587
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6588
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6589
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6590
    :cond_4
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 6593
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6594
    :cond_6
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnRestoreInstanceState(Landroid/os/Bundle;)V

    .line 6597
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public handleOnResume()V
    .locals 6

    .line 4190
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4191
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4192
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4193
    :cond_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnResume()V

    .line 4194
    invoke-direct {v1}, Lcom/netease/ntunisdk/base/SdkBase;->e()V

    goto :goto_0

    .line 4197
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4198
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4199
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4200
    :cond_4
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnResume()V

    .line 4201
    invoke-direct {v1}, Lcom/netease/ntunisdk/base/SdkBase;->e()V

    goto :goto_1

    .line 4204
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4205
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnResume()V

    .line 4206
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->e()V

    .line 4209
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onResume()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 4214
    :goto_2
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->onResume()V

    .line 4216
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->useNewSdkProcedure()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4217
    invoke-static {}, Lcom/netease/ntunisdk/base/function/g;->d()V

    :cond_8
    return-void
.end method

.method public handleOnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 6550
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6551
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6552
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6553
    :cond_1
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 6556
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6557
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6558
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6559
    :cond_4
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 6562
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6563
    :cond_6
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnSaveInstanceState(Landroid/os/Bundle;)V

    .line 6566
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public handleOnStart()V
    .locals 6

    .line 3960
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3961
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 3962
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3963
    :cond_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnStart()V

    goto :goto_0

    .line 3966
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3967
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 3968
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3969
    :cond_4
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnStart()V

    goto :goto_1

    .line 3972
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3973
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnStart()V

    .line 3976
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onStart()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public handleOnStop()V
    .locals 6

    .line 4128
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4129
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4130
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4131
    :cond_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnStop()V

    goto :goto_0

    .line 4134
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4135
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4136
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4137
    :cond_4
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnStop()V

    goto :goto_1

    .line 4140
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4141
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnStop()V

    .line 4144
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onStop()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 4149
    :goto_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->useNewSdkProcedure()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4150
    invoke-static {}, Lcom/netease/ntunisdk/base/function/g;->c()V

    :cond_8
    return-void
.end method

.method public handleOnUserLeaveHint()V
    .locals 6

    .line 4000
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4001
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4002
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4003
    :cond_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnUserLeaveHint()V

    goto :goto_0

    .line 4006
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4007
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 4008
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4009
    :cond_4
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnUserLeaveHint()V

    goto :goto_1

    .line 4012
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4013
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnUserLeaveHint()V

    .line 4016
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onUserLeaveHint()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public handleOnWindowFocusChanged(Z)V
    .locals 6

    const-string v0, "UniSDK Base"

    const-string v1, "handleOnWindowFocusChanged..."

    .line 6349
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6350
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CALL_LIFECYCLE_AFTER_INIT"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6351
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6352
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6353
    :cond_1
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnWindowFocusChanged(Z)V

    goto :goto_0

    .line 6356
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6357
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6358
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6359
    :cond_4
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnWindowFocusChanged(Z)V

    goto :goto_1

    .line 6362
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->x:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6363
    :cond_6
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->sdkOnWindowFocusChanged(Z)V

    .line 6366
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected hasChannelConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 5

    .line 3724
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3725
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 3726
    invoke-virtual {v1, p1, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 3730
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method protected hasGuestLogined()Z
    .locals 2

    .line 9501
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_GUEST_LOGIN_STATE"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected hasInitAlready()Z
    .locals 1

    .line 4327
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->hasInit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLogin()Z
    .locals 3

    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x0

    .line 3776
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->hasGuestLogined()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public hasNotification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
.end method

.method public innerOrderCallback(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 4

    .line 2750
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->c:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "ORDER_CALLER_THREAD"

    if-eqz v0, :cond_1

    .line 2751
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2752
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$78;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$78;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2759
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->c:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnOrderCheckListener;->orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 2763
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    if-nez v0, :cond_2

    const-string p1, "UniSDK Base"

    const-string v0, "OnOrderCheckListener not set"

    .line 2764
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2768
    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 2769
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$79;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$79;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 2776
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnOrderCheckListener;->orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method protected inviteFriendList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public inviteFriendListFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7468
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryFriendListener not set"

    .line 7469
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "FRIEND_CALLER_THREAD"

    .line 7472
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7473
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$30;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$30;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 7481
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7482
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$31;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$31;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public inviterListFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 7520
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryFriendListener not set"

    .line 7521
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "FRIEND_CALLER_THREAD"

    .line 7524
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7525
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$33;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$33;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 7533
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7534
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$34;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$34;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isBinded(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isCCRecordMic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCCRecording()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDarenUpdated()V
    .locals 0

    return-void
.end method

.method public isDarenUpdatedFinished(Z)V
    .locals 2

    .line 5923
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryFriendListener not set"

    .line 5924
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "FRIEND_CALLER_THREAD"

    .line 5927
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5928
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$145;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$145;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5936
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5937
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$147;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$147;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isLoginInst()Z
    .locals 1

    .line 6542
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTelecomChannel(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "play_telecom"

    .line 6671
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "play"

    .line 6672
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mm_10086"

    .line 6673
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "g_10086"

    .line 6674
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wo_app"

    .line 6675
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isValidOrderId(Ljava/lang/String;)Z
    .locals 1

    .line 5593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x40

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isValidTelecomChannel(Ljava/lang/String;)Z
    .locals 3

    .line 6686
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->isTelecomChannel(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6689
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannelByImsi()Ljava/lang/String;

    move-result-object v0

    .line 6690
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "g_10086"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "mm_10086"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public jfCheckRealNameDone(I)V
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1447
    check-cast v0, Landroid/app/Activity;

    .line 1448
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$146;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$146;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public leaveSdk(I)V
    .locals 4

    .line 3171
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->d:Lcom/netease/ntunisdk/base/OnLeaveSdkListener;

    const-string v1, "UniSDK Base"

    if-nez v0, :cond_0

    const-string p1, "OnLeaveSdkListener not set"

    .line 3172
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v2, "LEAVE_SDK_CALLER_THREAD"

    .line 3175
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3176
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$93;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$93;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 3184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "leave sdk : current thread:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->d:Lcom/netease/ntunisdk/base/OnLeaveSdkListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnLeaveSdkListener;->leaveSdk(I)V

    return-void
.end method

.method public abstract login()V
.end method

.method public loginDone(I)V
    .locals 10

    const-string v0, ""

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const-string v2, "UNISDK_JF_GAS_TOKEN"

    .line 1205
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "SDK_LOGINING"

    const/4 v3, 0x0

    .line 1207
    invoke-virtual {p0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    .line 1209
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->getInstance(Landroid/app/Activity;)Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->show()V

    const-string v2, "UNISDK_JF_GET_SDKUID"

    .line 1212
    invoke-virtual {p0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v1, v4, :cond_8

    if-eqz p1, :cond_1

    const/16 v1, 0xd

    if-eq v1, p1, :cond_1

    const/16 v1, 0x82

    if-ne v1, p1, :cond_8

    :cond_1
    const-string v1, "UIN"

    .line 1213
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1216
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(I)V

    return-void

    .line 11485
    :cond_3
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v4, "UNISDK_JF_GAS3_URL"

    invoke-interface {v1, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11486
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 11487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    .line 11488
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "get_sdkuid"

    .line 11489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "/get_sdkuid"

    .line 11491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11493
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v7, v0

    .line 11495
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UniSDK Base"

    if-eqz v0, :cond_6

    const-string p1, "get_sdkuid url empty"

    .line 11496
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11499
    :cond_6
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getJFSauthJson()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SAUTH_JSON"

    invoke-virtual {p0, v4, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 11500
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v5, "POST"

    .line 11501
    iput-object v5, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 11502
    iput-object v7, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 11503
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 11504
    iput v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 11505
    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11506
    invoke-virtual {v0, v8}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    .line 11507
    iput-object v2, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 11508
    new-instance v2, Lcom/netease/ntunisdk/base/SdkBase$2;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$2;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    iput-object v2, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 11568
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v2, "JF_LOG_KEY"

    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11569
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 11570
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11572
    :try_start_0
    iget-object v6, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->addSecureHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 11574
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hmacSHA256Signature exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11576
    :goto_2
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    goto :goto_3

    :cond_7
    const-string p1, "JF_CLIENT_KEY empty"

    .line 11578
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p1, "PAY"

    .line 11580
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void

    .line 1219
    :cond_8
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(I)V

    return-void
.end method

.method public abstract logout()V
.end method

.method public logoutDone(I)V
    .locals 2

    const-string v0, "UNISDK_JF_GAS_TOKEN"

    const-string v1, ""

    .line 3031
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->logoutListener:Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "LOGOUT_CALLER_THREAD"

    .line 3033
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3034
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$84;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$84;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3041
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->logoutListener:Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnLogoutDoneListener;->logoutDone(I)V

    goto :goto_0

    :cond_1
    const-string p1, "UniSDK Base"

    const-string v0, "OnLogoutDoneListener not set"

    .line 3044
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->useNewSdkProcedure()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3048
    invoke-static {}, Lcom/netease/ntunisdk/base/function/g;->e()V

    :cond_2
    return-void
.end method

.method public moreGame()V
    .locals 0

    return-void
.end method

.method public ntAntiAddiction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntAntiAddiction"

    .line 4956
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4959
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 4960
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$108;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$108;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntApplyFriend(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntApplyFriend"

    .line 5040
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5043
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5044
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$111;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$111;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCCStartService()V
    .locals 2

    .line 6939
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6940
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$21;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$21;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCCStopService()V
    .locals 2

    .line 6959
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6960
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$22;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$22;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCallbackFail(Ljava/lang/String;)V
    .locals 2

    .line 8343
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8344
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$67;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$67;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCallbackSuccess(Ljava/lang/String;)V
    .locals 2

    .line 8325
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8326
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$66;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$66;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCancelLocalNotification(I)V
    .locals 2

    .line 7625
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7626
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$39;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$39;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCheckArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 3

    const-string v0, "UniSDK Base"

    const-string v1, "call ntCheckArgs"

    .line 5562
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5564
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5565
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5566
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5570
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result p1

    return p1
.end method

.method public ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 4

    .line 1686
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1687
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "USERINFO_UID"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1688
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setUserName(Ljava/lang/String;)V

    .line 1690
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "USERINFO_HOSTID"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1691
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setServerId(Ljava/lang/String;)V

    .line 1693
    :cond_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UIN"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1694
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setUid(Ljava/lang/String;)V

    .line 1696
    :cond_2
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "USERINFO_AID"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1697
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setAid(Ljava/lang/String;)V

    .line 1699
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "UNISDK_EXT_INFO"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1700
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfExtInfo(Ljava/lang/String;)V

    .line 1704
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->K:Lcom/netease/ntunisdk/base/PayChannelManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->allyPayEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "allysdk"

    .line 1706
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    :cond_5
    const-string v0, "VIRTUAL_ORDER"

    .line 1709
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "basechannel"

    .line 1710
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 1713
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "step"

    const-string v2, "ntCheckOrder_call"

    .line 1715
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1717
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extraJson:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK Base"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1720
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    return-void
.end method

.method public ntCloseFlash()V
    .locals 2

    .line 8473
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8474
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$72;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$72;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCloseWebView()V
    .locals 2

    const-string v0, "UniSDK Base"

    const-string v1, "ntCloseWebView"

    .line 8369
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8370
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->closeWebView()V

    return-void
.end method

.method public ntCollectEvent(Ljava/lang/String;)V
    .locals 2

    .line 7036
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7037
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$25;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$25;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntConnectToChannel()V
    .locals 0

    .line 7706
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->connectToChannel()V

    return-void
.end method

.method public ntConsume(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 2

    .line 5850
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5851
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$142;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$142;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    .line 9376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 9377
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 9378
    new-instance v9, Lcom/netease/ntunisdk/base/SdkBase$171;

    move-object v1, v9

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/netease/ntunisdk/base/SdkBase$171;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 9407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    move-object v0, p0

    .line 9408
    iget-object v1, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    move-object v10, v1

    check-cast v10, Landroid/app/Activity;

    .line 9409
    new-instance v11, Lcom/netease/ntunisdk/base/SdkBase$172;

    move-object v1, v11

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/netease/ntunisdk/base/SdkBase$172;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntDeleteInviters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ntDeleteInviters"

    .line 7555
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7558
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7559
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$36;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$36;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntDisConnectFromChannel()V
    .locals 0

    .line 7715
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->disConnectFromChannel()V

    return-void
.end method

.method public ntDisplayAchievement()V
    .locals 2

    const-string v0, "ntDisplayAchievement"

    .line 7829
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7832
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7833
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$48;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$48;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntDisplayLeaderboard(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntDisplayLeaderboard"

    .line 7809
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7812
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7813
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$47;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$47;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntDisplayQuests([I)V
    .locals 2

    const-string v0, "ntDisplayQuests"

    .line 7901
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7904
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7905
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$51;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$51;-><init>(Lcom/netease/ntunisdk/base/SdkBase;[I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntDoSdkRealNameRegister()V
    .locals 2

    const-string v0, "ntAntiAddiction"

    .line 4975
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4978
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 4979
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$109;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$109;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntExtendFunc(Ljava/lang/String;)V
    .locals 11

    .line 9126
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v1, "UniSDK Base"

    if-nez v0, :cond_0

    const-string p1, "call ntExtendFunc(json), myCtx null"

    .line 9127
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9131
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "methodId"

    .line 9132
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "moduleName"

    .line 9133
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9134
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->hasModule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 9136
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    move-object v9, v2

    check-cast v9, Landroid/app/Activity;

    .line 9137
    new-instance v10, Lcom/netease/ntunisdk/base/SdkBase$74;

    move-object v2, v10

    move-object v3, p0

    move-object v6, v7

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/netease/ntunisdk/base/SdkBase$74;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string v2, "notMainThread"

    const/4 v3, 0x0

    .line 9147
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "ntExtendFunc methodId:"

    .line 9148
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    if-eqz v2, :cond_2

    const-string v2, "cur thread:"

    .line 9153
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9154
    invoke-direct {p0, v6, v0}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9155
    invoke-direct {p0, v6, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9159
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    move-object v9, v2

    check-cast v9, Landroid/app/Activity;

    .line 9160
    new-instance v10, Lcom/netease/ntunisdk/base/SdkBase$75;

    move-object v2, v10

    move-object v3, p0

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/netease/ntunisdk/base/SdkBase$75;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 9172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ntExtendFunc JSONException:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs ntExtendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12

    .line 9198
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v1, "UniSDK Base"

    if-nez v0, :cond_0

    const-string p1, "call ntExtendFunc(json, objects), myCtx null"

    .line 9199
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9203
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "methodId"

    .line 9204
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "moduleName"

    .line 9205
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9206
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->hasModule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 9208
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    move-object v10, v2

    check-cast v10, Landroid/app/Activity;

    .line 9209
    new-instance v11, Lcom/netease/ntunisdk/base/SdkBase$76;

    move-object v2, v11

    move-object v3, p0

    move-object v6, v7

    move-object v7, p1

    move-object v8, p2

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/netease/ntunisdk/base/SdkBase$76;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string v2, "notMainThread"

    const/4 v3, 0x0

    .line 9219
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "ntExtendFunc methodId:"

    .line 9220
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    if-eqz v2, :cond_2

    const-string v2, "cur thread:"

    .line 9225
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9226
    invoke-direct {p0, v6, v0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9227
    invoke-direct {p0, v6, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9231
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    move-object v10, v2

    check-cast v10, Landroid/app/Activity;

    .line 9232
    new-instance v11, Lcom/netease/ntunisdk/base/SdkBase$168;

    move-object v2, v11

    move-object v3, p0

    move-object v7, v0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/netease/ntunisdk/base/SdkBase$168;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 9244
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ntExtendFunc JSONException:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntFlushCustomEvents()V
    .locals 2

    .line 8177
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8178
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$62;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$62;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntGameLoginSuccess()V
    .locals 2

    .line 5770
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "call ntGameLoginSuccess, myCtx null"

    .line 5771
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5774
    :cond_0
    check-cast v0, Landroid/app/Activity;

    .line 5775
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$141;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$141;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntGetAnnouncementInfo()V
    .locals 2

    .line 8229
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 8231
    :cond_0
    check-cast v0, Landroid/app/Activity;

    .line 8232
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$64;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$64;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntGetChannelID()Ljava/lang/String;
    .locals 1

    .line 7735
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannelID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ntGetCheckedOrders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ">;"
        }
    .end annotation

    .line 9350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9351
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9352
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9353
    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getCheckedOrders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9354
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9355
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9358
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getCheckedOrders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9359
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9360
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9362
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ntGetCheckedOrders size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK Base"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public ntGetNotice(Z)V
    .locals 2

    .line 8099
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8100
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$59;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$59;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntGetUsePushNotification()V
    .locals 2

    .line 7647
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7648
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$40;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$40;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntGuestBind()V
    .locals 2

    .line 5002
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5003
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$110;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$110;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntHasChannelConnected()Z
    .locals 1

    .line 7725
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->hasChannelConnected()Z

    move-result v0

    return v0
.end method

.method public ntHasNotification()Z
    .locals 1

    .line 5912
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->hasNotification()Z

    move-result v0

    return v0
.end method

.method public ntHasPlatform(Ljava/lang/String;)Z
    .locals 4

    .line 8289
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8290
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8291
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->hasPlatform(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 8295
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8296
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8297
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->hasPlatform(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 8301
    :cond_3
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->hasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 8

    .line 4334
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->hasInitAlready()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UniSDK Base"

    if-eqz v0, :cond_1

    const-string v0, "ntInit already"

    .line 4335
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v3, "REINIT_ALL_SDK"

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reInit all sdks"

    .line 4337
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    invoke-direct {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(ILcom/netease/ntunisdk/base/OnFinishInitListener;)V

    :cond_0
    return-void

    .line 4342
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->C:J

    .line 4344
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a()V

    .line 15784
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object v0

    new-instance v3, Lcom/netease/ntunisdk/base/SdkBase$80;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/base/SdkBase$80;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    .line 4348
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    new-instance v3, Lcom/netease/ntunisdk/base/SdkBase$99;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/base/SdkBase$99;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    const-string v4, "unisdkbase"

    invoke-virtual {v0, v4, v3}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->addModuleCallback(Ljava/lang/String;Lcom/netease/ntunisdk/modules/api/ModulesCallback;)I

    .line 16487
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->a(Landroid/content/Context;Lcom/netease/ntunisdk/base/GamerInterface;)Ljava/lang/String;

    move-result-object v0

    .line 16488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "unknown"

    :cond_2
    const-string v3, "DEVICE_ID"

    .line 16491
    invoke-virtual {p0, v3, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "UDID"

    .line 16492
    invoke-virtual {p0, v4, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 16493
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getLoginSdkInstMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    .line 16494
    invoke-virtual {v6, v3, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 16495
    invoke-virtual {v6, v4, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16497
    :cond_3
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSdkInstMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    .line 16498
    invoke-virtual {v6, v3, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 16499
    invoke-virtual {v6, v4, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x3c

    const-string v3, ""

    .line 4363
    invoke-virtual {p0, v0, v1, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getDetectData(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->c(Ljava/lang/String;)V

    .line 4365
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->b()V

    .line 4368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ge v0, v4, :cond_5

    const-string v0, "http.keepAlive"

    const-string v4, "false"

    .line 4369
    invoke-static {v0, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17477
    :cond_5
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    .line 17478
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object v4

    .line 17479
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sac = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", sp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SOURCE_APP_CHANNEL"

    .line 17480
    invoke-virtual {p0, v5, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PRI_SAC"

    .line 17481
    invoke-virtual {p0, v5, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SOURCE_PLATFORM"

    .line 17482
    invoke-virtual {p0, v0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PRI_SP"

    .line 17483
    invoke-virtual {p0, v0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 17505
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17507
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    const-string v5, "tz"

    .line 17508
    invoke-virtual {v4, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GMT"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTC"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "tzid"

    .line 17509
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "country"

    .line 17510
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 17512
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get timeZone exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17514
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "JF_AIM_INFO"

    invoke-virtual {p0, v3, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 17515
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object v0

    new-instance v3, Lcom/netease/ntunisdk/base/SdkBase$103;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/base/SdkBase$103;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    .line 4376
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKSwitcher;->getInstance()Lcom/netease/ntunisdk/base/SDKSwitcher;

    move-result-object v0

    new-instance v3, Lcom/netease/ntunisdk/base/SdkBase$100;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/base/SdkBase$100;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, v3, v4}, Lcom/netease/ntunisdk/base/SDKSwitcher;->start(Lcom/netease/ntunisdk/base/SDKSwitcher$ParseDoneCallback;Landroid/content/Context;)V

    const-string v0, "UniSDK"

    .line 4446
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase;->M:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    invoke-virtual {v0, v3, v4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->init(Landroid/content/Context;Lcom/netease/ntunisdk/base/utils/HTTPCallback;)V

    const-string v0, "PAY"

    .line 4447
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->init(Landroid/content/Context;Lcom/netease/ntunisdk/base/utils/HTTPCallback;)V

    .line 4449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "needCheckChannelRemote()="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4451
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "DEFAULT_CMCC_PAYTYPE"

    const-string v2, "mm_10086"

    .line 4452
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->A:Ljava/lang/String;

    .line 4453
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->queryCmccPaytype()V

    .line 4456
    :cond_6
    invoke-direct {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(ILcom/netease/ntunisdk/base/OnFinishInitListener;)V

    .line 4458
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$101;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase$101;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    .line 4470
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "ENABLE_CHANGE_LOCATION"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 4471
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->generateTimestampDiff()V

    :cond_7
    return-void
.end method

.method public ntInviteFriendList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ntInviteFriendList"

    .line 7451
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7454
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7455
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$29;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$29;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntIsDarenUpdated()V
    .locals 2

    const-string v0, "ntIsDarenUpdated"

    .line 5893
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5896
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 5897
    check-cast v0, Landroid/app/Activity;

    .line 5898
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$144;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$144;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public ntLogin()V
    .locals 4

    const-string v0, "UniSDK Base"

    const-string v1, "ntLogin"

    .line 1027
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SDK_LOGINING"

    const/4 v2, 0x1

    .line 1028
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    .line 1032
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getSdkInstMap()Ljava/util/Map;

    move-result-object v1

    const-string v3, "httpdns"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "ENABLE_HTTP_DNS"

    invoke-interface {v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    invoke-static {}, Lcom/netease/ntunisdk/httpdns/HttpDNSProxy;->getInstance()Lcom/netease/ntunisdk/httpdns/HttpDNSProxy;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/netease/ntunisdk/httpdns/HttpDNSProxy;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "httpdns init failed"

    .line 1036
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_0
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ENABLE_CHANGE_LOCATION"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "UniSDK_FirstOpen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->saveLogToJFOnOpen()V

    .line 1041
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1045
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 1046
    invoke-direct {v1}, Lcom/netease/ntunisdk/base/SdkBase;->e()V

    goto :goto_1

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1049
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 1050
    invoke-direct {v1}, Lcom/netease/ntunisdk/base/SdkBase;->e()V

    goto :goto_2

    .line 1052
    :cond_3
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->e()V

    .line 1055
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->useNewSdkProcedure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1056
    invoke-static {}, Lcom/netease/ntunisdk/base/function/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LoginUI"

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->dispatchDrpf(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1059
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 1060
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 1061
    new-instance v3, Lcom/netease/ntunisdk/base/SdkBase$113;

    invoke-direct {v3, p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase$113;-><init>(Lcom/netease/ntunisdk/base/SdkBase;J)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntLogout()V
    .locals 2

    .line 3013
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3014
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$83;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$83;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntMoreGame()V
    .locals 2

    const-string v0, "FEATURE_HAS_MOREGAME_BTN"

    .line 6441
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6442
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6443
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$4;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$4;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ntOpenEchoes()V
    .locals 1

    .line 8976
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKEchoes;->getInstance()Lcom/netease/ntunisdk/base/SDKEchoes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SDKEchoes;->ntOpenEchoes()V

    return-void
.end method

.method public ntOpenExitView()V
    .locals 2

    const-string v0, "FEATURE_EXIT_VIEW"

    .line 3922
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3923
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3924
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$98;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$98;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ntOpenGmView()V
    .locals 2

    .line 5580
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5581
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$140;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$140;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntOpenManager()V
    .locals 2

    const-string v0, "ntOpenManager"

    .line 3262
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FEATURE_HAS_MANAGER"

    .line 3265
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3266
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3267
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$94;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$94;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public ntOpenNearby()V
    .locals 2

    const-string v0, "FEATURE_HAS_NEARBY"

    .line 3334
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3336
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$96;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$96;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ntOpenPauseView()V
    .locals 2

    const-string v0, "FEATURE_HAS_PAUSE_VIEW"

    .line 3365
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3366
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3367
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$97;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$97;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ntOpenWebView(Ljava/lang/String;)V
    .locals 2

    .line 8361
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ntOpenWebView:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8362
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->openWebView(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public ntPrePay()V
    .locals 2

    const-string v0, "ntPrePay"

    .line 6519
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6522
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6523
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$5;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$5;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntPresentQRCodeScanner()V
    .locals 2

    const-string v0, "ntPresentQRCodeScanner"

    .line 7945
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7948
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7949
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$52;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$52;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntPresentQRCodeScanner(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ntPresentQRCodeScanner"

    .line 7967
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7970
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7971
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$53;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$53;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntQueryAvailablesInvitees()V
    .locals 2

    const-string v0, "ntQueryAvailablesInvitees"

    .line 5188
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5191
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5192
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$121;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$121;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntQueryFriendList()V
    .locals 2

    const-string v0, "ntQueryFriendList"

    .line 5088
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5091
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5092
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$115;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$115;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntQueryFriendListInGame()V
    .locals 2

    const-string v0, "ntQueryFriendListInGame"

    .line 5105
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5108
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5109
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$116;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$116;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntQueryInventory()V
    .locals 2

    .line 1658
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1659
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$24;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$24;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntQueryInviterList()V
    .locals 2

    const-string v0, "ntQueryInviterList"

    .line 7503
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7506
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7507
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$32;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$32;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntQueryMyAccount()V
    .locals 2

    const-string v0, "ntQueryMyAccount"

    .line 5236
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5239
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5240
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$125;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$125;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntQueryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V
    .locals 2

    const-string v0, "ntQueryRank"

    .line 5302
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5305
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5306
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$128;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$128;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/QueryRankInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntQuerySkuDetails(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ntQuerySkuDetails"

    .line 6743
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6746
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6747
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$7;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntRemoveCheckedOrders(Ljava/lang/String;)V
    .locals 4

    .line 9322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 9323
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 9324
    new-instance v3, Lcom/netease/ntunisdk/base/SdkBase$170;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkBase$170;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntScannerQRCode(Ljava/lang/String;)V
    .locals 4

    .line 9434
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 9435
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 9436
    new-instance v3, Lcom/netease/ntunisdk/base/SdkBase$173;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkBase$173;-><init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntSelectChannelOption(I)V
    .locals 0

    .line 7744
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->selectChannelOption(I)V

    return-void
.end method

.method public ntSendLocalNotification(Ljava/lang/String;)V
    .locals 2

    .line 7601
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7602
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$38;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$38;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntSendProfile(Ljava/lang/String;Z)V
    .locals 2

    .line 8203
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8204
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$63;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$63;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntSendPushNotification(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7578
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7579
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$37;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$37;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntSetFloatBtnVisible(Z)V
    .locals 2

    .line 2430
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "ntSetFloatBtnVisible myCtx is null"

    .line 2432
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2435
    :cond_0
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$77;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$77;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntSetUsePushNotification(Z)V
    .locals 2

    .line 7669
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7670
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$41;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$41;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntSetUserIdentifier(Ljava/lang/String;)V
    .locals 2

    .line 7791
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7792
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$45;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$45;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntSetZone(Ljava/lang/String;)V
    .locals 0

    .line 7753
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setZone(Ljava/lang/String;)V

    return-void
.end method

.method public ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 2

    .line 5484
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5485
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$139;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$139;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/ShareInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntShowBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7065
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7066
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$26;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntShowCompactView(Z)V
    .locals 2

    .line 8912
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v1, "protocol"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "no protocol channel"

    .line 8914
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8916
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->showCompactView(Z)V

    return-void
.end method

.method public ntShowConversation()V
    .locals 2

    .line 7757
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7758
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$43;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$43;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntShowDaren()V
    .locals 2

    const-string v0, "ntShowDaren"

    .line 5874
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5877
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5878
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$143;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$143;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntShowFAQs()V
    .locals 2

    .line 7774
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7775
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$44;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$44;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntShowRewardView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ntShowRewardView"

    .line 7426
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7429
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7430
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$28;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$28;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntShowWeb(Ljava/lang/String;)V
    .locals 2

    .line 7009
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7010
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$23;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$23;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntSwitchAccount()V
    .locals 2

    const-string v0, "ntSwitchAccount"

    .line 3298
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FEATURE_HAS_SWITCH_ACCOUNT"

    .line 3301
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3302
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3303
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$95;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$95;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public ntTrackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8146
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8147
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$61;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$61;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntUpLoadUserInfo()V
    .locals 3

    const-string v0, "UniSDK Base"

    const-string v1, "ntUpLoadUserInfo"

    .line 4911
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4912
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 4916
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->useNewSdkProcedure()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "USERINFO_STAGE"

    const-string v2, ""

    .line 4917
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "USERINFO_STAGE_ENTER_SERVER"

    .line 4918
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4919
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->ntGameLoginSuccess()V

    .line 4920
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/function/g;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "LoginRole"

    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->dispatchDrpf(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4921
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/function/g;->a(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;)V

    goto :goto_0

    :cond_1
    const-string v2, "USERINFO_STAGE_CREATE_ROLE"

    .line 4923
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4924
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/function/g;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "CreateRole"

    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->dispatchDrpf(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4928
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4931
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 4932
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$107;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$107;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntUpdateAchievement(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ntUpdateAchievement"

    .line 7849
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7852
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7853
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$49;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$49;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntUpdateApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8263
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8264
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$65;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/ntunisdk/base/SdkBase$65;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntUpdateEvent(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ntUpdateEvent"

    .line 7877
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7880
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 7881
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$50;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$50;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntUpdateRank(Ljava/lang/String;D)V
    .locals 2

    const-string v0, "ntUpdateRank"

    .line 5356
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5359
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5360
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$131;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$131;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntVerifyMobile(I)V
    .locals 2

    const-string v0, "ntVerifyMobile"

    .line 8393
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8396
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8397
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$69;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$69;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntVerifyOrder()V
    .locals 11

    const-string v0, "UniSDK Base"

    const-string v1, "ntVerifyOrder"

    .line 2465
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UNISDK_SERVER_KEY"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2467
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "ConstProp.UNISDK_SERVER_KEY is empty"

    .line 2468
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2471
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "USERINFO_UID"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2472
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "ConstProp.USERINFO_UID is empty"

    .line 2473
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2476
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "OrdersCreated_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2477
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2478
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ntVerifyOrder, ORDERS_CREATED is empty for roleid:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2481
    :cond_2
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 2483
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2484
    :try_start_1
    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/StrUtil;->jsonToMapSet(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2490
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "ntVerifyOrder, orders_created="

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 2493
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2494
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2495
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2496
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2497
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2500
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 2501
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ntVerifyOrder, no order to consume for roleid:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2504
    :cond_5
    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/StrUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2506
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSharedPrefUniSDKServer()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "OrdersEncrypted_"

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2507
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2508
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ntVerifyOrder, ORDERS_ENCRYPTED is empty for roleid:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2512
    :cond_6
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v7, "UNISDK_CONSUMEORDER_URL"

    invoke-interface {v5, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2513
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v1, "ConstProp.UNISDK_CONSUMEORDER_URL is empty"

    .line 2514
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2518
    :cond_7
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 13449
    sget v7, Lcom/netease/ntunisdk/base/SdkBase;->L:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 13450
    sput v7, Lcom/netease/ntunisdk/base/SdkBase;->L:I

    const/16 v9, 0x3e8

    if-lt v7, v9, :cond_8

    .line 13451
    sput v6, Lcom/netease/ntunisdk/base/SdkBase;->L:I

    .line 13453
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v8, [Ljava/lang/Object;

    sget v9, Lcom/netease/ntunisdk/base/SdkBase;->L:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "%03d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "roleid"

    .line 2520
    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "orderinfo"

    .line 2521
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "encrypted"

    .line 2522
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "privateparam"

    .line 2523
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v2

    const-string v3, "POST"

    .line 2525
    iput-object v3, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 2526
    iput-object v5, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 2527
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 2528
    iput v6, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 2529
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/util/Map;)V

    .line 2530
    iput-object v1, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->keyRSA:Ljava/lang/String;

    .line 2531
    iput-object v7, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 2532
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$a;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase$a;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    iput-object v0, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    const-string v0, "PAY"

    .line 2533
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void

    :catch_0
    move-exception v1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v1

    .line 2486
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ntVerifyOrder, jsonToMapSet error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", strJson="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public ntvGenericFunctionCall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClickSplashDone()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    if-nez v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "startupListener not set"

    .line 895
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTINUE_CALLER_THREAD"

    .line 898
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 899
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$102;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase$102;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnStartupListener;->onClickSplash()V

    return-void
.end method

.method public onEnterGameDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UniSDK Base"

    const-string v1, "onEnterGameDone"

    .line 3083
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->f:Lcom/netease/ntunisdk/base/OnReceiveMsgListener;

    if-nez v1, :cond_0

    const-string p1, "receiveMsgListener null"

    .line 3085
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTINUE_CALLER_THREAD"

    .line 3088
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3089
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$87;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$87;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 3096
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3097
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$88;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$88;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 2

    .line 6786
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string p2, "OnControllerListener not set"

    .line 6787
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTROLLER_CALLER_THREAD"

    .line 6790
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6791
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$8;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ILcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6799
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6800
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$9;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ILcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 2

    .line 6836
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string p2, "OnControllerListener not set"

    .line 6837
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTROLLER_CALLER_THREAD"

    .line 6840
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6841
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$12;-><init>(Lcom/netease/ntunisdk/base/SdkBase;IFLcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6849
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6850
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$14;-><init>(Lcom/netease/ntunisdk/base/SdkBase;IFLcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyUp(ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 2

    .line 6811
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string p2, "OnControllerListener not set"

    .line 6812
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTROLLER_CALLER_THREAD"

    .line 6815
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6816
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$10;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ILcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6824
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6825
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase$11;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ILcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 2

    .line 6861
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string p2, "OnControllerListener not set"

    .line 6862
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTROLLER_CALLER_THREAD"

    .line 6865
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6866
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$15;-><init>(Lcom/netease/ntunisdk/base/SdkBase;FFLcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6874
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6875
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$16;-><init>(Lcom/netease/ntunisdk/base/SdkBase;FFLcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onQuestCompleted(Ljava/lang/String;)V
    .locals 2

    .line 5453
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->j:Lcom/netease/ntunisdk/base/OnQuestListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "OnQuestListener not set"

    .line 5454
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "QUEST_CALLER_THREAD"

    .line 5457
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5458
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$137;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$137;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5466
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5467
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$138;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$138;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedNotificationDone()V
    .locals 2

    const-string v0, "UniSDK Base"

    const-string v1, "onReceivedNotificationDone"

    .line 3056
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase;->f:Lcom/netease/ntunisdk/base/OnReceiveMsgListener;

    if-nez v1, :cond_0

    const-string v1, "receiveMsgListener null"

    .line 3058
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTINUE_CALLER_THREAD"

    .line 3061
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3062
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$85;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase$85;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 3069
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3070
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$86;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$86;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRightStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 2

    .line 6886
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string p2, "OnControllerListener not set"

    .line 6887
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTROLLER_CALLER_THREAD"

    .line 6890
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6891
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$17;-><init>(Lcom/netease/ntunisdk/base/SdkBase;FFLcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6899
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6900
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$18;-><init>(Lcom/netease/ntunisdk/base/SdkBase;FFLcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStateEvent(Lcom/netease/ntunisdk/base/PadEvent;)V
    .locals 2

    .line 6911
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "OnControllerListener not set"

    .line 6912
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTROLLER_CALLER_THREAD"

    .line 6915
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6916
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$19;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$19;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6924
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6925
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$20;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$20;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/PadEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openExitView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openExitViewFailed()V
    .locals 2

    .line 3150
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->g:Lcom/netease/ntunisdk/base/OnExitListener;

    if-nez v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "exitViewListener not set"

    .line 3151
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "EXIT_CALLER_THREAD"

    .line 3154
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3155
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$92;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase$92;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 3162
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->g:Lcom/netease/ntunisdk/base/OnExitListener;

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnExitListener;->onOpenExitViewFailed()V

    return-void
.end method

.method public openGmView()V
    .locals 0

    return-void
.end method

.method public abstract openManager()V
.end method

.method public openNearby()V
    .locals 0

    return-void
.end method

.method public openPauseView()V
    .locals 0

    return-void
.end method

.method public prePay()V
    .locals 0

    return-void
.end method

.method public presentQRCodeScanner()V
    .locals 0

    return-void
.end method

.method public presentQRCodeScanner(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public protocolFinish(I)V
    .locals 4

    .line 9469
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->B:Lcom/netease/ntunisdk/base/OnProtocolFinishListener;

    const-string v1, "UniSDK Base"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v2, "PROTOCOL_FINISH_CALLER_THREAD"

    .line 9470
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 9471
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$174;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$174;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 9479
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "runOnUIThread, protocolFinish: code="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current thread="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9480
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->B:Lcom/netease/ntunisdk/base/OnProtocolFinishListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnProtocolFinishListener;->onProtocolFinish(I)V

    return-void

    :cond_1
    const-string p1, "OnProtocolFinishListener not set"

    .line 9483
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryAvailablesInvitees()V
    .locals 0

    return-void
.end method

.method public queryAvailablesInviteesFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 5205
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryFriendListener not set"

    .line 5206
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "FRIEND_CALLER_THREAD"

    .line 5209
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5210
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$122;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$122;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5218
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5219
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$123;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$123;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryCmccPaytype()V
    .locals 2

    .line 8484
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$73;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/SdkBase$73;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryFriendList()V
    .locals 0

    return-void
.end method

.method public queryFriendListFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 5157
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryFriendListener not set"

    .line 5158
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "FRIEND_CALLER_THREAD"

    .line 5161
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5162
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$119;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$119;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5170
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5171
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$120;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$120;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryFriendListInGame()V
    .locals 0

    return-void
.end method

.method public queryFriendListInGameFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 5128
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryFriendListener not set"

    .line 5129
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "FRIEND_CALLER_THREAD"

    .line 5132
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5133
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$117;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$117;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5141
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5142
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$118;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$118;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected queryInventory()V
    .locals 0

    return-void
.end method

.method protected queryInventory4PromoCodes()V
    .locals 0

    return-void
.end method

.method protected queryInviterList()V
    .locals 0

    return-void
.end method

.method public queryMyAccount()V
    .locals 0

    return-void
.end method

.method public queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 2

    .line 5253
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryFriendListener not set"

    .line 5254
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "FRIEND_CALLER_THREAD"

    .line 5257
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5258
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$126;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$126;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/AccountInfo;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5266
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5267
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$127;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$127;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/AccountInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V
    .locals 0

    return-void
.end method

.method public queryRankFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 5323
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->i:Lcom/netease/ntunisdk/base/QueryRankListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryRankListener not set"

    .line 5324
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "RANK_CALLER_THREAD"

    .line 5327
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5328
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$129;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$129;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5336
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5337
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$130;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$130;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public querySkuDetails(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected querySkuDetailsDone(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/SkuDetailsInfo;",
            ">;)V"
        }
    .end annotation

    .line 6721
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->querySkuDetailsListener:Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "OnQuerySkuDetailsListener not set"

    .line 6722
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "ORDER_CALLER_THREAD"

    .line 6725
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6726
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$6;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$6;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6733
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->querySkuDetailsListener:Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;->querySkuDetailsFinished(Ljava/util/List;)V

    return-void
.end method

.method public registerExtendFuncMethod(Ljava/lang/String;)V
    .locals 0

    .line 9056
    invoke-static {p1, p0}, Lcom/netease/ntunisdk/base/function/ExtendFunc;->register(Ljava/lang/String;Lcom/netease/ntunisdk/base/SdkBase;)V

    return-void
.end method

.method public removeCheckedOrders(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resetCommonProp()V
    .locals 5

    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x0

    .line 3746
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "UIN"

    const/4 v2, 0x0

    .line 3747
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SESSION"

    .line 3748
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "REQUIRE_AI_DETECT"

    .line 3750
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "AI_GLDT_TOKEN"

    .line 3751
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AI_GLDT_TIMESTAMP"

    .line 3752
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AI_GLDT_ALL"

    .line 3753
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PROTOCOL_IN_LOGIN_SRC"

    .line 3755
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UNISDK_JF_ACCESS_TOKEN"

    .line 3757
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UNISDK_JF_REFRESH_TOKEN"

    .line 3758
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 3760
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "step"

    const-string v3, "resetCommonProp"

    .line 3762
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3764
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "extraJson:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UniSDK Base"

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3766
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void
.end method

.method protected resetFields()V
    .locals 3

    const/4 v0, 0x0

    .line 3207
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->hasInit:Z

    .line 3208
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->v:Z

    const-wide/16 v0, 0x0

    .line 3209
    iput-wide v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->uiThreadId:J

    const/4 v0, 0x0

    .line 3211
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    .line 3212
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    .line 3213
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    .line 3214
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->logoutListener:Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

    .line 3215
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->d:Lcom/netease/ntunisdk/base/OnLeaveSdkListener;

    .line 3216
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->e:Lcom/netease/ntunisdk/base/OnContinueListener;

    .line 3217
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->g:Lcom/netease/ntunisdk/base/OnExitListener;

    .line 3218
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    .line 3219
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    .line 3220
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->querySkuDetailsListener:Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;

    .line 3221
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->k:Lcom/netease/ntunisdk/base/OnShareListener;

    .line 3222
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    .line 3223
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->i:Lcom/netease/ntunisdk/base/QueryRankListener;

    .line 3224
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->j:Lcom/netease/ntunisdk/base/OnQuestListener;

    .line 3225
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->p:Lcom/netease/ntunisdk/base/OnVerifyListener;

    .line 3226
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->s:Lcom/netease/ntunisdk/base/OnExtendFuncListener;

    .line 3227
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->t:Landroid/opengl/GLSurfaceView;

    .line 3229
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->u:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 3230
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 3233
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 3234
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 3237
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->O:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 3238
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 3241
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->w:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 3242
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3245
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 3246
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3247
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->resetFields()V

    goto :goto_0

    .line 3249
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_5
    return-void
.end method

.method protected runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->v:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->t:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->u:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
    .locals 13

    const-string v0, "res_code"

    const-string v1, "hostid"

    const-string v2, "roleid"

    const-string v3, "aid"

    const-string v4, "uid"

    .line 8749
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "UNISDK_LOG_STATUS"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 8757
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const/4 v6, -0x1

    const-string v8, "EB"

    invoke-interface {v5, v8, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_1

    const-string v5, "https://applog.matrix.easebar.com/client/sdk/clientlog"

    goto :goto_0

    :cond_1
    const-string v5, "https://applog.matrix.netease.com/client/sdk/clientlog"

    .line 8761
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v6

    const-string v8, "JF_CLIENT_LOG_URL"

    invoke-interface {v6, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 8762
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8765
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v6

    const-string v9, "JF_OVERSEA_CLIENT_LOG_URL"

    invoke-interface {v6, v9}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 8766
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8769
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v9, "UniSDK Base"

    if-eqz v6, :cond_4

    const-string p1, "null or empty clientLogUrl"

    .line 8770
    invoke-static {v9, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8774
    :cond_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 8776
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 8778
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v10

    goto :goto_1

    :catch_0
    move-exception p2

    .line 8780
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "new JSONObject exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    :try_start_1
    const-string p2, "gameid"

    .line 8785
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v10

    const-string v11, "JF_GAMEID"

    invoke-interface {v10, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8786
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v10, "UIN"

    invoke-interface {p2, v10}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8787
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v10, "USERINFO_AID"

    invoke-interface {p2, v10}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8788
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v10, "USERINFO_UID"

    invoke-interface {p2, v10}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8789
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v10, "USERINFO_HOSTID"

    invoke-interface {p2, v10}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "transid"

    .line 8790
    iget-object v10, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v10}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "packagename"

    .line 8791
    iget-object v10, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v10}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_c

    const-string p2, "goodsid"

    .line 8793
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "goodsname"

    .line 8794
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sn"

    .line 8795
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "orderid"

    .line 8796
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "consumesn"

    .line 8797
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkOrderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ordermoney"

    .line 8798
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v11

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v12

    int-to-float v12, v12

    mul-float v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "currency"

    .line 8799
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "paymoney"

    .line 8800
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v11

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v12

    int-to-float v12, v12

    mul-float v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "paycurrency"

    .line 8801
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "orderchannel"

    .line 8802
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "orderEtc"

    .line 8803
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderEtc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "signature"

    .line 8804
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "webpayment"

    .line 8805
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isWebPayment()Z

    move-result v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "orderstatus"

    .line 8806
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "reason"

    .line 8807
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderErrReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p2, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8808
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 8809
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8811
    :cond_6
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 8812
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getAid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8814
    :cond_7
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 8815
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8817
    :cond_8
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 8818
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getServerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 8821
    :cond_9
    :try_start_2
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->isCartOrder()Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "goodscart"

    .line 8822
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 8825
    :cond_a
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8826
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 8827
    :cond_b
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8828
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8829
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 8830
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    :cond_c
    :goto_3
    :try_start_3
    const-string p1, "channel"

    .line 8839
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app_channel"

    .line 8840
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "platform"

    .line 8841
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getPlatform()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    .line 8842
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uni_version"

    .line 8843
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getUniSDKVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "base_version"

    .line 8844
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getBaseVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "UDID"

    .line 8845
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8846
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "unisdk_deviceid"

    .line 8847
    invoke-virtual {v6, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8848
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p2, "logtime"

    .line 8849
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "timestamp"

    .line 8850
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8852
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const/16 p1, 0xc8

    .line 8853
    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8857
    :cond_d
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "DISABLE_UPLOAD_LOCAL_IP"

    invoke-interface {p1, v0, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v7, :cond_e

    .line 8858
    invoke-static {v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->traverseJSONObject2removeIP(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_e
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v5, p1, p2

    .line 8866
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v7

    const-string v0, "/saveClientLog url=%s, bodyPairs=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8870
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object p1

    const-string v0, "POST"

    .line 8871
    iput-object v0, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 8872
    iput-object v5, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 8873
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 8874
    iput p2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 8875
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    .line 8876
    iput-object v8, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 8878
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v0, "JF_LOG_KEY"

    invoke-interface {p2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8879
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 8880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8883
    :try_start_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/netease/ntunisdk/base/utils/Crypto;->hmacSHA256Signature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Gas3-Clientlog-Signature"

    .line 8884
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    .line 8886
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hmacSHA256Signature exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8888
    :goto_4
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    goto :goto_5

    :cond_f
    const-string p2, "JF_CLIENT_KEY empty"

    .line 8890
    invoke-static {v9, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8892
    :goto_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v0, "ENABLE_CHANGE_LOCATION"

    invoke-interface {p2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "UniSDK"

    if-eqz p2, :cond_10

    sget-boolean p2, Lcom/netease/ntunisdk/base/SdkBase;->hasChangeLocation:Z

    if-nez p2, :cond_10

    .line 8893
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p2

    const-string v0, "clientlog"

    invoke-virtual {p2, p1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItemDelay(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Ljava/lang/String;)V

    return-void

    .line 8895
    :cond_10
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void

    :catch_3
    move-exception p1

    .line 8861
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8862
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "saveClientLog fail, JSONException:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveLogToJF(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 8701
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "saveLogToJF, params="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK Base"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gameid"

    .line 8702
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "no JF_GAMEID"

    if-nez v3, :cond_0

    .line 8703
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8706
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8707
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8708
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8711
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "no JF_OPEN_LOG_URL or JF_PAY_LOG_URL"

    .line 8712
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8715
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    const-string v5, "JF_LOG_KEY"

    invoke-interface {v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8716
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p1, "no JF_LOG_KEY"

    .line 8717
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8720
    :cond_3
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8721
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "saveLogToJF, strJson="

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8724
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 8725
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v4}, Lcom/netease/ntunisdk/base/utils/Crypto;->aesEncrypt([BLjava/lang/String;)[B

    move-result-object p1

    .line 8726
    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8732
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 8733
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 8734
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8736
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object p1

    const-string v1, "POST"

    .line 8737
    iput-object v1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 8738
    iput-object p2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 8739
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    const/16 p2, 0x32

    .line 8740
    iput p2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 8741
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/util/Map;)V

    const-string p2, "JF_PAY_LOG_URL"

    .line 8742
    iput-object p2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    const-string p2, "UniSDK"

    .line 8743
    invoke-static {p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResend()V

    .line 8744
    invoke-static {p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void

    :catch_0
    move-exception p1

    .line 8728
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8729
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "saveLogToJF, AES encrypt error:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveLogToJFOnOpen()V
    .locals 6

    .line 8632
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    .line 8633
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "JF_GAMEID"

    .line 8634
    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gameid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8635
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPayChannel()Ljava/lang/String;

    move-result-object v2

    .line 8636
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8637
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "pay_channel"

    .line 8639
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8640
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v3

    .line 8641
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8642
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u8bf7\u8bbe\u7f6eAPP_CHANNEL"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/StrUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "app_channel"

    .line 8645
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8646
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "udid"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8647
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPlatform()Ljava/lang/String;

    move-result-object v3

    const-string v4, "platform"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8648
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v4, "ordermoney"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8649
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v4, "currency"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8650
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v4, "paymoney"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8651
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v4, "paycurrency"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8652
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8653
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "logtime"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8654
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdkversion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8659
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "EB"

    invoke-interface {v2, v4, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "https://applog.matrix.easebar.com/client/sdk/open_log"

    goto :goto_0

    :cond_2
    const-string v2, "https://applog.matrix.netease.com/client/sdk/open_log"

    :goto_0
    const-string v3, "JF_OPEN_LOG_URL"

    .line 8663
    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 8664
    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v3, "JF_OVERSEA_OPEN_LOG_URL"

    .line 8667
    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 8668
    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8671
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8672
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->saveLogToJF(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "UniSDK Base"

    const-string v1, "null or empty jfOpenLogUrl"

    .line 8674
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveLogToJFOnPay(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 7

    .line 8562
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    .line 8563
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "JF_GAMEID"

    .line 8564
    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gameid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8565
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pay_channel"

    .line 8566
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8567
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v3

    .line 8568
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8569
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const-string v0, ""

    const-string v1, "\u8bf7\u8bbe\u7f6eAPP_CHANNEL"

    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v4, "app_channel"

    .line 8572
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8573
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "udid"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8574
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPlatform()Ljava/lang/String;

    move-result-object v3

    const-string v4, "platform"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "HAS_PAY_CB"

    const/4 v4, 0x1

    .line 8575
    invoke-virtual {p0, v3, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "isonline"

    if-ne v4, v3, :cond_1

    const-string v3, "true"

    .line 8577
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "false"

    .line 8579
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8581
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "goodsid"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8582
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "goodsname"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8583
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sn"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8584
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkOrderId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "consumesn"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v5

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ordermoney"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8586
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v3

    const-string v5, "currency"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v5

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "paymoney"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8588
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v3

    const-string v5, "paycurrency"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8589
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8590
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "logtime"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8591
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdkversion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8592
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object p1

    const-string v2, "extendjson"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8597
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const/4 v2, -0x1

    const-string v3, "EB"

    invoke-interface {p1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2

    const-string p1, "https://applog.matrix.easebar.com/client/sdk/pay_log"

    goto :goto_1

    :cond_2
    const-string p1, "https://applog.matrix.netease.com/client/sdk/pay_log"

    :goto_1
    const-string v2, "JF_PAY_LOG_URL"

    .line 8601
    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8602
    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v2, "JF_OVERSEA_PAY_LOG_URL"

    .line 8605
    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8606
    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8609
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8610
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->saveLogToJF(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p1, "UniSDK Base"

    const-string v0, "null or empty jfPayLogUrl"

    .line 8612
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public scannerQRCode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sdkCheckRealNameDone(I)V
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->z:Ljava/util/Map;

    invoke-static {p0, v0, p1}, Lcom/netease/ntunisdk/base/function/i;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Map;I)V

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public sdkOnBackPressed()V
    .locals 0

    return-void
.end method

.method public sdkOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public sdkOnCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public sdkOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sdkOnLowMemory()V
    .locals 0

    return-void
.end method

.method public sdkOnNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public sdkOnPause()V
    .locals 0

    return-void
.end method

.method public sdkOnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public sdkOnRestart()V
    .locals 0

    return-void
.end method

.method public sdkOnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public sdkOnResume()V
    .locals 0

    return-void
.end method

.method public sdkOnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public sdkOnStart()V
    .locals 0

    return-void
.end method

.method public sdkOnStop()V
    .locals 0

    return-void
.end method

.method public sdkOnUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public sdkOnWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected selectChannelOption(I)V
    .locals 0

    return-void
.end method

.method public selectChannelOptionFinished(Z)V
    .locals 2

    .line 6191
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->o:Lcom/netease/ntunisdk/base/OnConnectListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "connectListener not set"

    .line 6192
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "PUSH_CALLER_THREAD"

    .line 6195
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6196
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$163;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$163;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6204
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6205
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$164;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$164;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected sendLocalNotification(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendLocalNotificationFinished(I)V
    .locals 2

    .line 6046
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "pushListener not set"

    .line 6047
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "PUSH_CALLER_THREAD"

    .line 6050
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6051
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$152;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$152;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6059
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6060
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$153;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$153;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected sendProfile(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected sendPushNotification(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendPushNotificationFinished(Z)V
    .locals 2

    .line 6017
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "pushListener not set"

    .line 6018
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "PUSH_CALLER_THREAD"

    .line 6021
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6022
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$150;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$150;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6030
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6031
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$151;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$151;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackSauthLoginJson(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "1"

    const-string v3, "REFRESH_TOKEN"

    const-string v4, "TIMESTAMP"

    const-string v5, "SESSION"

    const-string v6, "refresh_token"

    const-string v7, "access_token"

    const-string v8, "sdk_token"

    const-string v9, "gas_token"

    .line 5605
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "loginJsonB64 = "

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UniSDK Base"

    invoke-static {v11, v10}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5607
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 5608
    new-instance v10, Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v13, p1

    invoke-static {v13, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v10, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5609
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 5610
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "aid"

    .line 5611
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "sdkuid"

    .line 5612
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5613
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v9, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v12, "realname_msg"

    .line 5614
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    move-object/from16 v16, v8

    const-string v8, "username"

    .line 5615
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5616
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-nez v17, :cond_0

    move-object/from16 v17, v9

    .line 5617
    :try_start_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v9

    const-string v1, "FULL_UIN"

    invoke-interface {v9, v1, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v3, p0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v3, p0

    goto/16 :goto_a

    :cond_0
    move-object/from16 v17, v9

    .line 5619
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "aid = "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", uid = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5620
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5621
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v8, "USERINFO_AID"

    invoke-interface {v1, v8, v10}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 5623
    :cond_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5624
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v8, "UIN"

    invoke-interface {v1, v8, v14}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 5626
    :cond_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5627
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v8, "UNISDK_JF_GAS_TOKEN"

    invoke-interface {v1, v8, v15}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 5630
    :cond_3
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "expires_in"

    .line 5631
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5632
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5634
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 5635
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v10

    invoke-interface {v10, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 5636
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v10

    invoke-interface {v10, v5, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 5638
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5639
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5640
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v4, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 5642
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5643
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5644
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v3, v9}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v1, "aas_version"

    .line 5647
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5648
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5649
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "JF_LOGIN_AAS_VERSION"

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x1

    if-eqz v12, :cond_c

    .line 5653
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "realnameMsg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "realname_status"

    .line 5654
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_adult"

    .line 5655
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x63

    .line 5657
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "0"

    if-eqz v8, :cond_a

    .line 5658
    :try_start_2
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    .line 5660
    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v5, 0x2

    goto :goto_1

    :cond_9
    const/4 v5, 0x3

    goto :goto_1

    .line 5665
    :cond_a
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v5, 0x0

    :cond_b
    :goto_1
    if-ltz v5, :cond_c

    .line 5669
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "REAL_NAME_VERIFIED"

    invoke-interface {v2, v3, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 5671
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v3, "methodId"

    const-string v4, "getRealnameStatus"

    .line 5673
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "status"

    .line 5674
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5675
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v3, p0

    :try_start_4
    invoke-virtual {v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v3, p0

    :goto_2
    move-object v2, v0

    .line 5677
    :try_start_5
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_c
    move-object/from16 v3, p0

    :goto_3
    const-string v2, "dashen"

    .line 5684
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v4, "REQUIRE_AI_DETECT"

    if-eqz v2, :cond_f

    :try_start_6
    const-string v5, "dashen = "

    .line 5686
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "black_adult_sign"

    .line 5687
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "as_age_range_v2"

    .line 5689
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "timestamp"

    .line 5691
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5693
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSdkInstMap()Ljava/util/Map;

    move-result-object v10

    const-string v12, "ngaidetect"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/ntunisdk/base/SdkBase;

    if-nez v10, :cond_d

    const-string v12, "not pack ngaidetect"

    .line 5695
    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5697
    :cond_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    if-lez v8, :cond_e

    if-eqz v10, :cond_e

    const-string v8, "INNER_MODE_AI_DETECT"

    .line 5698
    invoke-virtual {v3, v8}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v12, 0x1

    goto :goto_4

    :cond_e
    const/4 v12, 0x0

    .line 5697
    :goto_4
    invoke-virtual {v3, v4, v12}, Lcom/netease/ntunisdk/base/SdkBase;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "AI_GLDT_TOKEN"

    .line 5699
    invoke-virtual {v3, v1, v5}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AI_GLDT_TIMESTAMP"

    .line 5700
    invoke-virtual {v3, v1, v9}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AI_GLDT_ALL"

    .line 5701
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    .line 5704
    invoke-virtual {v3, v4, v1}, Lcom/netease/ntunisdk/base/SdkBase;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "sauth response not contain dashen info"

    .line 5705
    invoke-static {v11, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string v1, "oauth2"

    .line 5709
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5710
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5711
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "oauthAccessToken = "

    .line 5712
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauthRefreshToken = "

    .line 5713
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5716
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const-string v5, ""

    if-nez v4, :cond_10

    move-object/from16 v4, v17

    .line 5717
    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object v15, v2

    goto :goto_6

    :cond_10
    move-object v1, v5

    move-object v15, v1

    :cond_11
    :goto_6
    const-string v2, "access_token = "

    .line 5725
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "refresh_token = "

    .line 5726
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5727
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 5728
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v4, "UNISDK_JF_ACCESS_TOKEN"

    invoke-interface {v2, v4, v15}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 5729
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v4, "UNISDK_JF_REFRESH_TOKEN"

    invoke-interface {v2, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 5730
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->getExpiration()V

    :cond_12
    const-string v1, "server_time"

    .line 5733
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v4, "serverTime = "

    .line 5734
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_14

    .line 5736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->setTimestampDiff(J)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_a

    :cond_13
    move-object v3, v1

    :cond_14
    :goto_7
    return-void

    :catch_8
    move-exception v0

    move-object v3, v1

    :goto_8
    move-object v1, v0

    .line 5745
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_9
    move-exception v0

    move-object v3, v1

    :goto_9
    move-object v1, v0

    .line 5743
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :catch_a
    move-exception v0

    move-object v3, v1

    :goto_a
    move-object v1, v0

    .line 5741
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-void
.end method

.method public setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V
    .locals 3

    .line 7991
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7992
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 7993
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V

    goto :goto_0

    .line 7995
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7996
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 7997
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V

    goto :goto_1

    .line 7999
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->q:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    const-string p1, "CODESCANNER_CALLER_THREAD"

    .line 8000
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setConnectListener(Lcom/netease/ntunisdk/base/OnConnectListener;I)V
    .locals 4

    .line 6312
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PUSH_CALLER_THREAD"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6313
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6314
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setConnectListener(Lcom/netease/ntunisdk/base/OnConnectListener;I)V

    .line 6315
    invoke-virtual {v1, v2, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 6317
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6318
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6319
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setConnectListener(Lcom/netease/ntunisdk/base/OnConnectListener;I)V

    goto :goto_1

    .line 6321
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->o:Lcom/netease/ntunisdk/base/OnConnectListener;

    .line 6322
    invoke-virtual {p0, v2, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setContinueListener(Lcom/netease/ntunisdk/base/OnContinueListener;I)V
    .locals 3

    .line 970
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 971
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 972
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setContinueListener(Lcom/netease/ntunisdk/base/OnContinueListener;I)V

    goto :goto_0

    .line 974
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->e:Lcom/netease/ntunisdk/base/OnContinueListener;

    const-string p1, "CONTINUE_CALLER_THREAD"

    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setControllerListener(Lcom/netease/ntunisdk/base/OnControllerListener;I)V
    .locals 3

    .line 6773
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6774
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6775
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setControllerListener(Lcom/netease/ntunisdk/base/OnControllerListener;I)V

    goto :goto_0

    .line 6777
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6778
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6779
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setControllerListener(Lcom/netease/ntunisdk/base/OnControllerListener;I)V

    goto :goto_1

    .line 6781
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->m:Lcom/netease/ntunisdk/base/OnControllerListener;

    const-string p1, "CONTROLLER_CALLER_THREAD"

    .line 6782
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCtx(Landroid/content/Context;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "JF_OPEN_LOG_URL"

    const-string v4, "JF_LOG_KEY"

    const-string v5, "unisdk_sdk_version_"

    const-string v6, "UNISDK_LOG_STATUS"

    const-string v7, "DEBUG_LOG"

    const-string v8, "DEBUG_MODE"

    const-string v0, " is empty"

    const-string v9, "YY_GAMEID"

    const-string v10, "XM_GAMEID"

    const-string v11, "JF_GAMEID"

    const-string v12, "APP_CHANNEL"

    const-string v13, "UniSDK Base"

    .line 231
    iput-object v2, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    .line 233
    iget-object v14, v1, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v14

    .line 234
    iget-object v14, v1, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v14, :cond_0

    .line 236
    iput-object v2, v14, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    :cond_0
    move-object/from16 v14, v16

    goto :goto_0

    .line 239
    :cond_1
    iget-object v14, v1, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v14

    .line 240
    iget-object v14, v1, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v14, :cond_2

    .line 242
    iput-object v2, v14, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    :cond_2
    move-object/from16 v14, v16

    goto :goto_1

    :cond_3
    const-string v14, "ntunisdk_config"

    .line 10409
    iget-object v15, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    const/4 v2, 0x3

    const/16 v16, 0x0

    .line 10413
    :try_start_0
    invoke-virtual {v15, v14, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v14

    move-object/from16 v2, v17

    goto :goto_2

    :catch_0
    const-string v2, "fail to read ntunisdk_config, try ntunisdk.cfg"

    .line 10416
    invoke-static {v13, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v14

    move-object/from16 v2, v16

    :goto_2
    const-string v14, " is null"

    move-object/from16 v19, v5

    const-string v5, "\u201d"

    move-object/from16 v20, v3

    const-string v3, "\u201c"

    move-object/from16 v21, v4

    const-string v4, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    move-object/from16 v22, v6

    const-string v6, "\uff1a"

    move-object/from16 v23, v0

    const-string v0, "UTF-8"

    move-object/from16 v24, v7

    if-nez v2, :cond_4

    :try_start_1
    const-string v7, "ntunisdk.cfg"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v25, v2

    const/4 v2, 0x3

    .line 10422
    :try_start_2
    invoke-virtual {v15, v7, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v7

    move-object v2, v15

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v2, v25

    goto/16 :goto_1c

    :catch_1
    move-object/from16 v18, v7

    move-object/from16 v2, v25

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v25, v2

    goto/16 :goto_1c

    :catch_2
    move-object/from16 v25, v2

    goto :goto_5

    :cond_4
    move-object/from16 v25, v2

    :goto_3
    if-nez v2, :cond_5

    :try_start_3
    const-string v7, "ntunisdk_config/ntunisdk.cfg null"

    .line 10425
    invoke-static {v13, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_c

    .line 10441
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_7

    .line 10428
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v7

    if-nez v7, :cond_6

    if-eqz v2, :cond_c

    goto :goto_4

    .line 10432
    :cond_6
    new-array v7, v7, [B

    .line 10433
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    .line 10435
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_8

    .line 10441
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_1c

    :catch_3
    :goto_5
    :try_start_7
    const-string v7, "ntunisdk_config/ntunisdk.cfg config not found"

    .line 10437
    invoke-static {v13, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_7

    .line 10441
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_7
    move-object/from16 v15, v16

    :catch_5
    :cond_8
    :goto_6
    move-object/from16 v2, v18

    if-nez v15, :cond_9

    .line 10448
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 10451
    :cond_9
    invoke-static {v13, v15}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10455
    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 10456
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10459
    :cond_b
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v15}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 10462
    :try_start_9
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v7, "EB"

    const/4 v15, 0x0

    .line 10463
    invoke-virtual {v1, v2, v7, v15}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v7, "NO_ANDROIDID"

    .line 10464
    invoke-virtual {v1, v2, v7, v15}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v7, "OVERSEA_PROJECT"

    .line 10465
    invoke-virtual {v1, v2, v7, v15}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v7, "ENABLE_FAKE_ABOUT_ID"

    .line 10466
    invoke-virtual {v1, v2, v7, v15}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v7, "ENABLE_CHANGE_LOCATION"

    .line 10467
    invoke-virtual {v1, v2, v7, v15}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    const-string v2, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    .line 10470
    invoke-static {v13, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :catch_7
    :cond_c
    :goto_7
    const-string v2, "ntunisdk_common_data"

    .line 10481
    :try_start_a
    iget-object v7, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const/4 v15, 0x3

    invoke-virtual {v7, v2, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v7, :cond_d

    :try_start_b
    const-string v15, "ntunisdk_common_data null"

    .line 10483
    invoke-static {v13, v15}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_e

    goto :goto_8

    .line 10486
    :cond_d
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v15
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-nez v15, :cond_f

    if-eqz v7, :cond_e

    .line 10499
    :goto_8
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    :cond_e
    move-object v7, v8

    move-object/from16 v18, v9

    move-object/from16 v9, v20

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v8, v24

    goto :goto_b

    .line 10490
    :cond_f
    :try_start_d
    new-array v15, v15, [B

    .line 10491
    invoke-virtual {v7, v15}, Ljava/io/InputStream;->read([B)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object/from16 v18, v8

    .line 10493
    :try_start_e
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v7, :cond_11

    .line 10499
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_a

    :catch_9
    nop

    goto :goto_a

    :catch_a
    move-object/from16 v18, v8

    goto :goto_9

    :catchall_3
    move-exception v0

    goto/16 :goto_1b

    :catch_b
    move-object/from16 v18, v8

    move-object/from16 v7, v16

    :catch_c
    :goto_9
    :try_start_10
    const-string v8, "ntunisdk_common_data config not found"

    .line 10495
    invoke-static {v13, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v7, :cond_10

    .line 10499
    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    :catch_d
    :cond_10
    move-object/from16 v8, v16

    :cond_11
    :goto_a
    if-nez v8, :cond_12

    .line 10506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v18

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v8, v24

    move-object/from16 v18, v9

    move-object/from16 v9, v20

    :goto_b
    move-object/from16 v20, v10

    goto/16 :goto_e

    .line 10509
    :cond_12
    invoke-static {v13, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10513
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 10514
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10517
    :cond_14
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 10520
    :try_start_12
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 10521
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 10522
    iget-object v7, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v7}, Lcom/netease/ntunisdk/base/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 10523
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 10524
    iget-object v8, v1, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v8, v12, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_15
    const/4 v7, 0x0

    .line 10526
    invoke-virtual {v1, v2, v12, v7}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 10529
    :cond_16
    :goto_c
    invoke-virtual {v1, v2, v11}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10530
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10531
    invoke-virtual {v1, v2, v9}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    move-object/from16 v7, v18

    .line 10532
    :try_start_13
    invoke-virtual {v1, v2, v7}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    move-object/from16 v8, v24

    .line 10533
    :try_start_14
    invoke-virtual {v1, v2, v8}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    move-object/from16 v14, v22

    .line 10534
    :try_start_15
    invoke-virtual {v1, v2, v14}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    move-object/from16 v15, v21

    .line 10535
    :try_start_16
    invoke-virtual {v1, v2, v15}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12

    move-object/from16 v18, v9

    move-object/from16 v9, v20

    .line 10536
    :try_start_17
    invoke-virtual {v1, v2, v9}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13

    move-object/from16 v20, v10

    :try_start_18
    const-string v10, "JF_PAY_LOG_URL"

    .line 10537
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "JF_CLIENT_LOG_URL"

    .line 10538
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "JF_OVERSEA_OPEN_LOG_URL"

    .line 10539
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "JF_OVERSEA_PAY_LOG_URL"

    .line 10540
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "JF_OVERSEA_CLIENT_LOG_URL"

    .line 10541
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "UNISDK_JF_GAS3"

    .line 10542
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "UNISDK_JF_GAS3_WEB"

    .line 10543
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "UNISDK_JF_GAS3_URL"

    .line 10544
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "SDK_WHO_REQ_URL"

    .line 10545
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "SDK_DETECT_URL"

    .line 10546
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "SDK_DUMP_URL"

    .line 10547
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "SDK_UNI_UPDATE_URL"

    .line 10548
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "SDK_ECHOES_URL"

    .line 10549
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "UNISDK_DRPF_URL"

    .line 10550
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "SDC_DEVICE_INFO_URL"

    .line 10551
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "SDK_SWITCHER_URL_PROJECT"

    .line 10552
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "SDK_SWITCHER_URL"

    .line 10553
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v10, "NOAH_APPID"

    .line 10554
    invoke-virtual {v1, v2, v10}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    goto :goto_e

    :catch_e
    move-object/from16 v18, v9

    move-object/from16 v9, v20

    move-object/from16 v15, v21

    goto :goto_d

    :catch_f
    move-object/from16 v18, v9

    move-object/from16 v9, v20

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    goto :goto_d

    :catch_10
    move-object/from16 v18, v9

    move-object/from16 v9, v20

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v8, v24

    goto :goto_d

    :catch_11
    move-object/from16 v7, v18

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v8, v24

    :catch_12
    move-object/from16 v18, v9

    move-object/from16 v9, v20

    :catch_13
    :goto_d
    move-object/from16 v20, v10

    :catch_14
    const-string v2, "ntunisdk_common_data config parse to json error"

    .line 10557
    invoke-static {v13, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10564
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_data"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10567
    :try_start_19
    iget-object v10, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1e
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-object/from16 v21, v11

    const/4 v11, 0x3

    :try_start_1a
    invoke-virtual {v10, v2, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v10
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    if-nez v10, :cond_17

    .line 10569
    :try_start_1b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_16
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    move-object/from16 v17, v9

    :try_start_1c
    const-string v9, " open fail"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    if-eqz v10, :cond_20

    .line 10588
    :goto_f
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    goto/16 :goto_18

    :catch_15
    nop

    goto/16 :goto_18

    :catch_16
    move-object/from16 v17, v9

    goto :goto_11

    :cond_17
    move-object/from16 v17, v9

    .line 10573
    :try_start_1e
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v9
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    if-nez v9, :cond_18

    .line 10575
    :try_start_1f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    move-object/from16 v11, v23

    :try_start_20
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_20

    goto :goto_f

    :catch_17
    move-object/from16 v11, v23

    goto :goto_10

    :cond_18
    move-object/from16 v11, v23

    .line 10578
    new-array v9, v9, [B

    .line 10579
    invoke-virtual {v10, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_19
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    move-object/from16 v22, v15

    .line 10580
    :try_start_21
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1b
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 10582
    :try_start_22
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1c
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    if-eqz v10, :cond_19

    .line 10588
    :try_start_23
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_18

    goto :goto_15

    :catch_18
    nop

    goto :goto_15

    :catch_19
    :goto_10
    move-object/from16 v22, v15

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 v16, v10

    goto/16 :goto_1a

    :catch_1a
    :goto_11
    move-object/from16 v22, v15

    move-object/from16 v11, v23

    :catch_1b
    :goto_12
    move-object/from16 v15, v16

    :catch_1c
    move-object/from16 v16, v10

    goto :goto_14

    :catch_1d
    move-object/from16 v17, v9

    goto :goto_13

    :catchall_5
    move-exception v0

    goto/16 :goto_1a

    :catch_1e
    move-object/from16 v17, v9

    move-object/from16 v21, v11

    :goto_13
    move-object/from16 v22, v15

    move-object/from16 v11, v23

    move-object/from16 v15, v16

    .line 10584
    :goto_14
    :try_start_24
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " read exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    if-eqz v16, :cond_19

    .line 10588
    :try_start_25
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_18

    .line 10593
    :cond_19
    :goto_15
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 10594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 10600
    :cond_1a
    :try_start_26
    invoke-static {v15}, Lcom/netease/ntunisdk/base/utils/StrUtil;->isBase64(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 10601
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v15, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    invoke-direct {v9, v11, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1f

    move-object v15, v9

    goto :goto_16

    :catch_1f
    move-exception v0

    .line 10605
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10609
    :cond_1b
    :goto_16
    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 10610
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10613
    :cond_1d
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v15}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 10616
    :try_start_27
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "UNISDK_SERVER_KEY"

    const/4 v3, 0x0

    .line 10617
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "UNISDK_SERVER_KEY"

    .line 10618
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/base/utils/StrUtil;->setKey(Ljava/lang/String;)V

    const-string v2, "GAMEID"

    .line 10619
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "APP_KEY"

    .line 10620
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "APP_SECRET"

    .line 10621
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "APPID"

    .line 10622
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "APP_NAME"

    const/4 v3, 0x0

    .line 10623
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "APP_LOCATION"

    .line 10624
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "APP_VERSION"

    .line 10625
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "SCR_ORIENTATION"

    .line 10626
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "CPID"

    .line 10627
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "CP_KEY"

    .line 10628
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SERVER_ID"

    .line 10629
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "PAY_CB_URL"

    const/4 v3, 0x0

    .line 10630
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "RSA_PRIVATE"

    .line 10631
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "RSA_PUBLIC"

    .line 10632
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDK_UPDATE_CHECK_STRICT"

    .line 10633
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "BUOY_PRIVATEKEY"

    .line 10634
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "USER_ID"

    .line 10635
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "PACKET_ID"

    .line 10636
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "EXCHANGE_RATE"

    .line 10637
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "EXCHANGE_UNIT"

    .line 10638
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "CHANNEL_ID"

    .line 10639
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SPLASH"

    .line 10640
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SPLASH_TIME"

    .line 10641
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SPLASH_STAY_TIME"

    .line 10642
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SPLASH_COLOR"

    .line 10643
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SPLASH_SECOND"

    .line 10644
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10645
    invoke-virtual {v1, v0, v7}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10646
    invoke-virtual {v1, v0, v8}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10647
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 10648
    iget-object v2, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 10649
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 10650
    iget-object v3, v1, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v3, v12, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_1e
    const/4 v2, 0x0

    .line 10652
    invoke-virtual {v1, v0, v12, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_1f
    :goto_17
    const-string v2, "LAUNCHER_NAME"

    .line 10655
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "APPSFLYER_DEV_KEY"

    .line 10656
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "ADVERTISER_APPID"

    .line 10657
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "TIMELINE_KEY"

    .line 10658
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "PLATFORM_KEY"

    .line 10659
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "GAME_REGION"

    .line 10660
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "CN"

    .line 10661
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "AS"

    .line 10662
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "US"

    .line 10663
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SA"

    .line 10664
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "GAME_ENGINE"

    .line 10665
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "CC_SHOW_FPS_SETTING"

    .line 10666
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "CC_DEFAULT_FPS"

    .line 10667
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "PAYTYPE"

    .line 10668
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "PAYCODE"

    .line 10669
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "MONTHTYPE"

    .line 10670
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "LIANYUN"

    .line 10671
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SINGLE_CB"

    const/4 v3, 0x0

    .line 10672
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "DK_APPID"

    .line 10673
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "DK_APP_KEY"

    .line 10674
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SHARE_QQ_API"

    .line 10675
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SHARE_WEIBO_API"

    .line 10676
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SHARE_WEIXIN_API"

    .line 10677
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SHARE_YIXIN_API"

    .line 10678
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "ENABLE_EXLOGIN_GUEST"

    .line 10679
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "ENABLE_EXLOGIN_WEIBO"

    .line 10680
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "ENABLE_EXLOGIN_MOBILE"

    .line 10681
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "ENABLE_EXLOGIN_GOOGLEPLUS"

    .line 10682
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "DATA_REPORT_MODE"

    .line 10683
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "GAME_NAME"

    const/4 v3, 0x0

    .line 10684
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "RETRIEVE_USER"

    .line 10685
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "DOMAIN"

    .line 10686
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "QQ_APPID"

    .line 10687
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "QQ_APP_KEY"

    .line 10688
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "WX_APPID"

    .line 10689
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "WX_APP_KEY"

    .line 10690
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "WEIBO_SSO_APP_KEY"

    .line 10691
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "WEIBO_SSO_URL"

    const/4 v3, 0x0

    .line 10692
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "OFFER_ID"

    .line 10693
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "VERIFY_MODE"

    .line 10694
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "REQUEST_UNISDK_SERVER"

    .line 10695
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_CREATEORDER_URL"

    .line 10696
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_QUERYORDER_URL"

    .line 10697
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_CONSUMEORDER_URL"

    .line 10698
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "LANGUAGE_CODE"

    .line 10699
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "COUNTRY_CODE"

    .line 10700
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "PURCHASE_REG_SERVER"

    .line 10701
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SPLASH_TYPE"

    .line 10702
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "REQUEST_CMCC_PAYTYPE"

    .line 10703
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "DEFAULT_CMCC_PAYTYPE"

    .line 10704
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "GAME_VERSION"

    .line 10705
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "DERIVE_CHANNEL"

    .line 10706
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "CMCC_PAYTYPE_URL"

    .line 10707
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10708
    invoke-virtual {v1, v0, v14}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v2, v22

    .line 10709
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v2, v17

    .line 10710
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "JF_PAY_LOG_URL"

    .line 10711
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "JF_CLIENT_LOG_URL"

    .line 10712
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "JF_OVERSEA_OPEN_LOG_URL"

    .line 10713
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "JF_OVERSEA_PAY_LOG_URL"

    .line 10714
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "JF_OVERSEA_CLIENT_LOG_URL"

    .line 10715
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v2, v21

    .line 10716
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 10717
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v2, v18

    .line 10718
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "HAS_PAY_CB"

    .line 10719
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "NEED_PLAY_GAME_SERVICE"

    .line 10720
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_SERVER_URL"

    const/4 v3, 0x0

    .line 10721
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "ENABLE_UNISDK_GUEST_DISCONNECT"

    .line 10722
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "ENABLE_UNISDK_GUEST_UI"

    .line 10723
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "FLOATBTN_CLOSED"

    .line 10724
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "FLOAT_BTN_POS"

    .line 10725
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UPDATE_CHECK_URL"

    const/4 v3, 0x0

    .line 10726
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "UPDATE_DOWNLOAD_URL"

    .line 10727
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "UNISDK_SERVER_MODE"

    .line 10728
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_SERVER_EXTPARAM"

    .line 10729
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_EXT_INFO"

    .line 10730
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "CODE_SCANNER_PAY_URL"

    .line 10731
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "ENABLE_TV"

    .line 10732
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "EXTERNAL_OP_LIST"

    .line 10733
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "REMOVE_PERMISSION_LIST"

    .line 10734
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_JF_GAS3"

    .line 10735
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_JF_GAS3_WEB"

    .line 10736
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_JF_GAS3_URL"

    .line 10737
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SKIN_TYPE"

    .line 10738
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "USR_NAME"

    const/4 v3, 0x0

    .line 10739
    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v2, "OVERSEA_CHANNEL"

    .line 10740
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDK_WHO_REQ_URL"

    .line 10741
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDK_DETECT_URL"

    .line 10742
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDK_DUMP_URL"

    .line 10743
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDK_UNI_UPDATE_URL"

    .line 10744
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDK_ECHOES_URL"

    .line 10745
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "UNISDK_DRPF_URL"

    .line 10746
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDC_DEVICE_INFO_URL"

    .line 10747
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDK_SWITCHER_URL_PROJECT"

    .line 10748
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "SDK_SWITCHER_URL"

    .line 10749
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "NOAH_APPID"

    .line 10750
    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10753
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->doSepcialConfigVal(Lorg/json/JSONObject;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_20

    goto :goto_18

    .line 10755
    :catch_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_data config parse to json error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10803
    :cond_20
    :goto_18
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-static {}, Lcom/netease/ntunisdk/base/deeplink/b;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 10766
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getBaseVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unisdk_sdk_version_base"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10767
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getBaseVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unisdk_sdk_version_common"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10768
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 10770
    :try_start_28
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10772
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 10773
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    :catchall_6
    :cond_21
    move-object/from16 v2, p1

    .line 251
    instance-of v0, v2, Landroid/app/Activity;

    if-eqz v0, :cond_22

    .line 252
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    .line 253
    new-instance v2, Lcom/netease/ntunisdk/base/SdkBase$1;

    invoke-direct {v2, v1}, Lcom/netease/ntunisdk/base/SdkBase$1;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 263
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 265
    iget-object v2, v1, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v2, v12, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 267
    :cond_24
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, v12, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_25
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LOGIN_CHANNEL"

    invoke-virtual {v1, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1a
    if-eqz v16, :cond_26

    .line 10588
    :try_start_29
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_21

    .line 10592
    :catch_21
    :cond_26
    throw v0

    :catchall_7
    move-exception v0

    move-object/from16 v16, v7

    :goto_1b
    if-eqz v16, :cond_27

    .line 10499
    :try_start_2a
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_22

    .line 10503
    :catch_22
    :cond_27
    throw v0

    :goto_1c
    if-eqz v2, :cond_28

    .line 10441
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_23

    .line 10445
    :catch_23
    :cond_28
    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public setDebugMode(Z)V
    .locals 0

    return-void
.end method

.method public setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V
    .locals 3

    .line 998
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 999
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 1000
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V

    goto :goto_0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1003
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 1004
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V

    goto :goto_1

    .line 1006
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->g:Lcom/netease/ntunisdk/base/OnExitListener;

    const-string p1, "EXIT_CALLER_THREAD"

    .line 1007
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V
    .locals 3

    .line 9251
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9252
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9253
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    goto :goto_0

    .line 9255
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9256
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9257
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    goto :goto_1

    .line 9260
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->s:Lcom/netease/ntunisdk/base/OnExtendFuncListener;

    const-string p1, "EXTEND_FUNC_CALLER_THREAD"

    .line 9261
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    .line 3739
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setFloatBtnVisible(Z)V
    .locals 0

    return-void
.end method

.method public setGlView(Landroid/opengl/GLSurfaceView;)V
    .locals 3

    .line 3799
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3800
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 3801
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setGlView(Landroid/opengl/GLSurfaceView;)V

    goto :goto_0

    .line 3803
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3804
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 3805
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setGlView(Landroid/opengl/GLSurfaceView;)V

    goto :goto_1

    .line 3807
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->t:Landroid/opengl/GLSurfaceView;

    .line 3808
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method protected setJFPayMap(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 8945
    iget-object p3, p0, Lcom/netease/ntunisdk/base/SdkBase;->y:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setJFSauth(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 8931
    iget-object p3, p0, Lcom/netease/ntunisdk/base/SdkBase;->z:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLeaveSdkListener(Lcom/netease/ntunisdk/base/OnLeaveSdkListener;I)V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 935
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 936
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setLeaveSdkListener(Lcom/netease/ntunisdk/base/OnLeaveSdkListener;I)V

    goto :goto_0

    .line 938
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->d:Lcom/netease/ntunisdk/base/OnLeaveSdkListener;

    const-string p1, "LEAVE_SDK_CALLER_THREAD"

    .line 939
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginListener:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    const-string p1, "LOGIN_CALLER_THREAD"

    .line 817
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLoginSauthInfo()V
    .locals 2

    const-string v0, "UIN"

    .line 1238
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEB_UID"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SESSION"

    .line 1239
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEB_SESSION"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGIN_CHANNEL"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAUTH_STR"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getJFSauthJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAUTH_JSON"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLoginStat(I)V
    .locals 1

    const-string v0, "LOGIN_STAT"

    .line 3784
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V
    .locals 3

    .line 916
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 917
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 918
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V

    goto :goto_0

    .line 920
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->logoutListener:Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

    const-string p1, "LOGOUT_CALLER_THREAD"

    .line 921
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setOnProtocolFinishListener(Lcom/netease/ntunisdk/base/OnProtocolFinishListener;I)V
    .locals 0

    .line 9463
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->B:Lcom/netease/ntunisdk/base/OnProtocolFinishListener;

    const-string p1, "PROTOCOL_FINISH_CALLER_THREAD"

    .line 9464
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V
    .locals 3

    .line 948
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 949
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 950
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    goto :goto_0

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 953
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 954
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    goto :goto_1

    .line 956
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->orderListener:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    const-string p1, "ORDER_CALLER_THREAD"

    .line 957
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPropInt(Ljava/lang/String;I)V
    .locals 0

    .line 3714
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3643
    invoke-static {p1}, Lcom/netease/ntunisdk/base/SdkBase;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",val:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 3647
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_0
    const-string v0, "FULL_UIN"

    .line 3649
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "UIN"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "@"

    .line 3650
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ENABLE_FAKE_ABOUT_ID"

    .line 3651
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "1"

    .line 3652
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "{\"methodId\":\"setFake\",\"isFake\":%s}"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3653
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v4

    const-string v5, "unisdkbase"

    const-string v6, "deviceInfo"

    invoke-virtual {v4, v5, v6, v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3655
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    .line 3657
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3658
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->N:Ljava/util/Hashtable;

    const-string v2, "GAS3_UID"

    invoke-virtual {v0, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "UNISDK_LOGIN_JSON"

    .line 3661
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15020
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15021
    new-instance v0, Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 15022
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 15023
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "aas_version"

    .line 15025
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15026
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 15027
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "JF_LOGIN_AAS_VERSION"

    invoke-interface {v2, v3, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15036
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 15034
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 15032
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_4
    :goto_1
    const-string v0, "UNISDK_JF_ACCESS_TOKEN"

    .line 3665
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3666
    invoke-static {p2}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->setAccessToken(Ljava/lang/String;)V

    :cond_5
    :goto_2
    const-string v0, "USERINFO_AID"

    .line 3671
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "JF_GAMEID"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "g18"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3672
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "step"

    const-string v3, "setPropStr_"

    .line 3674
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3675
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p2, "empty"

    .line 3676
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 3678
    :cond_6
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 3681
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "extraJson:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 p1, 0x0

    .line 3683
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setPushListener(Lcom/netease/ntunisdk/base/OnPushListener;I)V
    .locals 4

    .line 6293
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PUSH_CALLER_THREAD"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6294
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6295
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPushListener(Lcom/netease/ntunisdk/base/OnPushListener;I)V

    .line 6296
    invoke-virtual {v1, v2, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 6298
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6299
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6300
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPushListener(Lcom/netease/ntunisdk/base/OnPushListener;I)V

    goto :goto_1

    .line 6302
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    .line 6303
    invoke-virtual {p0, v2, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setQRCodeListener(Lcom/netease/ntunisdk/base/OnQRCodeListener;I)V
    .locals 3

    .line 8009
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8010
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8011
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQRCodeListener(Lcom/netease/ntunisdk/base/OnQRCodeListener;I)V

    goto :goto_0

    .line 8013
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8014
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8015
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQRCodeListener(Lcom/netease/ntunisdk/base/OnQRCodeListener;I)V

    goto :goto_1

    .line 8017
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->r:Lcom/netease/ntunisdk/base/OnQRCodeListener;

    const-string p1, "QRCODE_CALLER_THREAD"

    .line 8018
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V
    .locals 3

    .line 5021
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5022
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5023
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V

    goto :goto_0

    .line 5025
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5026
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5027
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V

    goto :goto_1

    .line 5029
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->h:Lcom/netease/ntunisdk/base/QueryFriendListener;

    const-string p1, "FRIEND_CALLER_THREAD"

    .line 5030
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setQueryRankListener(Lcom/netease/ntunisdk/base/QueryRankListener;I)V
    .locals 3

    .line 5283
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5284
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5285
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQueryRankListener(Lcom/netease/ntunisdk/base/QueryRankListener;I)V

    goto :goto_0

    .line 5287
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5288
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5289
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQueryRankListener(Lcom/netease/ntunisdk/base/QueryRankListener;I)V

    goto :goto_1

    .line 5291
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->i:Lcom/netease/ntunisdk/base/QueryRankListener;

    const-string p1, "RANK_CALLER_THREAD"

    .line 5292
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setQuerySkuDetailsListener(Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;I)V
    .locals 3

    .line 6704
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6705
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6706
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQuerySkuDetailsListener(Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;I)V

    goto :goto_0

    .line 6708
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6709
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6710
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQuerySkuDetailsListener(Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;I)V

    goto :goto_1

    .line 6712
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->querySkuDetailsListener:Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;

    const-string p1, "QUERYSKUDETAILS_CALLER_THREAD"

    .line 6713
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setQuestListener(Lcom/netease/ntunisdk/base/OnQuestListener;I)V
    .locals 3

    .line 5436
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5437
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5438
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQuestListener(Lcom/netease/ntunisdk/base/OnQuestListener;I)V

    goto :goto_0

    .line 5440
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5441
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5442
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setQuestListener(Lcom/netease/ntunisdk/base/OnQuestListener;I)V

    goto :goto_1

    .line 5444
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->j:Lcom/netease/ntunisdk/base/OnQuestListener;

    const-string p1, "QUEST_CALLER_THREAD"

    .line 5445
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setReceiveMsgListener(Lcom/netease/ntunisdk/base/OnReceiveMsgListener;I)V
    .locals 3

    .line 984
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 985
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 986
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setReceiveMsgListener(Lcom/netease/ntunisdk/base/OnReceiveMsgListener;I)V

    goto :goto_0

    .line 988
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->f:Lcom/netease/ntunisdk/base/OnReceiveMsgListener;

    const-string p1, "CONTINUE_CALLER_THREAD"

    .line 989
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V
    .locals 3

    .line 5996
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5997
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 5998
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V

    goto :goto_0

    .line 6000
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6001
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6002
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V

    goto :goto_1

    .line 6004
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->k:Lcom/netease/ntunisdk/base/OnShareListener;

    const-string p1, "SHARE_CALLER_THREAD"

    .line 6005
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setShowViewListener(Lcom/netease/ntunisdk/base/OnShowViewListener;I)V
    .locals 4

    .line 6331
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SHOW_VIEW_THREAD"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6332
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6333
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setShowViewListener(Lcom/netease/ntunisdk/base/OnShowViewListener;I)V

    .line 6334
    invoke-virtual {v1, v2, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 6336
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6337
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 6338
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setShowViewListener(Lcom/netease/ntunisdk/base/OnShowViewListener;I)V

    goto :goto_1

    .line 6340
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->n:Lcom/netease/ntunisdk/base/OnShowViewListener;

    .line 6341
    invoke-virtual {p0, v2, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setStartupListener(Lcom/netease/ntunisdk/base/OnStartupListener;I)V
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 863
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 864
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setStartupListener(Lcom/netease/ntunisdk/base/OnStartupListener;I)V

    goto :goto_0

    .line 866
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    const-string p1, "LOGIN_CALLER_THREAD"

    .line 867
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected setUsePushNotification(Z)V
    .locals 0

    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4882
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserPushFinished(Z)V
    .locals 2

    .line 6263
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->l:Lcom/netease/ntunisdk/base/OnPushListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "pushListener not set"

    .line 6264
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "SHOW_VIEW_THREAD"

    .line 6267
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6268
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$167;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$167;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6276
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6277
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$3;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$3;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVerifyListener(Lcom/netease/ntunisdk/base/OnVerifyListener;I)V
    .locals 3

    .line 8419
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8420
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8421
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setVerifyListener(Lcom/netease/ntunisdk/base/OnVerifyListener;I)V

    goto :goto_0

    .line 8423
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8424
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8425
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setVerifyListener(Lcom/netease/ntunisdk/base/OnVerifyListener;I)V

    goto :goto_1

    .line 8427
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->p:Lcom/netease/ntunisdk/base/OnVerifyListener;

    const-string p1, "VERIFY_CALLER_THREAD"

    .line 8428
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setWebLoginByCodeScannerListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V
    .locals 3

    .line 830
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 831
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 832
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setWebLoginByCodeScannerListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    goto :goto_0

    .line 834
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->b:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    const-string p1, "WEB_LOGIN_CALLER_THREAD"

    .line 835
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setWebOrderByCodeScannerListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 845
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 846
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setWebOrderByCodeScannerListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    goto :goto_0

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 849
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 850
    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setWebOrderByCodeScannerListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    goto :goto_1

    .line 852
    :cond_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->c:Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    const-string p1, "ORDER_CALLER_THREAD"

    .line 853
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;I)V
    .locals 1

    .line 8380
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;)V

    const-string p1, "WEBVIEW_CALLER_THREAD"

    .line 8381
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected setZone(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    return-void
.end method

.method public shareFinished(Z)V
    .locals 2

    .line 5966
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->k:Lcom/netease/ntunisdk/base/OnShareListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "shareListener not set"

    .line 5967
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "SHARE_CALLER_THREAD"

    .line 5970
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5971
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$148;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$148;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5979
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5980
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$149;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$149;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showAASDialog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected showBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showCompactView(Z)V
    .locals 0

    return-void
.end method

.method public showConversation()V
    .locals 0

    return-void
.end method

.method public showDaren()V
    .locals 0

    return-void
.end method

.method public showFAQs()V
    .locals 0

    return-void
.end method

.method protected showRewardView(Ljava/util/List;)V
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

.method public showViewFinished(Ljava/lang/String;)V
    .locals 2

    .line 6220
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->n:Lcom/netease/ntunisdk/base/OnShowViewListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "showViewListener not set"

    .line 6221
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "SHOW_VIEW_THREAD"

    .line 6224
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6225
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$165;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$165;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 6240
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 6241
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$166;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$166;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showWeb(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected specialShareChannel(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public startupDone()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    if-nez v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "startupListener not set"

    .line 875
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "CONTINUE_CALLER_THREAD"

    .line 878
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 879
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$91;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase$91;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->a:Lcom/netease/ntunisdk/base/OnStartupListener;

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnStartupListener;->startupDone()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 197
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->v:Z

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->u:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 199
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase;->t:Landroid/opengl/GLSurfaceView;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->u:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->v:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 216
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/SdkBase;->v:Z

    return-void
.end method

.method public switchAccount()V
    .locals 0

    return-void
.end method

.method protected trackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract upLoadUserInfo()V
.end method

.method public updateAchievement(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public updateAchievementFinished(Z)V
    .locals 2

    .line 5406
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->i:Lcom/netease/ntunisdk/base/QueryRankListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryRankListener not set"

    .line 5407
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "RANK_CALLER_THREAD"

    .line 5410
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5411
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$134;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$134;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5419
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5420
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$136;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$136;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateEvent(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public updateRank(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public updateRankFinished(Z)V
    .locals 2

    .line 5377
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->i:Lcom/netease/ntunisdk/base/QueryRankListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "QueryRankListener not set"

    .line 5378
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "RANK_CALLER_THREAD"

    .line 5381
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5382
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$132;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$132;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 5390
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 5391
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$133;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$133;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected useNewSdkProcedure()Z
    .locals 3

    const-string v0, "ENABLE_CLIENT_CHECK_REALNAME"

    const/4 v1, 0x0

    .line 9509
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public verifyDone(ZILjava/lang/String;)V
    .locals 2

    .line 8437
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->p:Lcom/netease/ntunisdk/base/OnVerifyListener;

    if-nez v0, :cond_0

    const-string p1, "UniSDK Base"

    const-string p2, "OnVerifyListener not set"

    .line 8438
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "VERIFY_CALLER_THREAD"

    .line 8441
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8442
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$70;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$70;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ZILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 8454
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 8455
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$71;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase$71;-><init>(Lcom/netease/ntunisdk/base/SdkBase;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyMobile(I)V
    .locals 0

    return-void
.end method

.method public webLoginByCodeScanner()V
    .locals 1

    const/4 v0, 0x0

    .line 1019
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->webLoginByCodeScannerDone(I)V

    return-void
.end method

.method protected webLoginByCodeScannerDone(I)V
    .locals 4

    .line 1595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->E:J

    .line 1596
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->b:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    const-string v1, "UniSDK Base"

    if-nez v0, :cond_0

    const-string p1, "OnWebLoginDoneListener not set"

    .line 1597
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1602
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "WEB_LOGIN_STATUS"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    const-string v2, "WEB_LOGIN_CALLER_THREAD"

    .line 1604
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1605
    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$13;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$13;-><init>(Lcom/netease/ntunisdk/base/SdkBase;I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 1613
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "runOnUIThread, web loginDone: code="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current thread="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase;->b:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnLoginDoneListener;->loginDone(I)V

    return-void
.end method
