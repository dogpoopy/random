.class Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->showImagePopupWindow(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$200(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5$1;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5$1;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/imageutil/ImageUtil;->showImagePopupWindow(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method
