.class Lcom/netease/pushclient/PushManagerImpl$1;
.super Ljava/util/HashMap;
.source "PushManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pushclient/PushManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "miui"

    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "huawei"

    .line 84
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hms"

    .line 85
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flyme"

    .line 86
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fcm"

    .line 87
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oppo"

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vivo"

    .line 89
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
