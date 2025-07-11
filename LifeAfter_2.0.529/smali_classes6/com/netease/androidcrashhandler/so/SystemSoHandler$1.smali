.class Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;
.super Ljava/lang/Object;
.source "SystemSoHandler.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/net/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/so/SystemSoHandler;->requestToken(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Landroid/content/Context;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemSoHandler [requestToken] \u83b7\u53d6token\u7ed3\u679c = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-static {v0, p1, p2}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->access$000(Lcom/netease/androidcrashhandler/so/SystemSoHandler;ILjava/lang/String;)Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    .line 431
    iget v2, p1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mCode:I

    if-ne v0, v2, :cond_0

    const-string p2, "SystemSoHandler [requestToken] \u6267\u884c\u4e0a\u4f20"

    .line 433
    invoke-static {v1, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->access$100(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 436
    iget v2, p1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mCode:I

    if-eq v0, v2, :cond_2

    const/4 v0, 0x3

    iget p1, p1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mCode:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "SystemSoHandler [requestToken] \u8be5so\u5df2\u4e0a\u4f20"

    .line 443
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-static {p1, p2}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->access$202(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Z)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "SystemSoHandler [requestToken] \u5904\u7406\u4e0b\u4e00\u4e2aso"

    .line 438
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->uploadSystemSo(Landroid/content/Context;)V

    .line 440
    iget-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-static {p1, p2}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->access$202(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Z)Z

    goto :goto_1

    .line 449
    :cond_3
    iget-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-static {p1, p2}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->access$202(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Z)Z

    :goto_1
    return-void
.end method
