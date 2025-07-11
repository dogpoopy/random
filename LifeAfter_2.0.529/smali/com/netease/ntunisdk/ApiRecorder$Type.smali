.class public final enum Lcom/netease/ntunisdk/ApiRecorder$Type;
.super Ljava/lang/Enum;
.source "ApiRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/ApiRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/ApiRecorder$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum exit:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum getAnnouncementInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum inAppPurchase:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum init:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum login:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum logout:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum manager:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onActivityResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onCreate:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onNewIntent:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onPause:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onRequestPermissionsResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onRestart:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onResume:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onSaveInstanceState:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onStart:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onStop:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onWindowFocusChanged:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum openExitView:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum uploadUserInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum userProtocol:Lcom/netease/ntunisdk/ApiRecorder$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 16
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "init"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->init:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 17
    new-instance v1, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v3, "login"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->login:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 18
    new-instance v3, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v5, "inAppPurchase"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/ntunisdk/ApiRecorder$Type;->inAppPurchase:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 19
    new-instance v5, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v7, "manager"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/ntunisdk/ApiRecorder$Type;->manager:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 20
    new-instance v7, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v9, "logout"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/ntunisdk/ApiRecorder$Type;->logout:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 21
    new-instance v9, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v11, "uploadUserInfo"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/ntunisdk/ApiRecorder$Type;->uploadUserInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 22
    new-instance v11, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v13, "openExitView"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/netease/ntunisdk/ApiRecorder$Type;->openExitView:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 23
    new-instance v13, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v15, "exit"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/netease/ntunisdk/ApiRecorder$Type;->exit:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 24
    new-instance v15, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v14, "userProtocol"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/netease/ntunisdk/ApiRecorder$Type;->userProtocol:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 25
    new-instance v14, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v12, "getAnnouncementInfo"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/netease/ntunisdk/ApiRecorder$Type;->getAnnouncementInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 27
    new-instance v12, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v10, "onCreate"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/netease/ntunisdk/ApiRecorder$Type;->onCreate:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 28
    new-instance v10, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v8, "onPause"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/netease/ntunisdk/ApiRecorder$Type;->onPause:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 29
    new-instance v8, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v6, "onResume"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/netease/ntunisdk/ApiRecorder$Type;->onResume:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 30
    new-instance v6, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v4, "onStart"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/netease/ntunisdk/ApiRecorder$Type;->onStart:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 31
    new-instance v4, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v2, "onRestart"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/ntunisdk/ApiRecorder$Type;->onRestart:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 32
    new-instance v2, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v6, "onStop"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/ntunisdk/ApiRecorder$Type;->onStop:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 34
    new-instance v6, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v4, "onNewIntent"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/netease/ntunisdk/ApiRecorder$Type;->onNewIntent:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 35
    new-instance v4, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v2, "onActivityResult"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/ntunisdk/ApiRecorder$Type;->onActivityResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 36
    new-instance v2, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v6, "onRequestPermissionsResult"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/ntunisdk/ApiRecorder$Type;->onRequestPermissionsResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 37
    new-instance v6, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v4, "onWindowFocusChanged"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/netease/ntunisdk/ApiRecorder$Type;->onWindowFocusChanged:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 38
    new-instance v4, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v2, "onSaveInstanceState"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/ntunisdk/ApiRecorder$Type;->onSaveInstanceState:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    .line 15
    sput-object v2, Lcom/netease/ntunisdk/ApiRecorder$Type;->$VALUES:[Lcom/netease/ntunisdk/ApiRecorder$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/ApiRecorder$Type;
    .locals 1

    .line 15
    const-class v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/ApiRecorder$Type;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->$VALUES:[Lcom/netease/ntunisdk/ApiRecorder$Type;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/ApiRecorder$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/ApiRecorder$Type;

    return-object v0
.end method
