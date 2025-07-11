.class Lcom/netease/mrzhna/Client$2;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Client;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Client;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/netease/mrzhna/Client$2;->this$0:Lcom/netease/mrzhna/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prePostHandle()V
    .locals 7

    const-string v0, "prePostHandle"

    .line 486
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/mrzhna/Client$2;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v2}, Lcom/netease/mrzhna/Client;->access$000(Lcom/netease/mrzhna/Client;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/extra_info.other"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prePostHandle begin"

    .line 487
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v4

    const-string v5, "extra_info.other"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1, v6}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->initWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    move-result-object v1

    .line 494
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->addFiles(Ljava/util/ArrayList;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v1, "read extra_info.other succ!"

    .line 498
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "read extra_info.other failed!"

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
