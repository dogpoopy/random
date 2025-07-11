.class Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5$1;->this$1:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5$1;->this$1:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;

    iget-object p1, p1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5$1;->this$1:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;

    iget-object v0, v0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;->val$result:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$300(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;)V

    return-void
.end method
