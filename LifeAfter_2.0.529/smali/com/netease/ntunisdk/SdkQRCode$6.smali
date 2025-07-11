.class Lcom/netease/ntunisdk/SdkQRCode$6;
.super Ljava/lang/Object;
.source "SdkQRCode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkQRCode;->requestCameraThenExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkQRCode;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkQRCode;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode$6;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 468
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode$6;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkQRCode;->access$1200(Lcom/netease/ntunisdk/SdkQRCode;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.CAMERA"

    aput-object v1, p2, v0

    const/16 v0, 0x7995

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
