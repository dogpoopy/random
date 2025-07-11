.class Lcom/netease/pharos/PharosProxy$4;
.super Ljava/lang/Object;
.source "PharosProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/PharosProxy;->pharosFunc(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/PharosProxy;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy$4;->this$0:Lcom/netease/pharos/PharosProxy;

    iput-object p2, p0, Lcom/netease/pharos/PharosProxy$4;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$4;->this$0:Lcom/netease/pharos/PharosProxy;

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy$4;->val$jsonObject:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/netease/pharos/PharosProxy;->access$100(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$4;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->scheduleNext()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy$4;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->scheduleNext()V

    .line 521
    throw v0
.end method
