.class public Lcom/netease/push/utils/VersionManager$VersionInfo;
.super Ljava/lang/Object;
.source "VersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/utils/VersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public mNeedNiepush:Ljava/lang/Boolean;

.field public mPackageName:Ljava/lang/String;

.field public mVersionCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mVersionCode:I

    const-string v1, ""

    .line 38
    iput-object v1, p0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mPackageName:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mNeedNiepush:Ljava/lang/Boolean;

    .line 46
    iput p1, p0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mVersionCode:I

    .line 47
    iput-object p2, p0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mPackageName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/netease/push/utils/VersionManager$VersionInfo;->mNeedNiepush:Ljava/lang/Boolean;

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/netease/push/utils/VersionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
