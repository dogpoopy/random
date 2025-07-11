.class final Lcom/netease/download/Const$1;
.super Ljava/util/ArrayList;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/download/Const$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
