.class Lcom/netease/androidcrashhandler/util/CUtil$1;
.super Ljava/lang/Object;
.source "CUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$threadTask:Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/netease/androidcrashhandler/util/CUtil$1;->val$threadTask:Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/CUtil$1;->val$threadTask:Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;

    invoke-interface {v0}, Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;->run()V

    return-void
.end method
