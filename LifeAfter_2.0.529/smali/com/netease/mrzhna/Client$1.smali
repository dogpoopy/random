.class Lcom/netease/mrzhna/Client$1;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;


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

    .line 465
    iput-object p1, p0, Lcom/netease/mrzhna/Client$1;->this$0:Lcom/netease/mrzhna/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crashCallBack(Ljava/lang/Throwable;)V
    .locals 4

    .line 468
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetDumpExtraInfo()Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetLogMem()Ljava/lang/String;

    move-result-object v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    const-string v2, "extra_info.other"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->initWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    move-result-object p1

    .line 475
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->addFiles(Ljava/util/ArrayList;)V

    return-void
.end method
