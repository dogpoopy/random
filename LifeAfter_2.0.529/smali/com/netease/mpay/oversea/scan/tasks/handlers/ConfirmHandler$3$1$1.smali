.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1$1;
.super Ljava/lang/Object;
.source "ConfirmHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->onSuccess(Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;

.field final synthetic val$stringResponse:Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1$1;->this$2:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1$1;->val$stringResponse:Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H5auth redirectUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1$1;->val$stringResponse:Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    iget-object v1, v1, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmHandler"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1$1;->this$2:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$300(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1$1;->val$stringResponse:Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    iget-object v1, v1, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;->result:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->openBrowser(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void
.end method
