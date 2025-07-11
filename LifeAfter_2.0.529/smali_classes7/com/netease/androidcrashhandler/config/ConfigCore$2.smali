.class Lcom/netease/androidcrashhandler/config/ConfigCore$2;
.super Ljava/lang/Object;
.source "ConfigCore.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/config/ConfigCore;->fresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

.field final synthetic val$ConfigRequest:Lcom/netease/androidcrashhandler/net/ConfigRequest;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/config/ConfigCore;Lcom/netease/androidcrashhandler/net/ConfigRequest;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$2;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$2;->val$ConfigRequest:Lcom/netease/androidcrashhandler/net/ConfigRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$2;->val$ConfigRequest:Lcom/netease/androidcrashhandler/net/ConfigRequest;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/net/ConfigRequest;->call()Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 238
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
