.class Lcom/netease/androidcrashhandler/other/OtherCore$3;
.super Ljava/lang/Object;
.source "OtherCore.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/other/OtherCore$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/other/OtherCore;->call()Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/other/OtherCore;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/other/OtherCore;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherCore$3;->this$0:Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore$3;->this$0:Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/other/OtherCore;->access$002(Lcom/netease/androidcrashhandler/other/OtherCore;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/androidcrashhandler/other/OtherCore$3;->this$0:Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/other/OtherCore;->access$000(Lcom/netease/androidcrashhandler/other/OtherCore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    iget-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherCore$3;->this$0:Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/other/OtherCore;->access$000(Lcom/netease/androidcrashhandler/other/OtherCore;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CUtil;->copyParamFile(Ljava/lang/String;)Z

    return-void
.end method
