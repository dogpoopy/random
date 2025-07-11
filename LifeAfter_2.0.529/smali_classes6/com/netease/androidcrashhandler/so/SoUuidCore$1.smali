.class Lcom/netease/androidcrashhandler/so/SoUuidCore$1;
.super Ljava/lang/Object;
.source "SoUuidCore.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/so/SoUuidCore;->storageSoUuidInfosToSdkDir(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/so/SoUuidCore;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/so/SoUuidCore;Landroid/content/Context;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SoUuidCore$1;->this$0:Lcom/netease/androidcrashhandler/so/SoUuidCore;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/so/SoUuidCore$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SoUuidCore$1;->this$0:Lcom/netease/androidcrashhandler/so/SoUuidCore;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SoUuidCore$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/so/SoUuidCore;->access$000(Lcom/netease/androidcrashhandler/so/SoUuidCore;Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x1388

    .line 45
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SoUuidCore$1;->this$0:Lcom/netease/androidcrashhandler/so/SoUuidCore;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SoUuidCore$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/so/SoUuidCore;->access$100(Lcom/netease/androidcrashhandler/so/SoUuidCore;Landroid/content/Context;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "trace"

    const-string v1, "SoUuidCore [storageSoUuidInfosToSdkDir] error"

    .line 54
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
