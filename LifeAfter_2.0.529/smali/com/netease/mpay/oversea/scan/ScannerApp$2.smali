.class Lcom/netease/mpay/oversea/scan/ScannerApp$2;
.super Ljava/lang/Object;
.source "ScannerApp.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/ScannerApp;->fetchQrConfigTask(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
        "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/ScannerApp;

.field final synthetic val$callback:Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/ScannerApp;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->this$0:Lcom/netease/mpay/oversea/scan/ScannerApp;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->val$callback:Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->val$callback:Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;->onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->this$0:Lcom/netease/mpay/oversea/scan/ScannerApp;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/scan/ScannerApp;->access$002(Lcom/netease/mpay/oversea/scan/ScannerApp;Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    .line 102
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->val$callback:Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->onSuccess(Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)V

    return-void
.end method
