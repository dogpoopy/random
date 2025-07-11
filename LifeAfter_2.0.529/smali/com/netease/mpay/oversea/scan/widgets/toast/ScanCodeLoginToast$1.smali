.class Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$1;
.super Ljava/lang/Object;
.source "ScanCodeLoginToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->toastAt(Landroid/app/Activity;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$toastId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$1;->val$toastId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$1;->val$toastId:I

    .line 41
    invoke-static {}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->access$000()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-static {}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->cancelToast()V

    :cond_0
    return-void
.end method
