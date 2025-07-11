.class Lcom/netease/mrzhna/Launcher$CheckObbDeliver;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckObbDeliver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 2287
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2291
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v1, "neox_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NeoXRoot"

    const/4 v3, 0x0

    .line 2292
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2293
    new-instance v0, Lcom/netease/mrzhna/Launcher$CheckObbDeliverHandler;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netease/mrzhna/Launcher$CheckObbDeliverHandler;-><init>(Lcom/netease/mrzhna/Launcher;Landroid/os/Looper;)V

    .line 2296
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$2200(Lcom/netease/mrzhna/Launcher;)Ljava/io/File;

    move-result-object v1

    const-string v3, "NEOX_G66_OBB"

    if-eqz v1, :cond_4

    .line 2297
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2299
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v1}, Lcom/netease/mrzhna/Launcher;->expansionFilesDelivered()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 2303
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$2300(Lcom/netease/mrzhna/Launcher;)Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    const-string v1, "use patch obb"

    .line 2305
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$2400(Lcom/netease/mrzhna/Launcher;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2307
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2309
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$CheckObbDeliver;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v1}, Lcom/netease/mrzhna/Launcher;->expansionPatchObbFilesDelivered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2312
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v1, "patch obb hash error"

    .line 2316
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v1, "patch obb not exist"

    .line 2322
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v1, "do not use patch obb"

    .line 2328
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string v1, "obb hash error"

    .line 2334
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string v1, "obb not exist"

    .line 2340
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
