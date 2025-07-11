.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/mpay/oversea/UnBindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UniUnbindCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 0

    .line 2397
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V
    .locals 0

    .line 2397
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 6

    .line 2412
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v5, "UnBindCallback-onFailure, code=%d, msg=%s"

    invoke-static {v0, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "func"

    aput-object v5, v2, v4

    const-string v4, "UnBindCallback.onFailure"

    aput-object v4, v2, v3

    const-string v3, "step"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "loginDone"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "raw_code"

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 p1, 0x6

    const-string v1, "raw_msg"

    aput-object v1, v2, p1

    const/4 p1, 0x7

    aput-object p2, v2, p1

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1100(Lcom/netease/ntunisdk/SdkNeteaseGlobal;[Ljava/lang/String;)V

    return-void
.end method

.method public onLogout()V
    .locals 4

    const-string v0, "UniSDK netease_global"

    const-string v1, "onLogout"

    .line 2423
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$2100(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    .line 2425
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$2600(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    .line 2426
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->logoutDone(I)V

    .line 2427
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "func"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "UnBindCallback.onUserLogout"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "step"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "logoutDone"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1100(Lcom/netease/ntunisdk/SdkNeteaseGlobal;[Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 6

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnBindCallback-onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2403
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/netease/mpay/oversea/User;->token:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/netease/mpay/oversea/User;->deviceId:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "UnBindCallback-onSuccess, thread=%d, uid=%s, token=%s, devId=%s"

    .line 2403
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$2500(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;)V

    return-void
.end method
