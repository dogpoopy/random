.class Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$7;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$7;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 596
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$7;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    const/16 p2, 0x7996

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/zxing/utils/Util;->requestMediaPermission(Landroid/app/Activity;I)V

    return-void
.end method
