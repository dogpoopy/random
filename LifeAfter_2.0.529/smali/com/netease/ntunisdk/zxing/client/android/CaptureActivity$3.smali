.class Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

.field final synthetic val$headRlt:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;->val$headRlt:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;->val$headRlt:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$002(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;I)I

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "headHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-static {v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$000(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniQR act"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;->val$headRlt:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method
