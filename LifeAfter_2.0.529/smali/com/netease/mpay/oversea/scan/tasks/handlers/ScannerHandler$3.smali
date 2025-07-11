.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$3;
.super Ljava/lang/Object;
.source "ScannerHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->showErrorMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$800(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 178
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$400(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Lcom/netease/mpay/oversea/scan/ScannerCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$400(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Lcom/netease/mpay/oversea/scan/ScannerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerCancel()V

    :cond_0
    return-void
.end method
