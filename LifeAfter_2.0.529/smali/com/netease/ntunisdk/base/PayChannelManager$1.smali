.class final Lcom/netease/ntunisdk/base/PayChannelManager$1;
.super Ljava/lang/Object;
.source "PayChannelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/PayChannelManager;->initAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/PayChannelManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/PayChannelManager;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$1;->a:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager$1;->a:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->a(Lcom/netease/ntunisdk/base/PayChannelManager;)V

    return-void
.end method
