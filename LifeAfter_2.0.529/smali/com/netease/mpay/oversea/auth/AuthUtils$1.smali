.class Lcom/netease/mpay/oversea/auth/AuthUtils$1;
.super Ljava/util/ArrayList;
.source "AuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/auth/AuthUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/netease/mpay/oversea/auth/AuthUtils$CheckItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckItem;

    const-string v1, "UNISDK_JF_GAS3_URL"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/auth/AuthUtils$1;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckItem;

    const-string v1, "JF_LOG_KEY"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/auth/AuthUtils$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
