.class Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;
.super Ljava/lang/Object;
.source "DiProxy.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/entity/di/DiProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->access$000(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "trace"

    const-string v1, "DiProxy [start] call fresh"

    .line 62
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-class v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->access$100(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->fresh()V

    .line 66
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->access$100(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->writeToLocalFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 69
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->access$200(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)V

    goto :goto_0

    .line 71
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    return-void
.end method
