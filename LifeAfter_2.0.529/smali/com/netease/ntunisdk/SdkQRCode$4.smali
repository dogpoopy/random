.class Lcom/netease/ntunisdk/SdkQRCode$4;
.super Ljava/lang/Object;
.source "SdkQRCode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkQRCode;->requestAlbumThenExecute()V
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

    .line 336
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode$4;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 339
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode$4;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkQRCode;->access$1100(Lcom/netease/ntunisdk/SdkQRCode;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x7996

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/zxing/utils/Util;->requestMediaPermission(Landroid/app/Activity;I)V

    return-void
.end method
