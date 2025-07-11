.class Lcom/netease/mpay/oversea/scan/ScannerApp$1;
.super Ljava/lang/Object;
.source "ScannerApp.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/ScannerApp;->fetchConfig(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V
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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/ScannerApp;Ljava/lang/Runnable;Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->this$0:Lcom/netease/mpay/oversea/scan/ScannerApp;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->val$callback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->this$0:Lcom/netease/mpay/oversea/scan/ScannerApp;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p2, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->val$callback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    invoke-static {p1, v0, p2, v1}, Lcom/netease/mpay/oversea/scan/ScannerApp;->access$100(Lcom/netease/mpay/oversea/scan/ScannerApp;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->this$0:Lcom/netease/mpay/oversea/scan/ScannerApp;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/scan/ScannerApp;->access$002(Lcom/netease/mpay/oversea/scan/ScannerApp;Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    .line 84
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/ScannerApp$1;->onSuccess(Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;)V

    return-void
.end method
